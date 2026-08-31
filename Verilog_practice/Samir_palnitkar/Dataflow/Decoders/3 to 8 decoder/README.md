# 3 to 8 Decoder

-> A 3 to 8 decoder has three inputs (A, B, C) and eight outputs (D0 to D7).

-> Based on the 3 inputs one of the eight outputs is selected.

-> From the truth table, it is seen that only one of eight outputs (D0 to D7) is selected based on three select inputs.

-> From the truth table, the logic expressions for outputs can be written as follows:


<img width="484" height="621" alt="xSDWQHi" src="https://github.com/user-attachments/assets/014d4e85-7058-45ea-9dee-7c0b3266de8a" />

-> Using the above expressions, the circuit of a 3 to 8 decoder can be implemented using three NOT gates and eight 3-input AND gates as shown in figure (1).

-> The three inputs A, B, and C are decoded into eight outputs, each output representing one of the midterms of the 3-input variables.

-> The three inverters provide the complement of the inputs and each one of the wight AND gates generates one of the midterms.

-> This decoder can be used for decoding any 3-bit code to provide eight outputs, corresponding to eight different combinations of the input code.

-> This is also called a 1 of 8 decoder since only one of eight output lines is HIGH for a particular input combination.

<img width="420" height="130" alt="yVeSIMV" src="https://github.com/user-attachments/assets/1bad97a8-eca1-47a6-bd53-f90f36bf4aa1" />
