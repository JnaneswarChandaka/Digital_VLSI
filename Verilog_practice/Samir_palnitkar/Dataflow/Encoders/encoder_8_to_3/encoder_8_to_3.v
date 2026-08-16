
module encode_8_to_3(en, a, out);
input en;
input [7:0]a;
output reg [2:0] out;
always@(*) begin
if(!en) out = 7'bz;
else begin
case(a)
8'b10000000: out = 3'b000;
8'b01000000: out = 3'b001;
8'b00100000: out = 3'b010;
8'b00010000: out = 3'b011;
8'b00001000: out = 3'b100;
8'b00000100: out = 3'b101;
8'b00000010: out = 3'b110;
8'b00000001: out = 3'b111;
default: out = 3'bz;
endcase
end
end
endmodule
