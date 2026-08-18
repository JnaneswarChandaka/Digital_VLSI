
module bin_to_7_seg(A,B,C,D,a,b,c,d,e,f,g);
input A,B,C,D;
output a, b, c, d, e, f, g;
assign a =  (~B & ~D) | C | A | (B&D);
assign b = ~B | (~C^D);
assign c = B| ~C | D;
assign d = (~B& ~D) | A |(B & ~C & D)| (C & D)| (C & ~B);
assign e = (c & ~D) | (~B & ~D);
assign f = A |(~C & ~D) | (B & ~C)| (B & ~D);
assign g = (B&~D) |(B^C)| A;
endmodule
