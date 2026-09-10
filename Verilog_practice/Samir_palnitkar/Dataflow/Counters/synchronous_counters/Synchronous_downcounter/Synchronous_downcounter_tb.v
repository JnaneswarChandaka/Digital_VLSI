// Synchronous downcounter testbench


module Synchronous_upcounter_tb();
reg clk, rst;
wire [3:0] cnt;
Synchronous_upcounter dut(.clk(clk), .rst(rst), .cnt(cnt));
always #10 clk = ~clk;
initial begin

$monitor("clk = %0t, rst = %b, cnt = %b", $time, rst, cnt);
clk = 1'b0;
rst = 1'b0;

#20 rst = 1'b1;

#340 rst = 1'b0;

#40 rst = 1'b1;

#500 $finish;
end
endmodule
