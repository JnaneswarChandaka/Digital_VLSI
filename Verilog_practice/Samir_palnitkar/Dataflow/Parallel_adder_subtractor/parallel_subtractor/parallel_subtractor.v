
module Fa(a, b, cin, sum, carr);
input a, b, cin;
output sum, carr;
assign sum = a ^ b ^ cin;
assign carr = (a & b) | (b & cin) | (a & cin);
endmodule

module multibit_subtractor(A, B,bin, diff, bout);
input [3:0] A, B;
input bin;
output [3:0] diff;
output [3:0]bout;
wire d1, d2, d3;
assign d1 = bout[0];
assign d2 = bout[1];
assign d3 = bout[2];

Fa fs1(.a(A[0]), .b(~B[0]), .cin(bin), .sum(diff[0]), .carr(bout[0]));
Fa fs2(.a(A[1]), .b(~B[1]), .cin(d1), .sum(diff[1]), .carr(bout[1]));
Fa fs3(.a(A[2]), .b(~B[2]), .cin(d2), .sum(diff[2]), .carr(bout[2]));
Fa fs4(.a(A[3]), .b(~B[3]), .cin(d3), .sum(diff[3]), .carr(bout[3]));

endmodule
