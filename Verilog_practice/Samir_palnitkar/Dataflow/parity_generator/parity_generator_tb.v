// parity generator simultion testbench

module parity_generator_tb();
reg a, b, c;
wire Ev_pa, Od_pa;
parity_generator dut(a, b, c, Ev_pa, Od_pa);

initial begin
$monitor("A = %b, B = %b, C = %b, Even_parity = %b, odd_parity = %b", a, b, c, Ev_pa, Od_pa);
{a, b, c} = 3'b000;
#10 {a, b, c} = 3'b001;
#10 {a, b, c} = 3'b010;
#10 {a, b, c} = 3'b011;
#10 {a, b, c} = 3'b100;
#10 {a, b, c} = 3'b101;
#10 {a, b, c} = 3'b110;
#10 {a, b, c} = 3'b111;
#10 {a, b, c} = 3'b001;
#10 {a, b, c} = 3'b101;
#10 {a, b, c} = 3'b100;
#10 {a, b, c} = 3'b000;
#10 {a, b, c} = 3'b011;
#10 {a, b, c} = 3'b001;
#20 $finish;
end
endmodule
