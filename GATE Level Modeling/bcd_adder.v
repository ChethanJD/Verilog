`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2026 10:08:39
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(output [3:0] sum_bcd,output cout_bcd,input [3:0] a_bcd,input [3:0] b_bcd,input cin_bcd

    );
    wire [3:0] sum_temp;
    wire cout_temp;
    wire a_1,a_2,a_3,o_1;
    wire [3:0] b_rca_2;
    ripple_carry_adder rca1(sum_temp,cout_temp,a_bcd,b_bcd,cin_bcd);
    and a1(a_1,sum_temp[3],sum_temp[2]);
    and a2(a_2,sum_temp[3],sum_temp[1]);
    or o1(o_1,cout_temp,a_1,a_2);
    assign b_rca_2[0]=1'b0;
    assign b_rca_2[1]=o_1;
    assign b_rca_2[2]=o_1;
    assign b_rca_2[3]=1'b0;
    ripple_carry_adder rca2(sum_bcd,cout_bcd,sum_temp,b_rca_2,1'b0);
endmodule
