`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2026 16:50:46
// Design Name: 
// Module Name: Ripple_counter_tb
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


// Instantiate the design block inside the stimulus block to test the design.
// The simulus block clock has time period of 20 with a 50% duty cycle.

// Top level stimulus module

module Ripple_counter_tb;

// Declare variables for stimulating input
reg CLOCK, CLEAR;
wire [3:0] Q;

initial
$monitor($time, "Count Q = %b, Clear = %b", Q[3:0], CLEAR);

// Instantiate the design block counter
counter c1(Q, CLOCK, CLEAR);

// Stimulate the Clear Signal
initial
begin
    CLEAR = 1'b1;
    #34 CLEAR = 1'b0;
    #200 CLEAR = 1'b1;
    #50 CLEAR = 1'b0;
end

// eup the clock to toggle every 10 time units
initial
begin
CLOCK = 1'b0;
forever #10 CLOCK = ~CLOCK;
end
   
// Finish the simulation at time 400
initial begin
#400 $finish;
end
endmodule
    
    
