`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2026 23:44:25
// Design Name: 
// Module Name: JK_master_slv_tb
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


module JK_master_slv_tb();

reg Clear_tb, Clock_tb, count_enable_tb;
wire [3:0] q_tb;

JK_sync_counter dut(.Clear(Clear_tb), .Clock(Clock_tb), .count_enable(count_enable_tb), .q(q_tb));

always #10 Clock_tb = ~Clock_tb;

initial begin
$monitor("Time = %d, Clock = %b, Clear = %b, count_enable = %b, q_tb = %b",
                 $time, Clock_tb, Clear_tb, count_enable_tb, q_tb);
Clock_tb = 0;
Clear_tb = 0;
count_enable_tb = 0;
#20 Clear_tb = 1;

#10 count_enable_tb = 1;

#400 count_enable_tb = 0;

#10 Clear_tb = 0;
#20 Clear_tb = 1;
#50 $finish;
end

endmodule


/*
Time resolution is 1 ps
Time =                    0, Clock = 0, Clear = 0, count_enable = 0, q_tb = 0000
Time =                   10, Clock = 1, Clear = 0, count_enable = 0, q_tb = 0000
Time =                   20, Clock = 0, Clear = 1, count_enable = 0, q_tb = 0000
Time =                   30, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0000
Time =                   40, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0001
Time =                   50, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0001
Time =                   60, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0010
Time =                   70, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0010
Time =                   80, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0011
Time =                   90, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0011
Time =                  100, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0100
Time =                  110, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0100
Time =                  120, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0101
Time =                  130, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0101
Time =                  140, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0110
Time =                  150, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0110
Time =                  160, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0111
Time =                  170, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0111
Time =                  180, Clock = 0, Clear = 1, count_enable = 1, q_tb = 1000
Time =                  190, Clock = 1, Clear = 1, count_enable = 1, q_tb = 1000
Time =                  200, Clock = 0, Clear = 1, count_enable = 1, q_tb = 1001
Time =                  210, Clock = 1, Clear = 1, count_enable = 1, q_tb = 1001
Time =                  220, Clock = 0, Clear = 1, count_enable = 1, q_tb = 1010
Time =                  230, Clock = 1, Clear = 1, count_enable = 1, q_tb = 1010
Time =                  240, Clock = 0, Clear = 1, count_enable = 1, q_tb = 1011
Time =                  250, Clock = 1, Clear = 1, count_enable = 1, q_tb = 1011
Time =                  260, Clock = 0, Clear = 1, count_enable = 1, q_tb = 1100
Time =                  270, Clock = 1, Clear = 1, count_enable = 1, q_tb = 1100
Time =                  280, Clock = 0, Clear = 1, count_enable = 1, q_tb = 1101
Time =                  290, Clock = 1, Clear = 1, count_enable = 1, q_tb = 1101
Time =                  300, Clock = 0, Clear = 1, count_enable = 1, q_tb = 1110
Time =                  310, Clock = 1, Clear = 1, count_enable = 1, q_tb = 1110
Time =                  320, Clock = 0, Clear = 1, count_enable = 1, q_tb = 1111
Time =                  330, Clock = 1, Clear = 1, count_enable = 1, q_tb = 1111
Time =                  340, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0000
Time =                  350, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0000
Time =                  360, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0001
Time =                  370, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0001
Time =                  380, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0010
Time =                  390, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0010
Time =                  400, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0011
Time =                  410, Clock = 1, Clear = 1, count_enable = 1, q_tb = 0011
Time =                  420, Clock = 0, Clear = 1, count_enable = 1, q_tb = 0100
Time =                  430, Clock = 1, Clear = 1, count_enable = 0, q_tb = 0100
Time =                  440, Clock = 0, Clear = 0, count_enable = 0, q_tb = 0000
Time =                  450, Clock = 1, Clear = 0, count_enable = 0, q_tb = 0000
Time =                  460, Clock = 0, Clear = 1, count_enable = 0, q_tb = 0000
Time =                  470, Clock = 1, Clear = 1, count_enable = 0, q_tb = 0000
Time =                  480, Clock = 0, Clear = 1, count_enable = 0, q_tb = 0000
Time =                  490, Clock = 1, Clear = 1, count_enable = 0, q_tb = 0000
Time =                  500, Clock = 0, Clear = 1, count_enable = 0, q_tb = 0000
$finish called at time : 510 ns

*/
