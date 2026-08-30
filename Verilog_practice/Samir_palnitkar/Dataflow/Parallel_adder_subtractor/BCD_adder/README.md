BCD adder refers to a 4-bit binary adder that can add two 4-bit words of BCD format. The output of the addition is a BCD-format 4-bit output word, which defines the decimal sum of the addend and augend and a carry that is created in case this sum exceeds a decimal value of 9. Therefore, BCD adders can implement decimal addition.


<img width="498" height="465" alt="Decimal-Adder-BCD-Adder-6" src="https://github.com/user-attachments/assets/93e52eb0-54b7-403b-9462-4bdc7073bee6" />


Initial Addition: A 4-bit binary adder adds two BCD inputs (A and B) using normal binary addition.Validity Check: Valid BCD numbers range from 0000 to 1001 (0 to 9). If the initial binary sum is greater than 9 (1001) or generates a carry-out, the result is an invalid BCD code.Correction: To correct an invalid sum, a value of 6 (0110 in binary) is added to the initial sum using a second 4-bit binary adder.Correction Logic: The condition for adding 6 is expressed by the Boolean function:\(\text{Correction\ Condition\ (}Y\text{)}=K+S_{3}S_{2}+S_{3}S_{1}\)
