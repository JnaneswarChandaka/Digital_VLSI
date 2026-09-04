
module demux_1_to_4_tb();
reg [1:0]S;
reg A;
wire y0, y1, y2, y3;
demux_1_to_4 dut(.A(A), .S(S), .y0(y0), .y1(y1), .y2(y2), .y3(y3));
initial begin
$display("A   S[1]  S[0]     y0  y1  y2  y3");
$monitor("%b    %b     %b        %b   %b   %b   %b ", A, S[1], S[1], y0, y1, y2, y3);
    A = 1'b0; S[1] = 1'b0; S[0] = 1'b0;
#10 A = 1'b0; S[1] = 1'b0; S[0] = 1'b1;
#10 A = 1'b0; S[1] = 1'b1; S[0] = 1'b0;
#10 A = 1'b0; S[1] = 1'b1; S[0] = 1'b1;
#10 A = 1'b1; S[1] = 1'b0; S[0] = 1'b0;
#10 A = 1'b1; S[1] = 1'b0; S[0] = 1'b1;
#10 A = 1'b1; S[1] = 1'b1; S[0] = 1'b0;
#10 A = 1'b1; S[1] = 1'b1; S[0] = 1'b1;
#10 $finish;
end
endmodule
