
module demux_1_to_2(A,s,y0,y1);
input s,A;
output y0,y1;
assign y0 = ~s & A;
assign y1 = s & A;
endmodule
