

module multiplier_4_to_4_tb();
reg [3:0]P,Q;
reg [2:0]cin;
wire [7:0] S;
wire [1:0]C;
multiplier_4_to_4 DUT(P,Q,cin,S,C);
initial begin
$display("P         Q      cin           S          C");
$monitor("%b    %b     %b        %b      %b",P,Q, cin, S,C);
      P = 4'b0000;     Q = 4'b0000;     cin = 3'b000;
#20   P = 4'b0110;     Q = 4'b1110;     cin = 3'b000;
#20   P = 4'b0011;     Q = 4'b1010;     cin = 3'b000;
#20   P = 4'b1100;     Q = 4'b0100;     cin = 3'b000;
#20   P = 4'b1100;     Q = 4'b0101;     cin = 3'b000;
#20   P = 4'b1111;     Q = 4'b1111;     cin = 3'b000;
#20   P = 4'b1111;     Q = 4'b0000;     cin = 3'b000;
#30 $finish;
end
endmodule
