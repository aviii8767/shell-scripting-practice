#!/bin/bash

echo "Choices Available"
echo "a for Addition"
echo "s for Substraction"
echo "m for Multiplication"
echo "d for Division"

read -p "enter your choice: " choice
read -p "Enter first number: " x
read -p "Enter second number: " y


addition() {
	local num1=$1
	local num2=$2
	let sum=$num1+$num2
	echo "Sum of $num1 and $num2 is $sum"

}

subtraction() {
	local num1=$1
	local num2=$2
	let sub=$num1-$num2
	echo "Subtraction of $num1 and $num2 is $sub"
}


multiplication() {
	local num1=$1
	local num2=$2
	let mul=$num1*$num2
	echo "Multiplication of $num1 and $num2 is $mul"
}

division() {
	local num1=$1
	local num2=$2
	let div=$num1/$num2
	echo "Division of $num1 and $num2 is $div"

}


case $choice in 
	a) addition $x $y;;
	s) subtraction $x $y;;
	m) multiplication $x $y;;
	d) division $x $y;;
	*) echo "Please provide a valid choice"
esac
