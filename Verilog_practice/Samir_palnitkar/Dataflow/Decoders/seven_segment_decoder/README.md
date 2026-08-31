# Seven Segment Decoder


A BCD to 7-segment decoder is a combinational circuit that converts a 4-bit Binary Coded Decimal (BCD) input into the appropriate output signals to drive a 7-segment display device for displaying decimal digits 0 through 9. The decoder takes four input bits (A, B, C, D) representing BCD numbers and generates seven output signals (a, b, c, d, e, f, g) to control the individual segments of a 7-segment display.

Understanding 7-Segment Display Structure
A 7-segment display consists of seven individual LED segments arranged in a figure-8 pattern, labeled as a, b, c, d, e, f, and g in a clockwise sequence starting from the top horizontal segment. Each segment can be individually controlled to display decimal digits 0-9. An optional eighth segment, the decimal point (DP), is used for displaying fractional numbers.

Key Features of 7-Segment Displays:

Seven segments labeled a, b, c, d, e, f, g (lowercase for segment identification)
BCD inputs labeled A, B, C, D (uppercase for binary input signals)
Common-cathode or common-anode configurations available
Individual segment control enables digit formation
Display Configuration Types
Common-Cathode Display: All cathodes of the seven LEDs are connected together and brought out as a single pin. To light a segment, the corresponding anode pin must be driven HIGH (logic 1). This experiment uses common-cathode configuration.

Common-Anode Display: All anodes of the seven LEDs are connected together. To light a segment, the corresponding cathode pin must be driven LOW (logic 0).



<img width="714" height="430" alt="images" src="https://github.com/user-attachments/assets/e6859847-bf34-480d-b9b3-b2010046548a" />



<img width="555" height="553" alt="images" src="https://github.com/user-attachments/assets/24698a99-ba86-4cf1-94bf-d3fb6d062a48" />
