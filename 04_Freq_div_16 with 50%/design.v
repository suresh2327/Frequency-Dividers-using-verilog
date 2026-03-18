module mod16(
  input rst,clk,
  output reg  [3:0]count
);
  wire f_16;
  always@(posedge clk)begin
    if(!rst)
      count<=1'b0;
    else
      count<=count+1'b1;
  end
  assign f_16=count[3];
endmodule