// gray to binary code conversion testbench


module gray_to_bin_tb();
reg [3:0]G;
wire [3:0]B;
gray_to_bin dut(.G(G), .B(B));
initial begin
$monitor("G = %b, B = %b", G,B);
G = 4'b0000;
#10 G = 4'b0001;
#10 G = 4'b0010;
#10 G = 4'b0011;
#10 G = 4'b0100;
#10 G = 4'b0101;
#10 G = 4'b0110;
#10 G = 4'b0111;
#10 G = 4'b1000;
#10 G = 4'b1001;
#10 G = 4'b1010;
#10 G = 4'b1011;
#10 G = 4'b1100;
#10 G = 4'b1101;
#10 G = 4'b1110;
#10 G = 4'b1111;
#20 $finish;
end
endmodule
