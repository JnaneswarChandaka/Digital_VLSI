// SR to JK flipflop conversion

module SR_to_JK(clk, J, K, Q, Qbar);
    input clk, J, K;
    output reg Q;
    output Qbar;
    assign Qbar = ~Q;
    wire S, R;
    assign S = J & Qbar;
    assign R = K & Q;
    always@(posedge clk) begin
    case({S, R})
    2'b00: Q <= Q;
    2'b01: Q <= 0;
    2'b10: Q <= 1;
    2'b11: Q <= ~Q;
    default: Q <= 1'b0;
    endcase
    end
endmodule





/*
module SRff(clk, rst,s, r,q, qbar);
input clk, rst, s, r;
output reg q;
output qbar;
assign qbar = ~q;
always@(posedge clk or posedge rst) begin

if(rst)
q<= 1'b0;
else begin
case({s, r})
2'b00: q<= q;
2'b01: q<= 1'b0;
2'b10: q <= 1'b1;
2'b11: q <= 1'bx;
endcase
end
end
endmodule



module sr_to_jk(Clk, Rst,j,k, Q, Qbar);
input Clk, Rst, j, k;
output  Q;
output Qbar;

wire s_ip = j & Qbar;
wire r_ip = k & Q;

SRff dut(.clk(Clk), .rst(Rst), .s(s_ip), .r(r_ip), .q(Q), .qbar(Qbar)); 
endmodule
*/
