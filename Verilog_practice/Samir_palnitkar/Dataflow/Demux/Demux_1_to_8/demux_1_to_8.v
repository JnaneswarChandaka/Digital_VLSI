
module demux_1_to_8(A,S,Y);
input A;
input [2:0]S;
output [7:0]Y;
assign Y[0] = ~S[2] & ~S[1] & ~S[0] & A;
assign Y[1] = ~S[2] & ~S[1] &  S[0] & A;
assign Y[2] = ~S[2] &  S[1] & ~S[0] & A;
assign Y[3] = ~S[2] &  S[1] &  S[0] & A;
assign Y[4] =  S[2] & ~S[1] & ~S[0] & A;
assign Y[5] =  S[2] & ~S[1] &  S[0] & A;
assign Y[6] =  S[2] &  S[1] & ~S[0] & A;
assign Y[7] =  S[2] &  S[1] &  S[0] & A;
endmodule
