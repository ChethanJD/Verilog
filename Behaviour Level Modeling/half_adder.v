`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 21:27:08
// Design Name: 
// Module Name: half_adder
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


module half_adder(input a_ha,b_ha, output reg sum_ha,carry_ha

    );
    always @ (*)
        begin
            sum_ha=a_ha^b_ha;
            carry_ha= a_ha&b_ha;
        end
endmodule
