

module decode_3_to_8_tb();
reg en, a, b, c;
wire [7:0] y;
decode_3_to_8 dut(en, a, b, c, y);
initial begin
$monitor("en = %b, a = %b, b = %b, c = %b,   y= %b", en, a, b, c, y);
en = 1'b0; a = 0; b = 1'b0; c = 1'b0;
#10 en = 1'b0; a = 1'b0; b = 1'b0; c = 1'b1;
#10 en = 1'b0; a = 1'b0; b = 1'b1; c = 1'b0;
#10 en = 1'b1; a = 1'b0; b = 1'b0; c = 1'b0;
#10 en = 1'b1; a = 1'b0; b = 1'b0; c = 1'b1;
#10 en = 1'b1; a = 1'b0; b = 1'b1; c = 1'b0;
#10 en = 1'b1; a = 1'b0; b = 1'b1; c = 1'b1;
#10 en = 1'b1; a = 1'b1; b = 1'b0; c = 1'b0;
#10 en = 1'b1; a = 1'b1; b = 1'b0; c = 1'b1;
#10 en = 1'b1; a = 1'b1; b = 1'b1; c = 1'b0;
#10 en = 1'b1; a = 1'b1; b = 1'b1; c = 1'b1;
#20 $finish;
end
endmodule
