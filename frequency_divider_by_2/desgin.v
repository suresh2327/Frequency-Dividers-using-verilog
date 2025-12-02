// Code your design here
module freqby2(in,clk,rst,q);
  input clk,rst;
  input in;
  output reg q;
  always@(posedge clk or posedge rst) begin
    if(rst)begin
      q<=1'b0;
    end
    else if(in)
      begin
        q<=~q;
      end
      
    else 
      begin
        q<=q;
      end
  end
endmodule
