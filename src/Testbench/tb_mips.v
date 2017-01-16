// Time Unit = 1 ns		(#10 means 10 ns)
// Simulation Precision = 100 ps
`timescale 1ns/100ps 

// Filename:    tb_adder_32_bit.v
// Author:      Michael Feneley
// Date:        15 January 2017
// Version:     1
// Description: This file contains a test bench for the 32 bit adder.


module tb_mips();     

  wire clk;
  reg reset;
  wire en;
  wire [31:0] next_address;
  wire [31:0] pc_address;

  wire data_op; 
  wire [31:0] data_addr;
  wire [31:0] write_val;
  wire [31:0] instruct_val; 
  wire [31:0] read_val;

  mips cpu(clk, reset, en, pc_address, next_address, data_op, data_addr, write_val, instruct_val, read_val);	
//  mips cpu(clk, reset, en, pc_address, next_address, data_op, data_addr, write_val, instruct_val, read_val);	
 
  initial begin
    reset = 0;
    #10;
    reset = 1;  end  


endmodule