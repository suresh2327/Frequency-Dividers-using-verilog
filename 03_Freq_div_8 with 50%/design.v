module mod8(
  input rst,clk,
  output reg  [2:0]count
);
  wire f_8;
  always@(posedge clk)begin
    if(!rst)
      count<=1'b0;
    else
      count<=count+1'b1;
  end
  assign f_8=count[2];
endmodule