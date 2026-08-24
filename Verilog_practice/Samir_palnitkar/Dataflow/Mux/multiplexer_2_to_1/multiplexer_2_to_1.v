module mux_2_to_1(s, a, b, y);
input  s, a,b;
output  y;
 assign y = (~s & a) | (s & b);
endmodule
