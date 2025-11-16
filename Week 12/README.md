# Lab 11 - Counters and Dividers
  Cole Nugent, Spencer Clark
In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
### SUMMARY
  We started this lab by creating our vivado project and imported the provided test and constraints file.  
  Next we started by creating the d-flipflop code for our counter. After that we created our adder as well  
  as our comparator. We then created out top.v file and made sure that everything was wired correctly. After  
  passing all tests we loaded our program onto a Basys3 board.
### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
  Because each "Hz" is actually the transition in the clock from low to high  
  or high to low. This means that we actually get 2x the hz.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
  On the first clock cycle the counter is loading the inputs. This causes the output to be all 1's  
  until the nexts clock cycle.
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
  Assuming that the input clock is 100kHz you would an 100 bit counter to achieve an outupt of 1KHz
