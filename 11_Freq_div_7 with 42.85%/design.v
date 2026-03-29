// Code your design here
module freq_div_7(
  input clk,rst,
  output f_7
);
  reg [2:0]count;
  always@(posedge clk)
    begin
      if(!rst)
        begin
          count<=3'b000;
        end
      else if(count==3'b110)
        begin
          count<=3'b000;
        end
      else
        begin
          count<=count+1'b1;
        end
    end
  assign f_7=count[2];
endmodule