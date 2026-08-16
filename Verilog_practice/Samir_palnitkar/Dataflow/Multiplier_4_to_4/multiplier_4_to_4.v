
// Full Adder module

module FA(A,B,Cin,Sum, Cout);
input A,B,Cin;
output Sum, Cout;
assign Sum = A ^ B ^ Cin;
assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule


// 4- bit Parallel adder module

module Parallel_adder(p, q, r, s, t);
input [3:0]p, q;
input r;
output [3:0] s;
output t;
wire [2:0]w;
FA fuad1(p[0], q[0], r,s[0],w[0]);
FA fuad2(p[1], q[1], w[0],s[1],w[1]);
FA fuad3(p[2], q[2], w[1],s[2],w[2]);
FA fuad4(p[3], q[3], w[2],s[3],t);
endmodule




module multiplier_4_to_4( P,Q,cin,S,C);
input [3:0]P,Q;
input [2:0]cin;
output [7:0] S;
output [1:0]C;
wire [3:0] d, e, f, g;
wire [2:0] h, i;
wire [3:0] pa12, pa23; 

assign pa12 = {C[0], h[2:0]};
assign pa23 = {C[1], i[2:0]};



// First parallel adder partial products
and a1(S[0], P[0],Q[0]);
and a2(d[0], P[1],Q[0]);
and a3(d[1], P[2],Q[0]);
and a4(d[2], P[3],Q[0]);

and a5(e[0],P[0],Q[1]);
and a6(e[1],P[1],Q[1]);
and a7(e[2],P[2],Q[1]);
and a8(e[3],P[3],Q[1]);


// Second parallel adder partial products

and a9 (f[0], P[0],Q[2]);
and a10(f[1], P[1],Q[2]);
and a11(f[2], P[2],Q[2]);
and a12(f[3], P[3],Q[2]);


// Third full adder partial products
and a13(g[0],P[0],Q[3]);
and a14(g[1],P[1],Q[3]);
and a15(g[2],P[2],Q[3]);
and a16(g[3],P[3],Q[3]);

// parallel adders
/*

Parallel_adder pa1({0,d[2:0]}, e,cin[0],{h[2:0], S[1]},C[0]);
Parallel_adder pa2(pa12,f,cin[1],{i[2:0], S[2]},C[1]);
Parallel_adder pa3(pa23, g, cin[2],S[6:3],S[7]);                  // Z appears at C[2] in waveform
      //        (or)
*/
Parallel_adder pa1({0,d[2:0]}, e,cin[0],{h[2:0], S[1]},C[0]);
Parallel_adder pa2(pa12,f,0,{i[2:0], S[2]},C[1]);
Parallel_adder pa3(pa23, g, 0,S[6:3],S[7]);                        // C[2] doesn't exist so onlu C[0], C[1] appear

endmodule
