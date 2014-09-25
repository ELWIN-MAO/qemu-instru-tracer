#!/bin/bash

log_path="../log_qie_kuai"
log_done="../log_processed"

./v_clean.sh

while true :
do

#file_array=("ddd" "eee" "fff")
file_array=($(ls -v $log_path))

echo ${#file_array[@]}  # length of file_arry
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

./create_ab.py $log_path/$m_file                      
./stata.py < "a${m_file}" > "a${m_file}.stat"    
./statb.py < "b${m_file}" > "b${m_file}.stat" 
./hash_a.py   < "a${m_file}.stat" 
./hash_b.py   < "b${m_file}.stat"

mv   $log_path/$m_file $log_done/ 
done
else
sleep 3
fi


done



echo "bottom start!"

./v_bottom.sh
