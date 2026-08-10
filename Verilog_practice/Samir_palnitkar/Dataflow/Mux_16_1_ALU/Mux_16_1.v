`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2026 22:31:28
// Design Name: 
// Module Name: Mux_16_1_ALU
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


module Mux_16_1_ALU(A, B, S, F);
input [3:0] A, B;
input [3:0] S;
output reg [3:0] F;
always@(*) begin
case(S)
4'b0000:   F = A;
4'b0001:   F = A + 1;
4'b0010:   F = A + B;
4'b0011:   F = A + B + 1;
4'b0100:   F = A - B - 1;
4'b0101:   F = A - B;
4'b0110:   F = A - 1;
4'b0111:   F = A | B;
4'b1000:   F = A ^ B;
4'b1001:   F = A & B;
4'b1010:   F = ~A;
default: begin F= 4'b0000;
$display("The default value is %b", 4'b0000);
end
endcase
end
endmodule
