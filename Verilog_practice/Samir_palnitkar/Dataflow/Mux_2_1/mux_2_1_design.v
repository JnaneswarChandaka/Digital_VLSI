`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2026 21:40:42
// Design Name: 
// Module Name: mux_2_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// Design a 2 to 1 multiplexer using bufif0 and bufif1 qith the given delay specification
// for gates b1 and b2

//                Min     Type    Max
//    Rise        1       2       3
//    Fall        3       4       5  
//    turnoff     5       6       7

// Apply stimulus and tet the output values


module mux_2_1(in0, in1, s, out);
input in0, in1, s;
output out;
bufif1 #(1:2:3, 3:4:5, 5:6:7) b2(out, in1, s);
bufif0 #(1:2:3, 3:4:5, 5:6:7) b1(out, in0, s);

endmodule



// We get Z at s = 0, in0 = 1, in1 = 0 in the starting because turnoff delay (Typ = 6ns) takes longer than rise delay (Typ = 2ns) or fall delay (Typ = 4ns)

// We get X as changes from s = 1, in0 = 0, in1 a the value conflicts 
// when s toggles from 0 to 1 your are telling bufif0 to turn OFF and bufif1 to turn ON at the same time
// bufif1 (b2) switches ON after its Rise/ Fall propagation delay (4ns)
// bufif0 (b1) takes it turnoff delay (6ns) to completely go into high impedance (Z)

// When s = 1, in0 = 1, in1 = 0 
// Low impedance indicates that the wire ha strong, active driver attached to it, as opposedto a floating wore.
// when s = 1, gate b2 is firmly enabled, directly connection the in1 value to the output
// Because a tri-state gate iss actively driving a valid logic state, the output pin transitions out of its
// high impedance state adn into a ;ow impedance dtiven state. The line is no longer floating.
