
module bin_to_7_seg_tb();
reg A,B,C,D;
wire a,b,c,d,e,f,g;
bin_to_7_seg dut(A,B,C,D,a, b, c, d,e,f, g);
initial begin
$display("A   B   C   D  |   a  b  c  d  e  f  g");
$monitor("%b   %b   %b   %b  |   %b  %b  %b  %b  %b  %b  %b",A,B,C,D,a, b, c, d,e,f, g);
    A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
#10 A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
#10 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;
#10 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1;
#10 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0;
#10 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1;
#10 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0;
#10 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1;
#10 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0;
#10 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1;

#20 $finish;
end
