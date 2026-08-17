
module decode_2_4(A,B,Y);
input A, B;
output [3:0]Y; 
assign Y[0] = ~A & ~B; 
assign Y[1] = ~A & B;
assign Y[2] = A & ~B;
assign Y[3] = A & B;
endmodule




module ha(a, b, sum, cout);
input a, b;
output sum, cout;
wire [3:0] w;
decode_2_4 dut(.A(a), .B(b), .Y(w));
assign sum = w[1] | w[2];
assign cout = w[3];
endmodule
