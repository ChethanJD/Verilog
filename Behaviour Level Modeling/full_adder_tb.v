`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2026 22:44:38
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb(

    );
    reg a_tb,b_tb,cin_tb;
    wire sum_tb,carry_tb;
    
    full_adder dut(a_tb,b_tb,cin_tb,sum_tb,carry_tb);
    initial 
        begin
            a_tb=0;
            b_tb=0;
            cin_tb=0;
        end
    initial
        begin
            $monitor ("%b %b %b %b %b",a_tb,b_tb,cin_tb,sum_tb,carry_tb);
            
            a_tb=1'b1;
            b_tb=1'b1;
            cin_tb=1'b1;
            #1;
            a_tb=1'b0;
            b_tb=1'b1;
            cin_tb=1'b1;
            #1;
            a_tb=1'b1;
            b_tb=1'b0;
            cin_tb=1'b1;
            #1;
            a_tb=1'b1;
            b_tb=1'b0;
            cin_tb=1'b0;
            #1;
            a_tb=1'b0;
            b_tb=1'b1;
            cin_tb=1'b0;
            #1;
            a_tb=1'b0;
            b_tb=1'b1;
            cin_tb=1'b0;
        end
endmodule
