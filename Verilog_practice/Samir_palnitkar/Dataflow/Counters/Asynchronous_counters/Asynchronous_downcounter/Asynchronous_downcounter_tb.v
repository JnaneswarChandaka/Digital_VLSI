// Asynchronous downcounter testbench



module downcounter_4_bit_tb();
reg clk, rst;
wire [3:0] cnt;

downcounter_4_bit dut(.clk(clk), .rst(rst), .cnt(cnt));

always #10 clk = ~clk;
initial begin
$monitor("clk = %0t, rst = %b, cnt = %b", $time, rst, cnt);
clk = 0;
rst = 1;
#20 rst = 0;

#250 rst = 1;

#20 rst = 0;

#600 $finish;
end

endmodule
