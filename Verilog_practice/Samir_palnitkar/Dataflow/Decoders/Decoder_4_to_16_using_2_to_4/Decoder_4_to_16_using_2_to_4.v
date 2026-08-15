
module decode_2_to_4(en,a,b, y);
input en, a, b;
output reg [3:0] y;
always@(*) begin
if(!en) y = 0;
else
case({a,b})
2'b00: y = 4'b0001;
2'b01: y = 4'b0010;
2'b10: y = 4'b0100;
2'b11: y = 4'b1000;
endcase
end
endmodule


module decode_4_to_16(En,A, B,C,D, out);
input En,A,B,C,D;
output [15:0] out;
wire [3:0]w;
decode_2_to_4 dut1 (En,A,B,w);
decode_2_to_4 dut2 (w[0],C,D,out[3:0]);
decode_2_to_4 dut3 (w[1],C,D,out[7:4]);
decode_2_to_4 dut4 (w[2],C,D,out[11:8]);
decode_2_to_4 dut5 (w[3],C,D,out[15:12]);
endmodule
