// binary converted decimal to decimal conversion design

module BCD_to_bin(E, D,C,B,A,b4, b3, b2, b1,b0);
input E,D,C,B,A;
output b4,b3,b2,b1,b0;
assign b0 = A;
assign b1 = (B & ~E) |(~B & E);
assign b2 = (C & ~B)|(C & ~E)|(~C & B & E);
assign b3 = (D & ~E & ~B)|(D & ~E & ~C)|(~D & E& ~B)|(~D & E & ~C);
assign b4 = (D & E)|(B & C & E);

/*
assign b1 = B ^ E;
assign b2 = C ^(B & E);
assign b3 = D ^ E ^ (B & C);
assign b4 = E&(D |(B & C ));
*/
endmodule
