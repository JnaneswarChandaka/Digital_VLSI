
module demux_1_to_4(A, S, y0, y1, y2, y3);
input A;
input [1:0]S;
output y0, y1, y2, y3;
assign y0 = ~S[1] & ~S[0] & A;
assign y1 = ~S[1] &  S[0] & A;
assign y2 =  S[1] & ~S[0] & A;
assign y3 =  S[1] &  S[0] & A;
endmodule
