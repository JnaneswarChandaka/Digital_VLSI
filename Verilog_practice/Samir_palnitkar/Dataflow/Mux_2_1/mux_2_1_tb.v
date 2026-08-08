`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2026 21:52:32
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb();
reg in0, in1, s;
wire out;

mux_2_1 dut(in0, in1, s, out);
initial begin
$monitor("Time = %d ns, s = %b, in0 = %b, in1 = %b, out = %b", $time, s, in0, in1, out);
s = 0; in0 = 0; in1 = 0;
#20; s = 0; in0 = 0; in1 = 1;
#20; s = 0; in0 = 1; in1 = 0;
#20; s = 0; in0 = 1; in1 = 1;
#20; s = 1; in0 = 0; in1 = 0;
#20; s = 1; in0 = 0; in1 = 1;
#20; s = 1; in0 = 1; in1 = 0;
#20; s = 1; in0 = 1; in1 = 1;
#20; $finish;
end
endmodule
