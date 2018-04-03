#!/bin/bash

#String manipulation using sed command

echo "This is a test of the test script" > test.txt
cat test.txt
sed -i 's/test/trial/' test.txt
cat test.txt
rm test.txt


echo "The quick brown fox jumps over the lazy dog" > demo2.txt
sed -e 's/fox/elephant/g' -e  's/dog/cat/g' demo2.txt
cat  demo2.txt
rm demo2.txt
