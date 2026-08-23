
module encoder_9_to_4(b,out);
input [9:0]b;
output reg [3:0] out;
always@(*) begin
case(b) 
10'b1000000000: out = 4'b0000;
10'b0100000000: out = 4'b0001;
10'b0010000000: out = 4'b0010;
10'b0001000000: out = 4'b0011;
10'b0000100000: out = 4'b0100;
10'b0000010000: out = 4'b0101;
10'b0000001000: out = 4'b0110;
10'b0000000100: out = 4'b0111;
10'b0000000010: out = 4'b1000;
10'b0000000001: out = 4'b1001;
endcase
end
endmodule



module Deci_to_BCD_encoder(d, A,B,C,D);
input [9:0] d;
output A, B, C, D;
wire [3:0] w;
encoder_9_to_4 dut1(.b(d),.out(w));
assign A = w[3];
assign B = w[2];
assign C = w[1];
assign D = w[0];
endmodule
