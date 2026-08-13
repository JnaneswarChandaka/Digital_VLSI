// parallel 4 bit adder/ subtractor using 4 full adders

module parallel_add_subtract(a, b, mode,cin, sum, cout);
input [3:0]a, b;
input cin, mode;
output [3:0]sum;
output [3:0] cout;

wire co1, co2, co3;
wire e1, e2, e3, e4;

assign mode = cin;
xor g1(e1,mode, b[0]);
xor g2(e2,mode, b[1]);
xor g3(e3,mode, b[2]);
xor g4(e4,mode, b[3]);

assign co1 = cout[0]; 
assign co2 = cout[1]; 
assign co3 = cout[2]; 

FA b1(a[0],e1,cin, sum[0], cout[0]);
FA b2(a[1],e2,co1, sum[1], cout[1]);
FA b3(a[2],e3,co2, sum[2], cout[2]);
FA b4(a[3],e4,co3, sum[3], cout[3]);
endmodule
