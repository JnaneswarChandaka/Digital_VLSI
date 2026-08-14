// Binary converted decimal to excess-3 conversion testbench


module BCD_to_ex3_tb();
reg A, B, C, D;
wire W, X, Y, Z;
BCD_to_ex3 dut(.A(A), .B(B), .C(C), .D(D), .W(W), .X(X), .Y(Y), .Z(Z));
initial begin
$monitor("A = %b, B = %b, C = %b, D = %b,  W = %b,  X = %b,  Y = %b,  Z = %b",A, B, C, D, W, X, Y, Z);
    A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
#10 A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
#10 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;
#10 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1;
#10 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0;
#10 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1;
#10 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0;
#10 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1;
#10 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0;
#10 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1;
#20 $finish;
end
endmodule
