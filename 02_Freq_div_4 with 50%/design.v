module mod4(
  input rst,clk,
  output reg  [1:0]count
);
  wire f_4;
  always@(posedge clk)begin
    if(!rst)
      count<=1'b0;
    else
      count<=count+1'b1;
  end
  assign f_4=count[1];
endmodule