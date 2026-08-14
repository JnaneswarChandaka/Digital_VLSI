//

module bin_to_BCD(b3, b2, b1, b0, E, D, C, B, A);
input b3, b2, b1, b0;
output E, D, C, B, A;
assign E = (b3&b2) | (b3&b1);
assign D = ~b1 & ~b2 & b3;
assign C = (~b3&b2) | (b2&b1);
assign B = (~b1 & b2 & b3) | (~b3 & b1);
assign A = b0;
endmodule
