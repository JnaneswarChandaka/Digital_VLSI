
module JK_ff_tb();
reg clk,j, k;
wire q, qbar;

JK_flipflop dut (.Clk(clk), .J(j), .K(k), .Q(q), .Qbar(qbar));
always #10 clk = ~clk;

initial begin
$monitor("Time = %d, clk = %b, S = %b, R = %b, Q = %b, Qbar = %b", $time, clk, j, k, q, qbar );
clk = 0;

#20 {j, k} = 2'b00;
#20 {j, k} = 2'b01;
#20 {j, k} = 2'b10;
#20 {j, k} = 2'b11;
#20 {j, k} = 2'b00;
#20 {j, k} = 2'b10;
#20 {j, k} = 2'b01;
#30 $finish;
end
endmodule
