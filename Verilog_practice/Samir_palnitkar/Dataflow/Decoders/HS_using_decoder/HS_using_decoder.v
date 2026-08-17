
module decoder_2_4(A,B,Y);
input A, B;
output [3:0]Y; 
assign Y[0] = ~A & ~B; 
assign Y[1] = ~A & B;
assign Y[2] = A & ~B;
assign Y[3] = A & B;
endmodule




module hs(a, b, dif, bout);
input a, b;
output dif, bout;
wire [3:0] x;
decoder_2_4 dut(.A(a), .B(b), .Y(x));
assign dif = x[1] | x[2];
assign bout = x[1];
endmodule
