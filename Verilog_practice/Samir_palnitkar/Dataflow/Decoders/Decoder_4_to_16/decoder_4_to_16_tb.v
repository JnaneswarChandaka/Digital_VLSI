
module decode_4_to_16_tb();
reg en, a, b, c,d;
wire [15:0] y;
decode_4_to_16 dut(en, a,b,c,d,y);
initial begin
$monitor("en = %b, a = %b,b = %b,c = %b, d = %b,     y = %b",en, a,b,c,d,y);
    en = 1'b0; a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
#10 en = 1'b0; a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
#10 en = 1'b0; a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
#10 en = 1'b0; a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
#10 en = 1'b1; a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
#10 en = 1'b1; a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1;
#10 en = 1'b1; a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0;
#10 en = 1'b1; a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1;
#10 en = 1'b1; a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0;
#10 en = 1'b1; a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
#10 en = 1'b1; a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0;
#10 en = 1'b1; a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1;
#10 en = 1'b1; a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
#10 en = 1'b1; a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
#10 en = 1'b1; a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
#10 en = 1'b1; a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1;
#10 en = 1'b1; a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0;
#10 en = 1'b1; a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1;
#10 en = 1'b1; a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0;
#10 en = 1'b1; a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1;
#20 $finish;
end
endmodule
