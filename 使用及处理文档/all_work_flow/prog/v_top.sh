#!/bin/bash

echo "$(date "+%Y.%m.%d.%H.%M") top start"

log_path="../log_qie_kuai"
log_done="../log_processed"
#log_done="/mnt/freenas/log_processed"


while true :
do

#file_array=("ddd" "eee" "fff")
file_array=($(ls -v $log_path))

##echo ${#file_array[@]}  # length of file_arry
#echo ${file_array[0]}  # first element

#echo ${file_array[${#file_array[@]}-1]} #last element

if [ ${#file_array[@]} -eq 1 ]
then 
if [ ${file_array[${#file_array[@]}-1]} = "end" ]
then 
break 
fi
fi

if [ ${#file_array[@]} -ge 2 ]

then

unset file_array[${#file_array[@]}-1]

for m_file in  ${file_array[@]}
do
echo $m_file

echo "$(date "+%Y.%m.%d.%H.%M") create_ab $m_file"                     
./create_ab.py $log_path/$m_file                      

echo "$(date "+%Y.%m.%d.%H.%M") stata  ${m_file}.a  ${m_file}.a.stat"    
./stata.py < "${m_file}.a" > "${m_file}.a.stat"    

echo "$(date "+%Y.%m.%d.%H.%M") statb  ${m_file}.b  ${m_file}.b.stat" 
./statb.py < "${m_file}.b" > "${m_file}.b.stat" 


echo "$(date "+%Y.%m.%d.%H.%M") hash_a  ${m_file}.a.stat" 
./hash_a.py   < "${m_file}.a.stat" 


echo "$(date "+%Y.%m.%d.%H.%M") hash_b  ${m_file}.b.stat"
./hash_b.py   < "${m_file}.b.stat"

mv   $log_path/$m_file $log_done/ 
done
else
sleep 3
fi


done

#sort ./error_opcode.txt  | uniq > error_opcode_uniq.txt

echo "$(date "+%Y.%m.%d.%H.%M") top finish"

./v_bottom.sh
