`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2026 09:44:04
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(output [3:0] sum_rp,output cout_rp,input [3:0] a_rp,input [3:0] b_rp,input cin_rp

    );
    wire w1,w2,w3;
    FA fa1(sum_rp[0],w1,a_rp[0],b_rp[0],cin_rp);
    FA fa2(sum_rp[1],w2,a_rp[1],b_rp[1],w1);
    FA fa3(sum_rp[2],w3,a_rp[2],b_rp[2],w2);
    FA fa4(sum_rp[3],cout_rp,a_rp[3],b_rp[3],w3);
endmodule
