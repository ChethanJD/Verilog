`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2026 21:27:08
// Design Name: 
// Module Name: half_subtractor
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


module half_subtractor(input a_hs,b_hs, output reg diff_hs,borrow_hs

    );
    always @ (*)
        begin
            diff_hs=a_hs^b_hs;
            borrow_hs= ~a_hs&b_hs;
        end
endmodule
