`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2026 17:08:52
// Design Name: 
// Module Name: CArry_look_ahead_tb
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
// Testbench module for carry look ahead adder

module Carry_look_ahead_tb();
// setup variables
reg [3:0] A, B;
reg C_IN;
wire [3:0] SUM;
wire C_OUT;

// Instantiate the 4-bit full adder
fulladd4 FA(SUM, C_OUT, A, B, C_IN);
// setup the monitoring for the signal values

initial begin

$monitor($time," A = %d, B = %d, C_IN = %b, SUM = %d, C_OUT= %d", A, B, C_IN, SUM, C_OUT);
A = 4'd0; B = 4'd0; C_IN = 4'b0;
#5 A = 4'd3; B = 4'd4 ;
#5 A = 4'd2; B = 4'd5;
#5 A = 4'd9;  B = 4'd9 ;
#5 A = 4'd10; B = 4'd15;
#5 A = 4'd10; B = 4'd5; C_IN = 1'b1;
#40 $finish;
end
endmodule
