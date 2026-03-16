// Code your design here
module freq_div_3(
  input wire clk,rst,
  output wire f_3
);
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
  assign f_3=count[1];
endmodule