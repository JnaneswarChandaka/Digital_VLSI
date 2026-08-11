
// D flipflop testbench

module Dff_tb();
reg clk, D;
wire q, qbar;
D_flipflop dut(.clk(clk), .D(D), .Q(q), .Qbar(qbar));
always #10 clk = ~clk;
initial begin
$monitor("Time = %d, clk = %b, D = %b, q = %b, qbar = %b", $time, clk, D, q, qbar);
clk = 0;
#20 D = 1'b0;
#20 D = 1'b1;
#20 D = 1'b0;
#20 D = 1'b1;
#10 D = 1'b0;   // changing the input data from 1 -> 0 before the posedge clk arrives
#20 D = 1'b1;
#30 D = 1'b0;
#20 $finish;
end
endmodule
