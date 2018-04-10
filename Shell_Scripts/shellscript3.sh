#!/bin/bash

#Basic Text Processing Using Awk

echo "Hello World!
Welcome to Linux
End of file." > f1.txt
 
cat f1.txt

#Printing words starting with H
echo  "Line starting with H"
awk ' /H/' f1.txt > temp.txt
cat temp.txt
rm temp.txt


#Printing first field of the file
echo "First field of the txt file"
awk '{print $1}' f1.txt

