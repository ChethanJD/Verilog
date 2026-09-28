`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2026 11:09:00
// Design Name: 
// Module Name: two_bit_comparator
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


module two_bit_comparator(input [1:0] a,b,output gt,eq,lt

    );
    wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
    not n1(w1,a[1]);
    not n2(w2,a[0]);
    not n3(w3,b[1]);
    not n4(w4,b[0]);
    
    and a1(w5,a[1],w3,w4);
    and a2(w6,a[1],w3);
    and a3(w7,a[1],a[0],w4);
    or o1(gt,w5,w6,w7);
    
    xnor x1(w8,a[0],b[0]);
    xnor x2(w9,a[1],b[1]);
    or o2(eq,w8,w9);
    
    and a4(w10,w1,w2,b[0]);
    and a5(w11,w2,b[1],b[0]);
    and a6(w12,w1,b[1]);
    or o3(lt,w10,w11,w12);
endmodule
