module mux_2_to_1_tb();
reg s, a, b;
wire y;
mux_2_to_1 dut(s, a, b, y);
initial begin
$display("s    a  b  y");
$monitor("%b    %b  %b  %b", s, a, b, y);
    s = 1'b0;  a = 1'b0;  b = 1'b0;
#10 s = 1'b0;  a = 1'b0;  b = 1'b0;
#10 s = 1'b1;  a = 1'b1;  b = 1'b0;
#10 s = 1'b0;  a = 1'b1;  b = 1'b0;
#10 s = 1'b1;  a = 1'b0;  b = 1'b1;
#10 s = 1'b1;  a = 1'b1;  b = 1'b1;
#10 $finish;
end
endmodule
