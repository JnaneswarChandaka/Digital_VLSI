

module demux_1_to_4(a,s,y);
input a;
input [1:0]s;
output [3:0]y;
assign y[0] = ~s[1] & ~s[0] & a;
assign y[1] = ~s[1] &  s[0] & a;
assign y[2] =  s[1] & ~s[0] & a;
assign y[3] =  s[1] &  s[0] & a;

endmodule


module demux_16_to_1_using_4_to_1 (A,S,Y);
input A;
input [3:0]S;
output [15:0]Y;
wire [3:0]w;
demux_1_to_4 demux1(A,   S[3:2],w[3:0]);
demux_1_to_4 demux2(w[0],S[1:0],Y[3:0]);
demux_1_to_4 demux3(w[1],S[1:0],Y[7:4]);
demux_1_to_4 demux4(w[2],S[1:0],Y[11:8]);
demux_1_to_4 demux5(w[3],S[1:0],Y[15:12]);


endmodule
