`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2021 17:22:22
// Design Name: 
// Module Name: control_unit
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

module control_unit(instr,func,opcode,ctrl_sig);
    
    input [31:0] instr;
    input [2:0] func;
    input [6:0] opcode; 
    output reg [3:0] ctrl_sig;   
    
    always@(*)
        if( instr[31:25]==7'b0)
            case(func) 
                3'b000: ctrl_sig=4'b0001;
                3'b001: ctrl_sig=4'b0011;
                3'b010: ctrl_sig=4'b0100;
                3'b011: ctrl_sig=4'b0101;
                3'b100: ctrl_sig=4'b0110;
                3'b101: ctrl_sig=4'b0111;
                3'b110: ctrl_sig=4'b1001;
                3'b111: ctrl_sig=4'b1010;
                default:ctrl_sig=4'b0000;
             endcase
         else
            if( func==3'b000)
             ctrl_sig=4'b0010;
             else
             ctrl_sig=4'b1000;

endmodule