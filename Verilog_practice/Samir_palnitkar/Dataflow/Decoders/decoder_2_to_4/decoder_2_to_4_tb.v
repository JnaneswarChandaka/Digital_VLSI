
module decode_2_to_4_tb();
reg en, a, b;
wire [3:0] y;
decode_2_to_4 dut(en,a, b, y);
initial begin
$monitor("en = %b, a = %b, b = %b,   y[3] = %b, y[2] = %b, y[1] = %b, y[0] = %b", en, a, b,y[3],y[2],y[1],y[0]);
    en = 1'b0; a = 1'b0; b = 1'b0;
#10 en = 1'b0; a = 1'b0; b = 1'b1;
#10 en = 1'b0; a = 1'b1; b = 1'b0;
#10 en = 1'b1; a = 1'b0; b = 1'b0;
#10 en = 1'b1; a = 1'b0; b = 1'b1;
#10 en = 1'b1; a = 1'b1; b = 1'b0;
#10 en = 1'b1; a = 1'b1; b = 1'b1;
#10 en = 1'b0; a = 1'b0; b = 1'b0;
#20 $finish;
end
endmodule
