// binary to gray converter testbench



module bin_to_gray_tb();
reg [3:0] B;
wire [3:0] G;
bin_to_gray dut(.B(B), .G(G));
initial begin
$monitor("B = %b, G = %b",B,G);
B = 4'b0000; 
#10 B = 4'b0001;
#10 B = 4'b0010;
#10 B = 4'b0011;
#10 B = 4'b0100;
#10 B = 4'b0101;
#10 B = 4'b0110;
#10 B = 4'b0111;
#10 B = 4'b1000;
#10 B = 4'b1001;
#10 B = 4'b1010;
#10 B = 4'b1011;
#10 B = 4'b1100;
#10 B = 4'b1101;
#10 B = 4'b1110;
#10 B = 4'b1111;
#20 $finish;
end
endmodule


