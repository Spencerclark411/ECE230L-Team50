# Number Theory: Addition
    Cole Nugent, Spencer Clark
In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### SUMMARY
    During this lab we started by creating our vivado project. We then imported the provided files and read over the lab instructions.  
    Next we wrote the code for the onehot.v file, followed by the binary.v file. After completing these files we went on to finish the top.v  
    file. After that we ran the simulation and debugged until our tests passed. After that we programmed the code onto a Basys3 board.

### Compare and contrast One Hot and Binary encodings
    Binary encodings use less flipflops, but also has more complex combinatorial logic.  
    One hot uses one flipflop per state but has simpler combinatorial logic.

### Which method did your team find easier, and why?
    Our team found onehot easier to implement. This was simply because we understood the logic a bit better  
    than the logic for binary encodings.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
    You would use binary encoding on FPGA's with less resource availablity, while using one hot would be better  
    on FPGA's that have a greater resource availability.
