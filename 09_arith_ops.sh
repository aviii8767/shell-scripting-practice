#!/bin/bash

#Mathematics Calculation
x=10
y=2

mult=$x*$y
add=$x+$y

echo "Addition is $add, Multiplication is $mult"
#O/P: Addition is 10+2, Multiplication is 10*2

#How to use expressions
#(Using let command)
let mul=$x*$y
echo "Multiplication = $mul"

let sum=$x+$y
echo "Sum = $sum"

# (using double brackets(()))

echo Substraction is $(($x-$y))

