// Time Unit = 1 ns		(#10 means 10 ns)
// Simulation Precision = 100 ps
`timescale 1ns/100ps 

// Filename:    tb_adder_32_bit.v
// Author:      Michael Feneley
// Date:        15 January 2017
// Version:     1
// Description: This file contains a test bench for the 32 bit adder.


module tb_adder_32_bit();          
  wire clk;
  reg en;
  reg reset; 
  reg [31:0] op1;
  reg [31:0] op2;
  wire [31:0] out;

  clock sys_clock(clk);
  adder_32_bit adder(clk, en, reset, op1, op2, out);
// Test input waveform - defined as an initial block (procedure)
  initial begin
    reset = 0;
    en = 0;

    op1 = 0;
    op2 = 4;
     
    #5;
    reset = 1;
    #5;
    reset = 0;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
    #5;
    op1 = op1 + 4;
   
  end

endmodule