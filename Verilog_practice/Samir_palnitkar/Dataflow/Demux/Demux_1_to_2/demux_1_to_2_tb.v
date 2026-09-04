
module Demux_1_to_2_tb();
reg A, s;
wire y0, y1;
demux_1_to_2 dut(.A(A),.s(s), .y0(y0), .y1(y1));
initial begin
$display("A    s    y0  y1");
$monitor("%b   %b     %b   %b", A, s, y0, y1);
    s = 1'b0; A = 1'b0;
#10 s = 1'b0; A = 1'b1;
#10 s = 1'b1; A = 1'b0;
#10 s = 1'b1; A = 1'b1;
#10 $finish;
end
endmodule
