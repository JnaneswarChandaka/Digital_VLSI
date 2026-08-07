`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2026 16:24:38
// Design Name: 
// Module Name: Ripple_counter
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

/*
A 4 bit ripple counter by using neg-edge triggering flipflop. We write the corresponding verilog
using deataflow statements in a top-down fashion. First we design the module counter. The code 
contains instantiation of four T-FF modules
*/

// Ripple counter
module counter(Q, clock, clear);
// I/O ports
output [3:0] Q;
input clock, clear;

//Instantiate the T - flipflops
T_FF tff0(Q[0], clock, clear);
T_FF tff1(Q[1], Q[0], clear);
T_FF tff2(Q[2], Q[1], clear);
T_FF tff3(Q[3], Q[2], clear);
endmodule

/*
now we write the verilog description for T_FF. instead of NOT gate, a dataflow operator ~ is 
used which is fed back.
*/

// Edge-triggering T-flipflop Toggles every clock cycle

module T_FF(q,clk, clear);
// I/O ports

output q;
input clk, clear;

// Instantiate the edge- triggering DFF
// complement of output q is fed back
// Notice  qbar not needed. Unconnected port
edge_dff ff1(q, , ~q, clk, clear);
endmodule




// We define the lowest level module D_FF (edge_dff), using dataflow statements. 
// The dataflow statements correspond to the logic diagram
// The nets in the logic diagram  corresponds exactly to the declared nets.

// Edge-triggered D flipflop
module edge_dff(q, qbar, d, clk, clear);
// I/O ports
output q, qbar;
input d, clk, clear;

// Internal variables
wire s, sbar, r, rbar, cbar;
// dataflow statements
// Create a complement of signal clear
assign cbar = ~clear;

//Input latches; a latch is level sensitive.
// An Edge-sensitive flip-flop is implemented by using 3 SR latches
assign sbar = ~(rbar & s),
        s = ~(sbar & cbar & ~clk),
        r = ~(rbar & ~clk & s),
        rbar = ~(r & cbar & d);
// Output latch
assign q = ~(s & qbar),
        qbar = ~(q & r & cbar);
endmodule
