`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 18:05:24
// Design Name: 
// Module Name: D_flipflop
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


module D_flipflop(clk, D, Q, Qbar);
input clk, D;
output reg Q;
output Qbar;
always@(posedge clk) begin
Q <= D;
end 
assign Qbar = ~Q;
endmodule
