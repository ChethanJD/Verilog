`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2026 21:37:03
// Design Name: 
// Module Name: FA
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


module FA(s_fa,c_fa,a_fa,b_fa,cin_fa

    );
    output s_fa,c_fa;
    input a_fa,b_fa,cin_fa;
    wire w1,w2,w3;
    HA h1(w1,w2,a_fa,b_fa);
    HA h2(s_fa,w3,w1,cin_fa);
    and a1(c_fa,w2,w3);
endmodule
