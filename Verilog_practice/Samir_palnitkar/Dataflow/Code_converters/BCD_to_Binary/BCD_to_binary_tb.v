


module BCD_to_bin_tb();
reg E,D,C,B,A;
wire b4, b3, b2, b1, b0;
BCD_to_bin dut(E,D,C,B,A,b4, b3, b2, b1, b0);
initial begin
$monitor("E = %b, D = %b, C = %b, B  = %b, A  = %b,     b4  = %b, b3 = %b, b2 = %b, b1 = %b, b0 = %b",E,D,C,B,A,b4, b3, b2, b1, b0);
    E = 1'b0; D = 1'b0; C = 1'b0; B = 1'b0; A =1'b0;
#10 E = 1'b0; D = 1'b0; C = 1'b0; B = 1'b0; A =1'b1;
#10 E = 1'b0; D = 1'b0; C = 1'b0; B = 1'b1; A =1'b0;
#10 E = 1'b0; D = 1'b0; C = 1'b0; B = 1'b1; A =1'b1;
#10 E = 1'b0; D = 1'b0; C = 1'b1; B = 1'b0; A =1'b0;
#10 E = 1'b0; D = 1'b0; C = 1'b1; B = 1'b0; A =1'b1;
#10 E = 1'b0; D = 1'b0; C = 1'b1; B = 1'b1; A =1'b0;
#10 E = 1'b0; D = 1'b0; C = 1'b1; B = 1'b1; A =1'b1;
#10 E = 1'b0; D = 1'b1; C = 1'b0; B = 1'b0; A =1'b0;
#10 E = 1'b0; D = 1'b1; C = 1'b0; B = 1'b0; A =1'b1;
#10 E = 1'b1; D = 1'b0; C = 1'b0; B = 1'b0; A =1'b0;
#10 E = 1'b1; D = 1'b0; C = 1'b0; B = 1'b0; A =1'b1;
#10 E = 1'b1; D = 1'b0; C = 1'b0; B = 1'b1; A =1'b0;
#10 E = 1'b1; D = 1'b0; C = 1'b0; B = 1'b1; A =1'b1;
#10 E = 1'b1; D = 1'b0; C = 1'b1; B = 1'b0; A =1'b0;
#10 E = 1'b1; D = 1'b0; C = 1'b1; B = 1'b0; A =1'b1;
#10 E = 1'b1; D = 1'b0; C = 1'b1; B = 1'b1; A =1'b0;
#10 E = 1'b1; D = 1'b0; C = 1'b1; B = 1'b1; A =1'b1;
#10 E = 1'b1; D = 1'b1; C = 1'b0; B = 1'b0; A =1'b0;
#10 E = 1'b1; D = 1'b1; C = 1'b0; B = 1'b0; A =1'b1;
#20 $finish;
end
