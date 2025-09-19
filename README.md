# Lab 04 - SOP/POS and KMaps
	Cole Nugent, Spencer Clark

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

During this lab our group was given a truthtable. We then implemented the naive implementation  
of this table with Verilog. We then implemented both the maxterm and minterm of this truthtable  
using Verilog. We then generated the mipmaps of the program and programed the code into the Basys3  
board. The last thing we did was opening the schematic for the circuit. We then observed the truthtable  
for the naive, maxterm, and minterm.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

This is because only one variable is changing eg. A,B,C, or D,  
so when you go from the edge to another edge,  
you would go from 10 to 00. 

### Why are the names Sum of Products and Products of Sums?

This is because for Sum of Products you are summing (OR) groups of products (AND).  
For Products of Sums you are taking the product (AND) of groups of sums (OR).

### Open the test.v file – how are we able to check that the signals match using XOR?

Xor determines whether the outputs are different,  
if the xor operation returns anything other than 0,  
then the outputs are not matching.  