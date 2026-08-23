

module priority_encoder_tb();
reg [7:0]D;
wire A,B,C;
priority_encoder dut(D, A,B,C);
initial begin
    $display("      D          A   B  C");
    $monitor("%b        %b  %b  %b",D,A,B,C);
//    D = 8'b10000000;
//#10 D = 8'bx1000000;
//#10 D = 8'bxx100000;
//#10 D = 8'bxxx10000;
//#10 D = 8'bxxxx1000;
//#10 D = 8'bxxxxx100;
//#10 D = 8'bxxxxxx10;
//#10 D = 8'bxxxxxxx1;
    D = 8'b10000000;
#10 D = 8'b11000000;
#10 D = 8'b10100000;
#10 D = 8'b10110000;
#10 D = 8'b01101000;
#10 D = 8'b00100100;
#10 D = 8'b10010010;
#10 D = 8'b01110101;
#10 $finish;
end
endmodule
