# Sequential Circuits: Latches
	Cole Nugent, Spencer Clark
In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary
	During this lab we started by creating the Vivado project. We then imported and created the required  
	files. We then first wrote the logic for the d flipflop. Then we used the d flipflop logic to create  
	the jk flipflop. We then used the jk flipflop to create the t flipflop. After writing the top file  
	we ran the simulation to check that all tests had past. We then generated the bitstream and programmed  
	the code to the Basys3 board.
	
### What is different between edge and level sensitive circuits?
	level sensitive circuits take input the entire time the clock is set to 1. With an edge sensitive  
	circuit, the stored bit only updates on each clock cycle and wont change between cycles.

### Why is it important to declare initial state?
	When an FPGA is programmed, there is no way of knowing the state of the memory held within. The fix  
	for this issue is to use a initial begin block to help set a "default" value to the output Q.

### What do edge sensitive circuits let us build?
	They allow to build circuits such as edge sensitive counters.

