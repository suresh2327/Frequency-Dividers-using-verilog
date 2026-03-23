// Code your design here
module freq_div_5(
  input clk,rst,
  output f_5
);
  reg [2:0]count;
  
  always@(posedge clk)
    begin
      if(!rst)
        begin
          count<=3'b111;
        end
      else if(count==3'b011)
        begin
          count<=3'b111;
        end
      else
        begin
          count<=count-1'b1;
        end
    end
  
  assign f_5=count[2];
endmodule