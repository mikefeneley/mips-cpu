`timescale 1ns/100ps 

// Filename:    clock.v
// Author:      Michael Feneley
// Date:        14 January 2016
// Version:     1
// Description: Periodic clock signal.

module mips(clk, reset, en, pc_address, next_address,    data_op, data_addr, write_val, instruct_val, read_val);	
       	
  output wire clk;  // Clock signal
  
  input wire reset;
  output wire en;
  output wire [31:0] next_address;
  output wire [31:0] pc_address;

  clock sysclock(clk);
  program_counter pc(clk, reset, next_address, pc_address, next_address);

  output wire [31:0] instruct_val;
  output wire [31:0] read_val;
  
  output wire [31:0] data_addr;
  output wire [31:0] write_val;

  assign data_addr = next_address + 1;
  assign write_val = data_addr + 4;
   
  output reg data_op = 0;

  memory ram(clk, reset, data_op, pc_address, data_addr, write_val, instruct_val, read_val);



endmodule
