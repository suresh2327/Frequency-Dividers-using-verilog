// Code your design here
module freq_div_5(
  input clk,rst,
  output f_5
);
  reg [2:0]count;
  reg en1,en2;
  always@(posedge clk)
    begin
      if(!rst)
        begin
          count<=3'b000;
        end
      else if(count==3'b100)
        begin
          count<=3'b000;
        end
      else
        begin
          count<=count+1'b1;
        end
    end
  
  always@(posedge clk)
    begin
    if(count==0 || count==1)
        en1<=1'b1;
        else
          en1<=1'b0;
    end
  
  always@(negedge clk)
    begin
    if(count==0 || count==1)
        en2<=1'b1;
        else
          en2<=1'b0;
    end
      
          
  
  assign f_5=en1|en2;
endmodule