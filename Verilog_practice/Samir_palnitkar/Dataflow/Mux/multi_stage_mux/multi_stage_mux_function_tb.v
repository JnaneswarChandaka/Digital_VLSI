module two_level_mux_function_tb ();
reg A,B,C;
wire X;
two_level_mux_function dut(A, B, C, X);
initial begin
$display(" A  B  C      X");
$monitor(" %b  %b  %b      %b",A, B, C, X);
    A = 1'b0; B = 1'b0; C = 1'b0;
#10 A = 1'b0; B = 1'b0; C = 1'b1;
#10 A = 1'b0; B = 1'b1; C = 1'b0;
#10 A = 1'b0; B = 1'b1; C = 1'b1;
#10 A = 1'b1; B = 1'b0; C = 1'b0;
#10 A = 1'b1; B = 1'b0; C = 1'b1;
#10 A = 1'b1; B = 1'b1; C = 1'b0;
#10 A = 1'b1; B = 1'b1; C = 1'b1;
#10 $finish;
end
endmodule
