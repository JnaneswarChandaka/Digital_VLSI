`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2026 23:44:25
// Design Name: 
// Module Name: fourbit_mag_comp_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fourbit_mag_comp_tb();

reg [3:0] a, b;
wire a_lt_b, a_eq_b, a_gt_b;
fourbit_mag_comp dut (a, b, a_gt_b, a_eq_b, a_lt_b);

initial begin
$monitor("Time = %d, a = %b, b = %b, a_gt_b = %b, a_eq_b = %b, a_lt_b = %b", $time, a, b, a_gt_b, a_eq_b, a_lt_b);
repeat(10) begin
a = $random & 4'hF;
b = $random & 4'hF;
#10;
end
#50 $finish;
end

endmodule




// Simulated Output

//Time resolution is 1 ps
//Time =                    0, a = 0100, b = 0001, a_gt_b = 1, a_eq_b = 0, a_lt_b = 0
//Time =                   10, a = 1001, b = 0011, a_gt_b = 1, a_eq_b = 0, a_lt_b = 0
//Time =                   20, a = 1101, b = 1101, a_gt_b = 0, a_eq_b = 1, a_lt_b = 0
//Time =                   30, a = 0101, b = 0010, a_gt_b = 1, a_eq_b = 0, a_lt_b = 0
//Time =                   40, a = 0001, b = 1101, a_gt_b = 0, a_eq_b = 0, a_lt_b = 1
//Time =                   50, a = 0110, b = 1101, a_gt_b = 0, a_eq_b = 0, a_lt_b = 1
//Time =                   60, a = 1101, b = 1100, a_gt_b = 1, a_eq_b = 0, a_lt_b = 0
//Time =                   70, a = 1001, b = 0110, a_gt_b = 1, a_eq_b = 0, a_lt_b = 0
//Time =                   80, a = 0101, b = 1010, a_gt_b = 0, a_eq_b = 0, a_lt_b = 1
//Time =                   90, a = 0101, b = 0111, a_gt_b = 0, a_eq_b = 0, a_lt_b = 1
//$finish called at time : 150 ns
