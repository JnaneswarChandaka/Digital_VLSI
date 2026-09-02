# BCD  to Excess-3 converter

A BCD to Excess-3 code converter is a digital logic circuit that transforms a 4-bit Binary Coded Decimal (8421 code) into its corresponding Excess-3 code by adding binary 0011 (3 in decimal) to each input value.

**How It WorksInput:** 4-bit BCD variables designated as A, B, C, D (where A is the Most Significant Bit or MSB) representing decimal digits 0 through 9.Output: 4-bit Excess-3 variables designated as W, X, Y, Z (where W is the MSB).Rule: Add 0011 to the BCD input.

For invalid BCD inputs (1010 through 1111), the output is treated as a don't-care condition (X).
