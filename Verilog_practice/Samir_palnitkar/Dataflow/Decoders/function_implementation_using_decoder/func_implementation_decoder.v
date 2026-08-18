

// implement the functions using decoder
// F1 (A,B,C,D) = m(0, 3, 5, 7);  
// F2 (A,B,C,D) = m(2, 4, 8, 9);  
// F3 (A,B,C,D) = m(1, 10, 14, 15);  


module decoder_4_16(A,B,C,D,Y);
input A, B, C, D;
output [15:0]Y;
assign Y[0]  = ~A & ~B & ~C & ~D;
assign Y[1]  = ~A & ~B & ~C & D;
assign Y[2]  = ~A & ~B & C & ~D;
assign Y[3]  = ~A & ~B & C & D;
assign Y[4]  = ~A & B & ~C & ~D;
assign Y[5]  = ~A & B & ~C & D;
assign Y[6]  = ~A & B & C & ~D;
assign Y[7]  = ~A & B & C & D;
assign Y[8]  = A & ~B & ~C & ~D;
assign Y[9]  = A & ~B & ~C & D;
assign Y[10] = A & ~B & C & ~D;
assign Y[11] = A & ~B & C & D;
assign Y[12] = A & B & ~C & ~D;
assign Y[13] = A & B & ~C & D;
assign Y[14] = A & B & C & ~D;
assign Y[15] = A & B & C & D;
endmodule


module decode_func_4_16(a, b, c, d, f1, f2, f3);
input a, b, c, d;
output f1, f2, f3;
wire [15:0] w;
decoder_4_16 dut(.A(a), .B(b), .C(c), .D(d), .Y(w));
assign f1 = w[0] | w[3] | w[5] | w[7];
assign f2 = w[2] | w[4] | w[8] | w[9];
assign f3 = w[1] | w[10] | w[14] | w[15];
endmodule
