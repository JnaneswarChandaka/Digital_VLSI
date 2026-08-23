
module bin_to_BCD_encoder_tb();
reg [9:0] d;
wire A, B, C, D;
Deci_to_BCD_encoder dut3(.d(d), .A(A),.B(B), .C(C), .D(D));
initial begin
$display("decimal               A  B  C  D");
$monitor("%b            %b  %b  %b  %b", d, A,B,C,D);
    d = 10'b1000000000;
#10 d = 10'b0100000000;
#10 d = 10'b0010000000;
#10 d = 10'b0001000000;
#10 d = 10'b0000100000;
#10 d = 10'b0000010000;
#10 d = 10'b0000001000;
#10 d = 10'b0000000100;
#10 d = 10'b0000000010;
#10 d = 10'b0000000001;
#20 $finish;
end
endmodule
