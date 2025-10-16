#!/bin/bash
#eze - @eze.swb
#Funciones

#funcion suma
suma(){
	local suma=$(( $1+$2 ))
	echo "Resulta suma es: $suma"
}
echo "Suma 1"
	read -p "Numero 1: " num1
	read -p "Numero 2: " num2
	suma $num1 $num2
