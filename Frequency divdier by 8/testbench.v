// Code your testbench here
// or browse Examples
module tb;
  reg rst,clk;
  wire [2:0]count;
  
  mod8 u1(rst,clk,count);
  
  initial
    begin
      rst=0;
      clk=1;
    end
  
  always #5 clk=~clk;
  
  initial
    begin
      #10;
      rst=1;
      #500;
      $finish;
    end
  
  initial
    begin 
      $dumpfile("wave.vcd");
      $dumpvars;
    end
  
endmodule