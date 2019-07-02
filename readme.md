# Challenge Description

tl;dr make a collatz function and then query something from the data generated.

Background information:
You can choose the programming language you feel the most comfortable with.
We expect that you can solve this within 1 hour.

Task:
For any positive integer n we define two rules:
if even: divide by two
if odd: multiply by three, then add one, and repeat until the result is the number 1

This will generate sequences of numbers like below, converging to 1:

3, 10, 5, 16, 8, 4, 2, 1

7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1

For each number n we can now count the number of steps in this sequence until we reach 1.

So the sequence above, starting with 3, has a length of 8 (including the starting point and the final one).
The second sequence has a length of 17.

Challenge:
Find the second-longest sequence of all the integers smaller or equal than 10 Million.

Some calibration help:
The longest sequence for input <= 1000 has a length of 179
The longest sequence for input <= 10000 has a length of 262
 
Calculate the sum of all the elements of the above mentioned second-longest sequence and share your result. Also, please include your source code.

 

# Solution

It's too hard to optimize haskell so I grabbed rust.

 
