// parallel adder testbench with 4 full adders

module parallel_adder_tb();
reg [3:0] a, b;
reg Cin;
wire [3:0] Sum, Cout;
multibit_adder dut(.a(a), .b(b), .Cin(Cin), .Sum(Sum), .Cout(Cout));

initial begin
$monitor("A = %b, B = %b, Cin = %b, Sum = %b, Cout = %b", a, b, Cin, Sum, Cout);
repeat(5) begin
a = $urandom;
b = $urandom;
Cin = $urandom;
#10;
end
#20 $finish;
end
endmodule
