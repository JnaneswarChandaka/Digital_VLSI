// BCD_adder testbench

module BCD_adder_tb();
reg [3:0] A, B;
reg cin;
wire [3:0] Sum;
wire cout;

BCD_adder dut(.A(A), .B(B), .cin(cin), .Sum(Sum), .cout(cout));

initial begin
$monitor("A = %b, B = %b, cin = %b, Sum = %b, cout = %b,",A, B, cin, Sum, cout);
A = 4'b0000; B = 4'b0000; cin = 1'b0;
#10 A = 4'b0010; B = 4'b0110; cin = 1'b0;
#10 A = 4'b0110; B = 4'b1110; cin = 1'b0;
#10 A = 4'b1010; B = 4'b0110; cin = 1'b0;
#10 A = 4'b0011; B = 4'b0010; cin = 1'b1;
#10 A = 4'b0110; B = 4'b0110; cin = 1'b1;
#10 A = 4'b1010; B = 4'b0011; cin = 1'b0;
#10 A = 4'b0110; B = 4'b0110; cin = 1'b1;
#10 A = 4'b0010; B = 4'b0110; cin = 1'b0;
#10 A = 4'b0010; B = 4'b1010; cin = 1'b1;
#10 A = 4'b0111; B = 4'b0001; cin = 1'b1;
#10 A = 4'b1010; B = 4'b0110; cin = 1'b0;
#20 $finish;
end
endmodule
