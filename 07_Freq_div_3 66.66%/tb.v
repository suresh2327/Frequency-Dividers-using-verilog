// Code your testbench here
// or browse Examples
module tb;
  reg clk,rst;
  wire f_3;
  
  freq_div_3 u1(clk,rst,f_3);
  
  initial
    begin
      clk=0;
      rst=0;
    end
  
  always #5 clk=~clk;
  
  initial
    begin
      #10;
      rst=1;
      #100;
      $finish;
    end
  initial
    begin
      $dumpfile("wave.vcd");
      $dumpvars;
    end
endmodule