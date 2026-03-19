// Code your design here
module freq_div_3(
  input wire clk,rst,
  output wire f_3
);
  reg en1,en2;
  reg [1:0] count;
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        begin
          count<=2'b00;
        end
      else if (count==2)
        count<=2'b00;
      else
        count<=count+1'b1;
    end
  
  always@(posedge clk)
    begin
      if(count==1'b0)
        en1<=1'b1;
      else
        en1<=1'b0;
    end
  
  always@(negedge clk)
    begin
      if(count==1'b0)
        en2<=1'b1;
      else
        en2<=1'b0;
    end
  assign f_3=en1|en2;
endmodule