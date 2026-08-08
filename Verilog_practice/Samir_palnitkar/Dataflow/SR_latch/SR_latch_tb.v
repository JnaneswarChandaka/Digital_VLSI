`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2026 21:12:40
// Design Name: 
// Module Name: SR_latch_tb
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


module SR_latch_tb();
wire Q, Qbar;
reg s, r;
SR_latch dut(s,r,Q,Qbar);
initial begin
$monitor($time, " s = %b, r = %b, Q = %b, Qbar = %b",s, r, Q, Qbar);
 s = 0; r = 0;
#5 s =0; r = 1;
#5 s = 0; r = 0;
#5 s =1; r = 0;
#5 s =0; r = 0;
#5 s =1; r = 1;
#40 $finish;
end
endmodule


// Simulation output
//run 1000ns
//Time =                    0 ns, s = 0, in0 = 0, in1 = 0, out = x
//Time =                    6 ns, s = 0, in0 = 0, in1 = 0, out = 0
//Time =                   20 ns, s = 0, in0 = 0, in1 = 1, out = 0
//Time =                   40 ns, s = 0, in0 = 1, in1 = 0, out = 0
//Time =                   42 ns, s = 0, in0 = 1, in1 = 0, out = 1
//Time =                   60 ns, s = 0, in0 = 1, in1 = 1, out = 1
//Time =                   80 ns, s = 1, in0 = 0, in1 = 0, out = 1
//Time =                   84 ns, s = 1, in0 = 0, in1 = 0, out = x
//Time =                   86 ns, s = 1, in0 = 0, in1 = 0, out = 0
//Time =                  100 ns, s = 1, in0 = 0, in1 = 1, out = 0
//Time =                  102 ns, s = 1, in0 = 0, in1 = 1, out = 1
//Time =                  120 ns, s = 1, in0 = 1, in1 = 0, out = 1
//Time =                  124 ns, s = 1, in0 = 1, in1 = 0, out = 0
//Time =                  140 ns, s = 1, in0 = 1, in1 = 1, out = 0
//Time =                  142 ns, s = 1, in0 = 1, in1 = 1, out = 1
//$finish called at time : 160 ns 


