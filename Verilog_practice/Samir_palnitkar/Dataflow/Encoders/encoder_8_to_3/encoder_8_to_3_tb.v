module encode_8_to_3_tb();
reg en;
reg [7:0] a;
wire [2:0] out;
encode_8_to_3 dut(en, a, out);
initial begin
$display("en    a       out");
$monitor("%b    %b      %b ", en, a, out);
en = 1'b0;
    a = 8'b10000000;
#10 a = 8'b01000000;
#10 a = 8'b01000000;
#10 a = 8'b01000000;
#10 a = 8'b01000000;
en = 1'b1;
#10 a = 8'b10000000;
#10 a = 8'b01000000;
#10 a = 8'b00100000;
#10 a = 8'b00010000;
#10 a = 8'b00001000;
#10 a = 8'b00000100;
#10 a = 8'b00000010;
#10 a = 8'b00000001;
#20 $finish;
end
endmodule
