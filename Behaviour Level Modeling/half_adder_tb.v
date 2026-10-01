`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 21:30:28
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb(

    );
    reg a_tb,b_tb;
    wire sum_tb,carry_tb;
    
    half_adder dut(a_tb,b_tb,sum_tb,carry_tb);
    
    initial
        begin
            a_tb=0;
            b_tb=0;
        end
    initial
        begin
            $monitor("%b %b %b %b",a_tb,b_tb,sum_tb,carry_tb);
            a_tb=1'b1;
            b_tb=1'b1;
            #1;
            a_tb=1'b0;
            b_tb=1'b1;
            #1;
            a_tb=1'b1;
            b_tb=1'b0;
            #1;
            a_tb=1'b0;
            b_tb=1'b0;
            #1;
            a_tb=1'b1;
            b_tb=1'b1;
        end
endmodule
