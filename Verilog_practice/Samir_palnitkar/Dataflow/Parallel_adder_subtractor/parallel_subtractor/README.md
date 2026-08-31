# PARALLEL SUBTRACTOR

A digital arithmetic circuit which is used to find the arithmetic difference of two binary numbers in parallel form is called a parallel subtractor.

We can implement a parallel subtractor in several ways such as combining half subtractors and full subtractors, all full subtractors, all full adders, etc. 

Here, we have realized a 4-bit parallel subtractor using all full adders with subtrahend bit complemented

<img width="700" height="280" alt="parallel-subtractor" src="https://github.com/user-attachments/assets/9ae565e4-de31-4388-a750-b26f5bebfed8" />

The binary subtraction of two binary numbers can be conveniently accomplished by means of 1's or 2's complement. Where, the complement method converts the subtraction operation in simple addition operation.

The 2's complement of binary numbers is obtained by taking the 1's complement and adding 1 to the least significant pair of bits. The 1's complement can be implemented with the help of a NOT gate (inverter).



Working of Parallel Subtractor:

The parallel subtractor shown in above figure-2 carries out the subtraction of two binary numbers as per the following steps −

Step 1 − Firstly, the 1's complement of bit B1 obtained using an inverter and a 1 (Cin) are added to obtain the 2's complement of the bit B1. Then, this 2's complemented B1 is further added to A1. This will produce first bit of the output difference designated by S1, and a carry bit C1 which is connected to the input carry of the FA2.

Step 2 − The full adder FA2 uses the input carry bit C1 to add with its input bit A2 and the 2's complement of the input bit B2 to produce the second difference bit (S2) and the carry bit C2.

Step 3 − The full adder FA3 uses the input carry bit C2 to add with its input bit A3 and the 2's complement of the input bit B3 to produce the third difference bit (S3) and the carry bit C3.

Step 4 − Finally, the full adder FA4 uses the carry bit C3 to add with its input bit A4 and the 2's complement of the input bit B4 to produce the last difference bit (S4) and last carry bit C4.

Once all the result bits are produced, they are expressed to give the difference of the two binary numbers as S4S3S2S1 and borrow bit C4.


