`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2026 23:17:52
// Design Name: 
// Module Name: JK_master_slv
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


module JK_master_slv(clock, clear, J, K, Q, Qbar);
input clock, clear, J, K;
output Q, Qbar;

wire a, b, c, y, ybar, cbar, d;

assign a = ~(Qbar & J & clock & clear);
assign b = ~(Q & K & clock);


assign y = ~(ybar & a);
assign ybar = ~(y & clear & b);

assign c = ~(y & cbar);
assign d = ~(ybar & cbar);
assign cbar = ~clock;
assign Q = ~(c & Qbar);
assign Qbar = ~(Q & clear & d);
endmodule


module JK_sync_counter(Clear, Clock, count_enable, q);
input Clear, Clock, count_enable;
output [3:0] q;
wire [3:0] qbar, t;

assign t[0] = count_enable;
assign t[1] = q[0] & count_enable;
assign t[2] = t[1] & q[1];
assign t[3] = t[2] & q[2];

JK_master_slv ff1(Clock, Clear,t[0], t[0], q[0], qbar[0]);
JK_master_slv ff2(Clock, Clear,t[1], t[1], q[1], qbar[1]);
JK_master_slv ff3(Clock, Clear,t[2], t[2], q[2], qbar[2]);
JK_master_slv ff4(Clock, Clear,t[3], t[3], q[3], qbar[3]);

/*
genvar i;
generate
for (i = 0; i<= 3; i = i+1)begin : t_gen
if (i==0)
    assign t[i] = count_enable;
else
assign t[i] = t[i-1] & q[i-1];
end
endgenerate

generate
    for(i = 0; i<=3; i = i+1) begin : ff_gen
    JK_master_slv ff(.clock(Clock), .clear(Clear), .J(t[i]), .K(t[i]), .Q(q[i]),.Qbar(qbar[i]));
    end
endgenerate
*/

endmodule
