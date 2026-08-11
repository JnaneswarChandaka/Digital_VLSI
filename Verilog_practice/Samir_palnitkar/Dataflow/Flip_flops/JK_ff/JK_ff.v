`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2026 18:05:24
// Design Name: 
// Module Name: JK_flipflop
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


module JK_flipflop(Clk, J, K, Q, Qbar);
input Clk, J, K;
output reg Q;
output Qbar;

always@(posedge Clk) begin
case({J, K})
2'b00: Q <= Q;
2'b01: Q <= 0;
2'b10: Q <= 1;
2'b11: Q <= ~Q;
default: Q <= 0;
endcase
end
assign Qbar = ~Q;
endmodule
