// Design code for Priority encoder

module priority_encoder(D,A,B,C);
input [7:0]D;
output reg A,B,C;
always@(*) begin
casex(D)
8'b10000000: begin A = 1'b0; B = 1'b0; C = 1'b0; end 
8'bx1000000: begin A = 1'b0; B = 1'b0; C = 1'b1; end 
8'bxx100000: begin A = 1'b0; B = 1'b1; C = 1'b0; end 
8'bxxx10000: begin A = 1'b0; B = 1'b1; C = 1'b1; end 
8'bxxxx1000: begin A = 1'b1; B = 1'b0; C = 1'b0; end 
8'bxxxxx100: begin A = 1'b1; B = 1'b0; C = 1'b1; end 
8'bxxxxxx10: begin A = 1'b1; B = 1'b1; C = 1'b0; end 
8'bxxxxxxx1: begin A = 1'b1; B = 1'b1; C = 1'b1; end 
default: begin  A = 1'bz; B = 1'bz; C = 1'bz; end
endcase
end
endmodule
