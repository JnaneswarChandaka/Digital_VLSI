
module mux_4_to_1_tb();
reg [1:0]s;
reg [3:0] I;
wire Y;
mux_4_to_1 dut(s,I,Y);
initial begin
$display("  s   I   Y");
$monitor("%b    %b  %b",s, I, Y);
    s = 2'b00; I = 4'b0010;
#10 s = 2'b01; I = 4'b1010;
#10 s = 2'b10; I = 4'b0100;
#10 s = 2'b11; I = 4'b0010;
#10 s = 2'b00; I = 4'b1001;
#10 s = 2'b01; I = 4'b0110;
#10 s = 2'b10; I = 4'b1010;
#10 s = 2'b11; I = 4'b1000;
#10 s = 2'b01; I = 4'b1011;
#20 $finish;
end
endmodule
