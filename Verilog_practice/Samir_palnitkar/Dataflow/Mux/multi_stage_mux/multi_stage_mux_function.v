

// 4:1 mux module
module mux_4_to_1(s, a,b,c,d, y);
input [1:0]s;
input a,b,c,d;
output reg y;
always@(*) begin
case(s)
2'b00: y = a;
2'b01: y = b;
2'b10: y = c;
2'b11: y = d;
default: y = 2'b00;
endcase
end
endmodule


// multi level mux function

module two_level_mux_function(A,B,C, X);
input A,B,C;
//input [7:0]I;
output X;
wire Y;
mux_4_to_1 m1({A,B},0, 1, 1, 0, Y);
mux_4_to_1 m2({Y,C},0, 1, 1, 0, X);
endmodule
