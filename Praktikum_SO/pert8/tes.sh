#!/bin/bash

#simple linux command
#ls -laR

#variable
#tidak boleh ada spasi sama sekali
a=50
b=30
str="aku makan nasi"
helo="$str $a"

#input
read -p "Insert nama : " nama
echo $nama

#operation
let c=a+$b #cara ke 1
d=`expr $a - $b` #cara ke 2
e=$(( a * b )) #cara ke 3
(( e-=5 )) #decrement

#print
#echo "hahahaha"
#echo $a $str $b
#echo "a adalah $a"
#echo $helo
#echo "d = $d, c = $c, e = $e"

#condition
#cara ke 1
if(( $a > $b ))
then
	echo "$a lebih besar dari $b"
elif(( $a == $b ))
then
	echo "$a sama dengan $b"
else
	echo "$a lebih kecil dari $b"
fi

a=10

#cara ke 2
# > -gt
# < -lt
# == -eq
# != -ne
# >= -ge
# <= -le

if [ $a -gt $b ]
then
	echo "$a lebih besar dari $b"
elif [ $a -eq $b ]
then
	echo "$a sama dengan $b"
else
	echo "$a lebih kecil dari $b"
fi

#for string
if [[ $str > $helo ]]
then
	echo "$str lebih besar dari $helo"
elif [[ $str = $helo ]]
then
	echo "$str sama dengan $helo"
else
	echo "$str lebih kecil dari $helo"
fi

#looping
echo "Looping"
#cara ke 1
echo "cara ke 1"
for(( i=0;i<5;i++ ))
do
	echo $i
done
	
#cara ke 2
echo "cara ke 2"
for i in {1..13..3}
do
	if (($i == 4))
	then
		continue
	elif (( $i > 7 ))
	then
		break
	fi
	echo $i
done

#cara ke 3
echo "cara ke 3"
x=$1 #$3 artinya input ke 3
while [ $x -ge 0 ] #greater than or equal
do
	echo $x
	(( x -= 1 ))
done


