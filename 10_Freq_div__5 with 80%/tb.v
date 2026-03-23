module tb;
	reg clk,rst;
    wire f_5;
  
  freq_div_5 u1(clk,rst,f_5);
  
  initial
    begin
      clk=0;
      rst=1;
      #5;
      rst=0;
    end
  always #5 clk=~clk;
  
  initial
    begin
      #10;
      rst=1;
      
      #200;
      $finish;
    end
  initial
    begin
      $dumpfile("wave.vcd");
      $dumpvars;
    end
endmodule