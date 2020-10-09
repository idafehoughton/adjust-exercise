#!/bin/bash 

source ./exercise-shuffle-numbers.sh > /dev/null

echo -e "\nTest 1: 1st paramenter negative number"
main -3 1; 
echo -e "\nTest 2: 2nd parameter negative number"
main 1 -3;
echo -e "\nTest 3: 1st and 2nd parameter non natural integer value"
main 0 0;
echo -e "\nTest 4: 1st and 2nd paramenter equal natural integer values"
main 1 1;
echo -e "\nTest 5: 1st parameter greater than 2nd value" 
main 10 1;
echo -e "\nTest 6: Correct behaviour of program\n------------------------\nRange: From 1 until 10\n------------------------";
main 1 10;
echo -e "\nTest 7: Correct behaviour of program\n------------------------\nRange: From 1 until 100\n------------------------";
main 1 100;
