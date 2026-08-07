`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2026 17:08:20
// Design Name: 
// Module Name: FA_Carry_look_ahead
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

// CARRY LOOKAHEAD ADDER IN DATAFLOW
// In ripple carry adders, the carry must propagate through the gate levels before the sim is 
// availble at the output terminals. The propagation time can be a limiting factor on the speed

// To reduce delay is to use a carry lookahead mechnism. Logic equations far implementing
// the propagation delay is reduced to four gate levels, irrespective of the number of 
// bits in the adder. This module can be substituted in place of the full adder

module fulladd4(sum, c_out, a, b, c_in);
// Inputs and output
output [3:0] sum;
output c_out;
input [3:0] a, b;
input c_in;

// Internal wires

wire p0, g0, p1, g1, p2, g2, p3, g3;
wire c1, c2, c3, c4;

// compute the p for each stage
assign p0 = a[0] ^ b[0],
        p1 = a[1] ^ b[1],
        p2 = a[2] ^ b[2],
        p3 = a[3] ^ b[3];
        
// compute the g for each stage
assign g0 = a[0] & b[0],
        g1 = a[1] & b[1],
        g2 = a[2] & b[2],
        g3 = a[3] & b[3];
        
// compute the carry for each stage
// Note that c_in is equivalent c0 in the arithmetic equation for carry lookahead computation
assign c1 = g0 | (p0 & c_in),
        c2 = g1 | (p1 & g0) | (p1 & p0 & c_in),
        c3 = g2 | (p2 & g1)| (p2 & p1 & g0) | (p2 & p1 & p0 & c_in),
        c4 = g3 | (p3 & g2)| (p3 & p2 & g1)| (p3 & p2 & p1 & g0)| (p3 & p2 & p1 & p0 & c_in);

// compute Sum
assign sum[0] = p0 ^ c_in,
        sum[1] = p1 ^ c1,
        sum[2] = p2 ^ c2,
        sum[3] = p3 ^ c3;
// Assign carry output
assign c_out  = c4;
endmodule
