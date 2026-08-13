// tetbench for 4 bit parallel subtractor using 4 full adders

module parallel_subtractor_tb();
reg [3:0]a, b;
reg bin;
wire [3:0] diff, bout;
multibit_subtractor dut(.A(a), .B(b), .bin(bin), .diff(diff), .bout(bout));

initial begin
$monitor("A = %b, B = %b, bin = %b, diff = %b, bout = %b", a, b, bin, diff, bout);
a = 4'b0000; b = 4'b0000; bin = 1'b0;
#10 a = 4'b0000; b = 4'b0000; bin = 1'b0;
#10 a = 4'b0101; b = 4'b0100; bin = 1'b0;
#10 a = 4'b00110; b = 4'b0101; bin = 1'b1;
#10 a = 4'b0100; b = 4'b1000; bin = 1'b0;
#10 a = 4'b1100; b = 4'b1010; bin = 1'b1;
#10 a = 4'b0110; b = 4'b1100; bin = 1'b0;
#20 $finish;
end
endmodule
