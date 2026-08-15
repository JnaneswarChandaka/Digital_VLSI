
module decode_2_to_4(en,a,b,y);
input en, a, b;
output reg [3:0] y;
always@(*) begin
if(!en) y = 4'b0000;
else
case({a,b})
2'b00: y = 4'b0001;
2'b01: y = 4'b0010;
2'b10: y = 4'b0100;
2'b11: y = 4'b1000;
default: y = 4'b0000;
endcase
end
endmodule


module decode_3_to_8(A,B,C, out);
input A,B,C;
output [7:0]out;
decode_2_to_4 du1(A,B,C,out[3:0]);
decode_2_to_4 du2(~A,B,C,out[7:4]);
endmodule
