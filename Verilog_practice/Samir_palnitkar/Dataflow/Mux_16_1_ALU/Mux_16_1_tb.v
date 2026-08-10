`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2026 22:32:12
// Design Name: 
// Module Name: Mux_16_1_ALU_tb
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


module Mux_16_1_ALU_tb();
reg [3:0] a, b;
reg [3:0] s;
wire [3:0] f;

Mux_16_1_ALU dut(.A(a), .B(b), .S(s), .F(f));
initial begin
$monitor("Time = %d, S = %b, A = %b, B = %b, F = %b ", $time, s, a, b, f);

repeat(10) begin
a = $random;
b = $random;
s = $random;
#10;
end
#20 $finish;
end
endmodule
