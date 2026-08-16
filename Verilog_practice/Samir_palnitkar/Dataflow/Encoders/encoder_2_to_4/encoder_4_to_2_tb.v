
module encoder_4_to_2_tb();
reg [3:0] a;
reg en;
wire [1:0] out;
Encoder_4_to_2 dut(en,a, out);
initial begin
$display("en      a   out");
$monitor("%b     %b   %b",en, a, out);
en = 0;
    a = 4'b1000;
#10 a = 4'b0100;
#10 a = 4'b0010;
#10 en = 1'b1;
    a = 4'b1000;
#10 a = 4'b0100;
#10 a = 4'b0010;
#10 a = 4'b0001;
#20 $finish;
end
endmodule
