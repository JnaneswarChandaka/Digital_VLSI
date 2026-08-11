// D flipflop to SR flipflop conversion


module D_to_SR_FF(clk,rst, S, R, Q, Qbar);
input clk, rst, S, R;
output reg  Q;
output Qbar;
reg D;
initial begin
Q = 1'b0;
end
always@(posedge clk) begin
case({S,R})
2'b00: D <= Q;
2'b01: D <= 1'b0;
2'b10: D <= 1'b1;
2'b11: D <= 1'bx;
default: D <= 1'b0;
endcase
end
always@(posedge clk or posedge rst) begin
if(rst)
Q<= 1'b0;
else
Q <= D;
end
//assign D = (~R & Q) | S;
assign Qbar = ~Q;
endmodule
