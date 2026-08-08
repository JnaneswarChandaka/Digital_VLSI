`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2026 21:12:09
// Design Name: 
// Module Name: SR_latch
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


// The logic diagram for an RS latch with delay is shown below
// Write the verilog description for the RS latch. Include delays of 1 unit when
// instantiating the nor gates. Write the stimulus module for the RS latch, using the 
// following table, and verify the outputs.

//    set reset   q n+1
//    0   0       qn
//    0   1       0
//    1   0       1
//    1   1       ?



//////////////////////////////////////////////////////////////////////////////////


module SR_latch(S, R, q, qbar);
input S, R;
output q, qbar;

nor #1 g1(q, R,qbar);
nor #1 g2(qbar,S, q);
//assign #1 qbar = ~(q | S);
//assign #1  q = ~(qbar | R);
endmodule
