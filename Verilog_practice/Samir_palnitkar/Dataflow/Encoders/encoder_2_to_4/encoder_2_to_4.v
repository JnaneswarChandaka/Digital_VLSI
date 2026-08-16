module Encoder_4_to_2(en,a, out);
input [3:0] a;
input en;
output reg [1:0] out;
always@(*) begin
if(!en) out = 2'bz;
else begin
case(a)
4'b1000: out = 2'b00;
4'b0100: out = 2'b01;
4'b0010: out = 2'b10;
4'b0001: out = 2'b11;
default: out = 2'bzz;
endcase
end
end
endmodule
