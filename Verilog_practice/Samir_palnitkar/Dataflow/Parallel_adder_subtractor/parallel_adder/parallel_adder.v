// 4 bit parallel adder design with 4 full adders

module fa(A, B, cin, sum, cout);
input A, B, cin;
output sum, cout;
assign sum = A ^ B ^ cin;
assign cout = (A & B) | (B & cin) | (A & cin);
endmodule



module multibit_adder(a, b, Cin, Sum, Cout);
input [3:0] a, b;
input Cin;
output [3:0] Sum, Cout;
wire  co1, co2, co3;
assign co1 = Cout[0], co2 = Cout[1], co3 = Cout[2];
fa ad1(a[0], b[0], Cin, Sum[0], Cout[0]);
fa ad2(a[1], b[1], co1, Sum[1], Cout[1]);
fa ad3(a[2], b[2], co2, Sum[2], Cout[2]);
fa ad4(a[3], b[3], co3, Sum[3], Cout[3]);
endmodule
