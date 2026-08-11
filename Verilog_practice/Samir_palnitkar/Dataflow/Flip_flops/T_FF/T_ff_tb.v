//T Flipflop tetbench


module Tff_tb();
reg clk, T; 
wire q, qbar;
T_flipflop dut(.clk(clk), .T(T), .Q(q), .Qbar(qbar));
always #10 clk = ~clk;
initial begin
$monitor("Time = %d, clk = %b, T = %b, Q = %b, Qbar = %b", $time, clk, T, q, qbar);
clk = 0;
T = 0;
#20 T = 1'b0;
#20 T = 1'b1;
#20 T = 1'b0;
#20 T = 1'b1;
#20 T = 1'b0;
#20 T = 1'b1;
#20 T = 1'b1;
#20 T = 1'b0;
#20 T = 1'b0;
#20 T = 1'b1;
#20 T = 1'b1;
#40 $finish;
end
endmodule
