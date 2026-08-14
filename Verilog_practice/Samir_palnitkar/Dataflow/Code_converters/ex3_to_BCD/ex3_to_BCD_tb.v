// excess-3 to binary converted decimal testbench


module ex3_to_BCD_tb();
reg E3,E2,E1,E0;
wire B3,B2,B1,B0;
ex3_to_BCD dut(E3,E2,E1,E0,B3,B2,B1,B0);
initial begin
$monitor("E3 = %b, E2 = %b, E1 = %b, E0 = %b, B3 = %b, B2 = %b, B1 = %b, B0 = %b",E3,E2,E1,E0,B3,B2,B1,B0);
    E3 = 1'b0; E2 = 1'b0; E1 = 1'b1; E0 = 1'b1;
#10 E3 = 1'b0; E2 = 1'b1; E1 = 1'b0; E0 = 1'b0;
#10 E3 = 1'b0; E2 = 1'b1; E1 = 1'b0; E0 = 1'b1;
#10 E3 = 1'b0; E2 = 1'b1; E1 = 1'b1; E0 = 1'b0;
#10 E3 = 1'b0; E2 = 1'b1; E1 = 1'b1; E0 = 1'b1;
#10 E3 = 1'b1; E2 = 1'b0; E1 = 1'b0; E0 = 1'b0;
#10 E3 = 1'b1; E2 = 1'b0; E1 = 1'b0; E0 = 1'b1;
#10 E3 = 1'b1; E2 = 1'b0; E1 = 1'b1; E0 = 1'b0;
#10 E3 = 1'b1; E2 = 1'b0; E1 = 1'b1; E0 = 1'b1;
#10 E3 = 1'b1; E2 = 1'b1; E1 = 1'b0; E0 = 1'b0;
#20 $finish;
end
endmodule
