module mux_4_to_1(s, I, Y);
input [1:0]s;
input [3:0]I;
output Y;
assign Y = (~s[0] & ~s[1] & I[0]) |(~s[1] & s[0] & I[1])|(s[1] & ~s[0] & I[2])|(s[1] & s[0] & I[3]);
endmodule
