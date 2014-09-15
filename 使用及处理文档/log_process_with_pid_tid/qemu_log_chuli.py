#!/usr/bin/python

import sys
import MySQLdb

log=sys.stdin
#log=open("qemu_log3.txt")
m_queue=[]



all_inst=["adc","adcl","add","addb","addl","addw","and","andb","andl","andw","bsf","bsr","bswap","bt","btc","btl","btr","btrl","bts","btsl","call","calll","cld","cli","cltd","clts","cmp","cmpb","cmpl","cmpw","cmpxchg","cmpxchg8b","cpuid","cwtl","das","dec","decb","decl","decw","div","divl","fdivl","finit","fistpl","fldcw","fldl","fmull","fninit","fnsetpm","fnstcw","fstsw","fsubp","fwait","fxrstor","fxsave","hlt","idiv","idivl","imul","imull","in","inc","incb","incl","incw","int","invlpg","iret","ja","jae","jb","jbe","je","jg","jge","jl","jle","jmp","jmpl","jne","jns","js","lcall","ldmxcsr","lea","leave","lfence","lgdtl","lgdtw","lidtl","lidtw","ljmp","ljmpl","ljmpw","lldt","lock","lods","loop","lret","ltr","mfence","mov","movb","movl","movsbl","movswl","movw","movzbl","movzbw","movzwl","mul","mull","neg","negl","nop","not","or","orb","orl","orw","out","pause","pop","popa","popal","popcnt","popf","popfl","popw","prefetchnta","push","pusha","pushal","pushf","pushfl","pushl","pushw","rdmsr","rdtsc","ret","retl","rol","ror","rsm","sar","sarb","sarl","sbb","sbbl","sbbw","scas","seta","setae","setb","setbe","sete","setg","setge","setl","setle","setne","sets","sfence","shl","shld","shll","shr","shrd","shrl","stc","std","sti","stmxcsr","stos","sub","subb","subl","subw","test","testb","testl","testw","wbinvd","wrmsr","xadd","xchg","xor"]

def tongji(m_queue2) :
    dict={}
    m_sql="insert into block_tb values("
    m_sql=m_sql+'"'+serial+'",1'
    for opcode in all_inst :
	dict[opcode]=0   
    for line2 in m_queue2 :
        words2=line2.split()
        opcode=words2[1].strip()
        if (opcode=="rep" or opcode=="repnz" or opcode=="repz" or opcode=="addr32" or opcode=="fnsetpm(287" ):
            opcode=words2[2].strip()
        if dict.has_key(opcode):
            dict[opcode]+=1
        else: 
            print "error_opcode",opcode
    for opcode in all_inst :
        m_sql=m_sql+","+str(dict[opcode])      
    m_sql=m_sql+")"
    #print m_sql
#       for key in dict.keys():
#           print "%s = %d" %(key,dict[key])
    return m_sql



conn=MySQLdb.connect(host='localhost',user='root',passwd='',port=3306)
cur=conn.cursor()

conn.select_db('instruction')

cur.execute('delete from block_tb')

while True:
    line=log.readline()
    if not line : break
    if line.startswith("0x"):
        m_queue.append(line)   #add line to queue
    if line.startswith("T"):  #start with Trace
        words=line.split()
        serial=words[1].strip() #get block serial  number
        pid   =words[2].strip() #get block pid     number
        tid   =words[3].strip() #get block tid     number
        cur.execute('select block_id from thread_block where pid = %s and tid= %s and block_id = %s',(pid,tid,serial))
        results=cur.fetchall()
       	if len(results)==0 :
       	    #print "bu_cun_zai_need_insert"
            cur.execute('insert into thread_block values(%s,%s,%s,%s)',(pid,tid,serial,str(1)))
	    conn.commit()
        else :
            cur.execute('update thread_block set count=count+1 where  pid = %s and tid= %s and block_id = %s',(pid,tid,serial))
	    conn.commit()
#       	for row in results:
#            aa=row[0]
#            print aa,         #print the old block from dictionary 
        if len(m_queue)>0 :      #is a new block
	    #print m_queue
            p_sql= tongji(m_queue)
	    cur.execute(p_sql)
	    conn.commit()
            m_queue=[]              #clear queue
        else:                       #is a old block 
            cur.execute('update block_tb set count =count+1 where block_id = %s',serial) #count++  
	    conn.commit()
            m_queue=[]

cur.close()
conn.close()
