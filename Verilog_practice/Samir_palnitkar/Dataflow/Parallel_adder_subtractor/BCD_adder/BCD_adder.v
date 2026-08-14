
// Full adder module

module fa(a, b, cin, sum, car);
input a, b, cin;
output sum, car;
assign sum = a ^ b ^ cin;
assign car = (a & b) | (b & cin)| (a & cin);
endmodule




// 4 bit binary adder module


module bin_adder(p, q, r, s, t);
input [3:0] p, q;
input r;
output [3:0] s;
output t;

wire w1, w2, w3;

fa ad1(p[0], q[0], r, s[0], w1);
fa ad2(p[1], q[1], w1, s[1], w2);
fa ad3(p[2], q[2], w2, s[2], w3);
fa ad4(p[3], q[3], w3, s[3], t);

endmodule



// BCD adder module

module BCD_adder(A, B,cin, Sum, cout);
input [3:0] A, B;   // 4 bit inputs
input cin;          // 1 bit carry input
output [3:0]Sum;    // 4 bit sum as output
output cout;        // Extra carry generated as output
wire [3:0]S;
wire a1, a2, o;
wire ba1C;
wire t2;
assign a1 = S[2] & S[3];
assign a2 = S[1] & S[3];
assign o = a1 | a2 | ba1C;
assign cout = o;
bin_adder ba1(A,B,cin,S,ba1C);
bin_adder ba2(S,(o? 4'b0110:4'b0000),1'b0,Sum, t2);
endmodule
