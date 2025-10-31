# Sequential Circuits: Latches
	Cole Nugent
In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary
	We started this lab by creating our Vivado project and creating the necessary files. We first implemented  
	the code for our d-latch. We then converted our previous mux and provided demux to work with an 8 byte  
	memory system. We then implemented the memory system using a byte_memory.v file. Then a memory_system.v  
	file uses the byte memory file to perform the demux and mux logig onto the d-latch memory. We then finished the  
	top.v file and simulated the design. Finally we programmed a Basys3 board with the code.
	
###  Why can we not just use structural Verilog to implement latches?
	Because structural Verilog does not allow us to specify what signals our memory is sequential to.
### What is the meaning of always @(*) in a sensitivity block?
	The always block will automatically re-evaluate whenever any signal used within the block changes.
### What importance is memory to digital circuits?
	memory allows the output to depend on both the current input and the past state. Unlike combinational  
	logic which only depends on current input.
