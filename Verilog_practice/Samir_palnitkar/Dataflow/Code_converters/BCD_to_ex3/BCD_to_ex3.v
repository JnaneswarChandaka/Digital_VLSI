// Binary converted decimal to excess-3


module BCD_to_ex3(A, B, C, D, W, X, Y, Z);
input A, B, C, D;
output W, X, Y,Z;
assign W = A |(B & D) | (B & C);
assign X = (B & (~C) & (~D)) | (~B & D) | (~B & C);
assign Y = ~(C ^ D);
assign Z = ~D;
endmodule
