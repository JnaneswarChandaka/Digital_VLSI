
module decode_func_4_16_tb();
reg a, b, c, d;
wire f1, f2, f3;
decode_func_4_16 dut3(.a(a), .b(b), .c(c), .d(d),.f1(f1), .f2(f2), .f3(f3));
initial begin
$monitor("a = %b, b = %b, c = %b, d = %b,   f1 = %b, f2 = %b, f3 = %b", a, b, c, d ,f1, f2, f3);
    a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0;
#10 a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1;
#10 a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0;
#10 a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1;
#10 a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0;
#10 a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1;
#10 a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0;
#10 a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1;
#10 a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0;
#10 a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1;
#10 a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0;
#10 a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1;
#10 a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0;
#10 a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1;
#10 a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0;
#10 a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1;
#20 $finish;
end
endmodule
