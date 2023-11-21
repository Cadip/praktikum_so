#!/bin/bash

#function
hello(){
	echo "hello cj"
}

#function with parameter
hello2(){
	echo $1
	echo $2
}

hello

hello2 "jovan koor it" ivan

#function with parameter from exe
hello2(){
	echo $1
	echo $2
}

hello2 $2 $1

#function with return
add(){
	echo $(($1 + $2))
}

hasil=$(add 1 2)

echo $hasil

#function recursive
recursive(){
	echo $1
	if [[ $1 -gt 1 ]]
	then
		recursive $(($1 - 1))
	fi
}

recursive 10

echo ""
echo "===== STRING ====="
echo ""

kalimat="charless bucin"

#length
echo `expr length "$kalimat"`

echo ${#kalimat}

#slicing substring
echo ${kalimat:9} #ambil substring dari index 9

echo ${kalimat:(-9)} #ambil substring 9 char dari belakang sampai selesai

echo ${kalimat:4:4} #ambil substring dari index 4 dengan panjang 4

echo ${kalimat:(-5):3} #ambil substring 5 char dari belakang dengan panjang 3


echo ""
echo "===== ARRAY ====="
echo ""

#declare 1
array=("aku" "suka" "kamu" "dia" "sukanya" "lainnya" 3 5)

#declare 2
declare -a array2

#assignment element pada index
array2[0]="test"
array2[3]="index3"

#print array
echo ${array[@]} #print per single element
echo ${array2[*]} #return the whole array 

#print index array
echo ${!array[@]}
echo ${!array2[*]}

#access spesific index
echo ${array[2]}

#delete element
unset array[2]

echo ${array[@]}
echo ${!array[@]}

echo ${array[2]}

#length array
echo ${#array[@]}
echo ${#array2[*]}

echo ""
echo "== SLICING ARRAY =="
echo ""

#slicing array
echo ${array[@]:1} ambil isi array dari index 1 sampai selesai

echo ${array[@]:(-4)} ambil isi array 4 index dari belakang sampai selesai

echo ${array[@]:2:2} ambil isi array dari index 2 sebanyak 2

echo ${array[@]:(-3):2} ambil isi array 3 index dari belakang sebanyak 2 ```````````````````````

echo ""
echo "== LOOP ARRAY =="
echo ""

#loop array
for i in ${array[@]}
do
	echo $i
done

echo "== reset index array =="
echo ${!array[@]}

array=(${array[@]})

echo ${!array[@]}