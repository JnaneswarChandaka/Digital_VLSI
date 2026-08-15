
module decode_4_to_16_tb();
reg En,A,B,C,D;
wire [15:0] out;

decode_4_to_16 dut(En, A, B,C,D, out);
initial begin
$monitor("En = %b, A = %b, B = %b, C = %d, D = %d,   out = %b", En, A, B, C,D,out);
    En = 1'b0; A = 1'b0;  B = 1'b0; C = 1'b0; D = 1'b0;
#10 En = 1'b0; A = 1'b0;  B = 1'b0; C = 1'b0; D = 1'b1;
#10 En = 1'b1; A = 1'b0;  B = 1'b0; C = 1'b0; D = 1'b0;
#10 En = 1'b1; A = 1'b0;  B = 1'b0; C = 1'b0; D = 1'b1;
#10 En = 1'b1; A = 1'b0;  B = 1'b0; C = 1'b1; D = 1'b0;
#10 En = 1'b1; A = 1'b0;  B = 1'b0; C = 1'b1; D = 1'b1;
#10 En = 1'b1; A = 1'b0;  B = 1'b1; C = 1'b0; D = 1'b0;
#10 En = 1'b1; A = 1'b0;  B = 1'b1; C = 1'b0; D = 1'b1;
#10 En = 1'b1; A = 1'b0;  B = 1'b1; C = 1'b1; D = 1'b0;
#10 En = 1'b1; A = 1'b0;  B = 1'b1; C = 1'b1; D = 1'b1;
#10 En = 1'b1; A = 1'b1;  B = 1'b0; C = 1'b0; D = 1'b0;
#10 En = 1'b1; A = 1'b1;  B = 1'b0; C = 1'b0; D = 1'b1;
#10 En = 1'b1; A = 1'b1;  B = 1'b0; C = 1'b1; D = 1'b0;
#10 En = 1'b1; A = 1'b1;  B = 1'b0; C = 1'b1; D = 1'b1;
#10 En = 1'b1; A = 1'b1;  B = 1'b1; C = 1'b0; D = 1'b0;
#10 En = 1'b1; A = 1'b1;  B = 1'b1; C = 1'b0; D = 1'b1;
#10 En = 1'b1; A = 1'b1;  B = 1'b1; C = 1'b1; D = 1'b0;
#10 En = 1'b1; A = 1'b1;  B = 1'b1; C = 1'b1; D = 1'b1;
#20 $finish;
end
endmodule
