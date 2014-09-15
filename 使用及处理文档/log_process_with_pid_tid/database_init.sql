create datatbase instrution;
use instruction;

create table thread_block(
pid varchar(30),
tid varchar(30), 
block_id varchar(30), 
count int,
primary key (pid,tid,block_id) 
);



create table block_tb(
block_id varchar(30) primary key not  null,
count int,
adc int,adcl int,`add` int,addb int,addl int,addw int,`and` int,andb int,andl int,andw int,bsf int,bsr int,bswap int,bt int,btc int,btl int,btr int,btrl int,bts int,btsl int,`call` int,calll int,cld int,cli int,cltd int,clts int,cmp int,cmpb int,cmpl int,cmpw int,cmpxchg int,cmpxchg8b int,cpuid int,cwtl int,das int,`dec` int,decb int,decl int,decw int,`div` int,divl int,fdivl int,finit int,fistpl int,fldcw int,fldl int,fmull int,fninit int,fnsetpm int,fnstcw int,fstsw int,fsubp int,fwait int,fxrstor int,fxsave int,hlt int,idiv int,idivl int,imul int,imull int,`in` int,inc int,incb int,incl int,incw int,`int` int,invlpg int,iret int,ja int,jae int,jb int,jbe int,je int,jg int,jge int,jl int,jle int,jmp int,jmpl int,jne int,jns int,js int,lcall int,ldmxcsr int,lea int,`leave` int,lfence int,lgdtl int,lgdtw int,lidtl int,lidtw int,ljmp int,ljmpl int,ljmpw int,lldt int,`lock` int,lods int,`loop` int,lret int,ltr int,mfence int,mov int,movb int,movl int,movsbl int,movswl int,movw int,movzbl int,movzbw int,movzwl int,mul int,mull int,neg int,negl int,nop int,`not` int,`or` int,orb int,orl int,orw int,`out` int,pause int,pop int,popa int,popal int,popcnt int,popf int,popfl int,popw int,prefetchnta int,push int,pusha int,pushal int,pushf int,pushfl int,pushl int,pushw int,rdmsr int,rdtsc int,ret int,retl int,rol int,ror int,rsm int,sar int,sarb int,sarl int,sbb int,sbbl int,sbbw int,scas int,seta int,setae int,setb int,setbe int,sete int,setg int,setge int,setl int,setle int,setne int,sets int,sfence int,shl int,shld int,shll int,shr int,shrd int,shrl int,stc int,std int,sti int,stmxcsr int,stos int,sub int,subb int,subl int,subw int,test int,testb int,testl int,testw int,wbinvd int,wrmsr int,xadd int,xchg int,`xor` int);