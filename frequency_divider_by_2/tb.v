module tb;
  reg in,clk,rst;
  wire q;
  freqby2 u1(in,clk,rst,q);
 initial clk=0;
  always #5 clk=~clk;
 initial begin
   rst=1;#5;
   rst=0;#5;
   in=0;#5;
   in=1;
  
 end
  initial begin
     $monitor("time =%0t in=%0b clk=%0b rst=%0b q=%0b  ",$time ,in,clk,rst,q);
    #80; $finish;
  end
endmodule
