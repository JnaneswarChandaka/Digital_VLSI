
module bin_to_BCD_tb();
reg b3, b2, b1, b0;
wire E, D, C, B, A;
bin_to_BCD dut(b3,b2,b1,b0,E, D, C, B, A);
initial begin
$monitor("b3 = %b, b2 = %b,b1 = %b,b0 = %b,         E = %b, D = %b, C = %b, B = %b, A = %b",b3,b2,b1,b0,E, D, C, B, A);
    b3 = 1'b0; b2 = 1'b0; b1 = 1'b0; b0 = 1'b0;
#10 b3 = 1'b0; b2 = 1'b0; b1 = 1'b0; b0 = 1'b1;
#10 b3 = 1'b0; b2 = 1'b0; b1 = 1'b1; b0 = 1'b0;
#10 b3 = 1'b0; b2 = 1'b0; b1 = 1'b1; b0 = 1'b1;
#10 b3 = 1'b0; b2 = 1'b1; b1 = 1'b0; b0 = 1'b0;
#10 b3 = 1'b0; b2 = 1'b1; b1 = 1'b0; b0 = 1'b1;
#10 b3 = 1'b0; b2 = 1'b1; b1 = 1'b1; b0 = 1'b0;
#10 b3 = 1'b0; b2 = 1'b1; b1 = 1'b1; b0 = 1'b1;
#10 b3 = 1'b1; b2 = 1'b0; b1 = 1'b0; b0 = 1'b0;
#10 b3 = 1'b1; b2 = 1'b0; b1 = 1'b0; b0 = 1'b1;
#10 b3 = 1'b1; b2 = 1'b0; b1 = 1'b1; b0 = 1'b0;
#10 b3 = 1'b1; b2 = 1'b0; b1 = 1'b1; b0 = 1'b1;
#10 b3 = 1'b1; b2 = 1'b1; b1 = 1'b0; b0 = 1'b0;
#10 b3 = 1'b1; b2 = 1'b1; b1 = 1'b0; b0 = 1'b1;
#10 b3 = 1'b1; b2 = 1'b1; b1 = 1'b1; b0 = 1'b0;
#10 b3 = 1'b1; b2 = 1'b1; b1 = 1'b1; b0 = 1'b1;
#20 $finish; 
end
endmodule
