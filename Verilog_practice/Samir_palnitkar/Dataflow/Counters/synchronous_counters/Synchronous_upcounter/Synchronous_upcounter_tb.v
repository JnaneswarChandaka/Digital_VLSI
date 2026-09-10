// Synchronous upcounter testbench


module Synchronous_upcounter_tb();
reg clk, rst;
wire [3:0] cnt;
Synchronous_upcounter dut(.clk(clk), .rst(rst), .cnt(cnt));
always #10 clk = ~clk;
initial begin
$monitor("clk = %0t, rst = %b, cnt = %b", $time, rst, cnt);
clk = 1'b0;
  rst = 1'b0;    // reset is 0 so the device gets resets to 0000
#20 rst = 1'b1;    // reset is 1 so the counter starts counting
#340 rst = 1'b0;    // again the reset gets resets to 0000
#40 rst = 1'b1;    // the reset is turned to 1 before the positive clock edge so the counter changes its value from the next positive clock edge
#500 $finish;
end
endmodule


