`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2026 23:17:52
// Design Name: 
// Module Name: 3_bit_mag_comp
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


module fourbit_mag_comp(A, B, A_gt_B, A_eq_B, A_lt_B);
input [3:0]A, B;
output A_lt_B, A_eq_B, A_gt_B;

// while using assign -> x must be wire
// while using always -> x must be reg
wire [3:0]x;

// genvar and generate block is used here as assign is continuous assignment
// it cannot use variable index i as it is not define in a procedural clock
genvar i;
generate
for (i = 0; i<=3; i = i+1) begin
assign x[i] = (A[i]&B[i]) | ((~A[i])&(~B[i]));
end
endgenerate
assign A_lt_B = (~A[3]& B[3]) | (x[3]&~A[2]&B[2]) | (x[3]&x[2]&~A[1]&B[1]) | (x[3]&x[2]&x[1]&~A[0]&B[0]) ;
assign A_eq_B = (x[3]&x[2]&x[1]&x[0]);
assign A_gt_B = (A[3]&~B[3]) |(x[3]&A[2]&~B[2])| (x[3]&x[2]&A[1]&~B[1]) | (x[3]&x[2]&x[1]&A[0]&~B[0]);
endmodule
