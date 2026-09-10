// Synchronous Downcounter


module Synchronous_downcounter(clk, rst, cnt);
input clk, rst;
output reg [3:0]cnt;
always@(posedge clk or negedge rst) begin
if(!rst)
cnt <= 4'b1111;
else
cnt <= cnt - 1'b1;

end
endmodule
