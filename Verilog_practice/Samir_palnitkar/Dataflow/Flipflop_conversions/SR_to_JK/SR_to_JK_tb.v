// SR flipflop to JK flipflop conversion testbench

module SR_to_JK_tb();
reg clk, j, k;
wire q, qbar;

always #10 clk = ~clk;
SR_to_JK dut(.clk(clk), .J(j), .K(k), .Q(q), .Qbar(qbar));

initial begin
$monitor("Time = %d, clk = %b, J = %b, K = %b, Q = %b, Qbar = %b", $time, clk, j, k, q, qbar);
clk = 0;

#20 {j,k} = 2'b00;
#20 {j,k} = 2'b01;
#20 {j,k} = 2'b10;
#20 {j,k} = 2'b11;
#20 {j,k} = 2'b00;
#20 {j,k} = 2'b01;
#20 {j,k} = 2'b11;
#20 {j,k} = 2'b10;

#20 $finish;
end
endmodule
