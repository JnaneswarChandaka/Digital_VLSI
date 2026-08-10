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
4'b0000:  begin
 F = A;
 $strobe("The value of  A is %b", F);
 end
4'b0001:  begin 
F = A + 1; 
$strobe("The value of  A + 1 is %b", F);
end
4'b0010: begin
   F = A + B;
   $strobe("The value of  A + B is %b", F);
   end
4'b0011: begin
   F = A + B + 1;
$strobe("The value of  A + B + 1 is %b", F);
end
4'b0100:  begin
F = A - B - 1;
$strobe("The value of  A - B - 1 is %b", F);
end
4'b0101: begin
  F = A - B;
$strobe("The value of A - B is %b", F);
end
4'b0110: begin
  F = A - 1;
$strobe("The value of A - 1 is %b", F);
end
4'b0111: begin
  F = A | B;
$strobe("The value of A | B is %b", F);
end
4'b1000: begin 
 F = A ^ B;
$strobe("The value of A ^ B is %b", F);
end
4'b1001: begin
  F = A & B;
$strobe("The value of A & B is %b", F);
end
4'b1010: begin
  F = ~A;
$strobe("The value of ~ A is %b", F);
end
default: begin F= 4'b0000;
$strobe("The default value is %b", 4'b0000);
end
endcase
end
endmodule
