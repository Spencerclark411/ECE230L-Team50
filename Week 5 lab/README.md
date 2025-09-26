# Lab 05 - Combinatorial Logic
	Cole Nugent, Spencer Clark

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
	During this lab we started by finding the maxterm for circuit A, and the  
	minterm for circuit B. We then implemented the terms in Verilog for both
	circuits. Then we implemented the top.v file which was what allowed us to  
	use the output of circuit A as the input A of circuit B. We then programmed  
	to the board.

## Lab Questions

### 1 - Explain the role of the Top Level file.
	The role of the top level file is to act as the main module of our design.  
	For us that was defining the inputs and outputs of our circuit boards.

### 2 - Explain the function of the Constraints file.
	Our constraints file allows us to tell Vivado what we mean  
	when defining certain inputs and outputs. For example what we mean  
	by sw[0] or led[0].

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
	Yes because it allowed use to select the largest groups, in other words  
	it allowed us to minimize the most.
