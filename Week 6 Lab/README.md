# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |
'

## Summary
	We started this lab by creating a Vivado project and imported the project files. The first  
	thing we did in the project was simulate an upstairs and downstairs light switch, this essentially  
	was a way of implenting an XOR gate in Verilog. Next we made a 1-bit adder. After finishing the 1-bit  
	adder we created a 2-bit adder. We did this by creating two isntances of our full_adder file and  
	using the carry out of the first instance as the carry in of the second. After this we generated the  
	bitstream and programmed it to a Basys3 board.

## Lab Questions

### 1 - How might you add more than two bits together?
	Create another instance of a full_adder within your top.v file. Then create a new wire (c2)  
	and map the Cin of the new isntance to that wire. Make sure to also set the Cout of the previous  
	instance to c2

### 2 - What is the importance of the XOR gate in an adder?
	The XOR gives you the sum of the added bits. This does not include the carry of the addition.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
	7, the two adders can only add up to 6 with an additional carry out. It cannot go higher because  
	it is limited to only two bits.

