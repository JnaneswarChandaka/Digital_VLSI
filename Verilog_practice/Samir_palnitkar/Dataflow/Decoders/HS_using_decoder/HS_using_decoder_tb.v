
module decode_hs_tb();
reg a, b;
wire dif, bout;
hs dut3(.a(a), .b(b),.dif(dif), .bout(bout));
initial begin
$monitor("a = %b, b = %b,   dif = %b, bout = %b", a, b, dif, bout);
    a = 1'b0; b = 1'b0;
#10 a = 1'b0; b = 1'b1;
#10 a = 1'b1; b = 1'b0;
#10 a = 1'b1; b = 1'b1;
#20 $finish;
end
endmodule
