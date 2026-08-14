`timescale 1ns / 1ps
module parity_generator(a, b, c, Ev_pa,Od_pa);
input a, b, c;
output Ev_pa, Od_pa;
assign Ev_pa = b ^ (a ^ c);
assign Od_pa = (b ^ (~(a ^ c)));
endmodule
