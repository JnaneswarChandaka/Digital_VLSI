// Asynchronous upcounter


module upcounter_4_bit(clk, rst, cnt);
input clk, rst;
output reg[3:0]cnt;
initial cnt = 4'b0000;
always@(posedge clk)begin
if(rst) cnt<= 4'b0000;
else
cnt <= cnt + 1'b1; 
end
endmodule
