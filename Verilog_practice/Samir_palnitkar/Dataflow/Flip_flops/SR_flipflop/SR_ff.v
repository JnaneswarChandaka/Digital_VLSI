`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 18:05:24
// Design Name: 
// Module Name: SR_flipflop
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


module SR_flipflop(S,R, clk, Q, Qbar);
input clk, S, R;
output reg Q;
output Qbar;
always@(posedge clk) begin
case({S, R})
2'b00: Q <= Q;
2'b01: Q <= 1'b0;
2'b10: Q <= 1'b1;
2'b11: Q <= 1'bx;
default: Q <= 0;
endcase
end
assign Qbar = ~Q;
endmodule
