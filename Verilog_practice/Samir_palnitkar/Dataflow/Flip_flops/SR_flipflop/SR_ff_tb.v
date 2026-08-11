module Flip_flop_stim_tb();
reg Clk, s, r;
wire q, qbar;

SR_flipflop dut(.clk(Clk), .S(s), .R(r), .Q(q), .Qbar(qbar));
always #10 Clk = ~Clk;
initial begin
$monitor("Time = %d, clk = %b, S = %b, R = %b, Q = %b, Qbar = %b", $time, Clk, s, r, q, qbar );
Clk = 0;
#20 {s,r} = 2'b00;
#20 {s,r} = 2'b01;
#20 {s,r} = 2'b10;
#20 {s,r} = 2'b11;
#20 {s,r} = 2'b00;
#20 {s,r} = 2'b10;
#20 $finish;
end
endmodule
