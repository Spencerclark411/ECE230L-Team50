# Number Theory: Subtraction
	Cole Nugent, Spencer Clark
In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary
	In summary we started with creating our Vivado project and importing the required files.  
	We then started by writing the half_sub code. After writing the half_sub code we started our top file.  
	After this we then started on implementing the ones_compliment and the twos_compliment. After implementing  
	these we then finilized the top file. After this we generated the bitstream and ran it on a Basys3 board.

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
	The difference between our half adder and the half subtractor is that we use a borrow  
	for the subtractor.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
	The ones complement last carry determines whether the number is negative or not.  
	This would cause you to have to add an extra led to account for this carry, or even  
	possible compliment the final product.

### 3 - What is the edge case and problem with Two’s Complement number representation?
	The problem is that when you add one to the already greatest possible represented number,  
	you get overflow. Which if not accounted for can mess things up.
