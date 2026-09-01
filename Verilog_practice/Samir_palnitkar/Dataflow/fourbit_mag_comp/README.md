A 4-bit magnitude comparator is a digital logic circuit that compares two 4-bit binary numbers to determine which one is larger, smaller, or if they are equal


It defines a magnitude comparator as a circuit that compares two n-bit numbers A and B to determine if A is greater than, equal to, or less than B. 

It has three outputs: GT, EQ, and LT.

The design approach is to first design a 1-bit comparator, then extend it to design equality and magnitude comparators for multiple bits. 

Logic equations are derived for the 4-bit comparator outputs GT, EQ and LT based on the results of 1-bit comparisons.

The design can be extended to an 8-bit comparator by using multiple 4-bit comparator blocks.

# Inputs and OutputsInputs (8 total): 
Two 4-bit binary numbers, A = A₃ A₂ A₁ A₀ and B = B₃ B₂ B₁ B₀, where A₃ and B₃ are the most significant bits.

# Outputs (3 total):
-> A > B (High if number A is greater than B)

-> A = B (High if both numbers are identical)

-> A < B (High if number A is less than B)

Note: At any given time, exactly one of these three outputs will be high.


<img width="504" height="520" alt="4-bit-magnitude-comparator-2" src="https://github.com/user-attachments/assets/1eab3b6d-a6ef-492a-ae8a-ea47fe169518" />
