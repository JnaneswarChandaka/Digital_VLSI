
module decode_3_to_8_tb();
reg A,B,C;
wire [7:0] out;
decode_3_to_8 dut(A,B,C,out);
initial begin
$monitor("A = %b, B = %b, C = %b,   out = %b", A,B,C,out);
    A = 1'b0; B = 1'b0; C = 1'b0;
#10 A = 1'b0; B = 1'b0; C = 1'b0;
#10 A = 1'b0; B = 1'b0; C = 1'b0;
#10 A = 1'b0; B = 1'b0; C = 1'b1;
#10 A = 1'b0; B = 1'b1; C = 1'b0;
#10 A = 1'b0; B = 1'b1; C = 1'b1;
#10 A = 1'b1; B = 1'b0; C = 1'b0;
#10 A = 1'b1; B = 1'b0; C = 1'b1;
#10 A = 1'b1; B = 1'b1; C = 1'b0;
#10 A = 1'b1; B = 1'b1; C = 1'b1;
#20 $finish;
end
endmodule
