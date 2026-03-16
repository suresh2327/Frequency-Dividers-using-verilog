module mod2(
  input rst,clk,
  output reg  count
);
  wire f_2;
  always@(posedge clk)begin
    if(!rst)
      count<=1'b0;
    else
      count<=count+1'b1;
  end
  assign f_2=count;
endmodule