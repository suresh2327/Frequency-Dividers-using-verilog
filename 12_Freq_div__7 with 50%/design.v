module freq_div_7(
  input  clk,
  input  rst,
  output f_7
);

reg [2:0] count;
reg en1, en2;

always @(posedge clk)
begin
  if(!rst)
      count <= 3'b000;
  else if(count == 3'b110)   // 6
      count <= 3'b000;
  else
      count <= count + 1'b1;
end

// posedge enable
always @(posedge clk)
begin
  if(count==0||count==1||count==2)
      en1 <= 1'b1;
  else
      en1 <= 1'b0;
end

// negedge enable
always @(negedge clk)
begin
  if(count==0||count==1||count==2)
      en2 <= 1'b1;
  else
      en2 <= 1'b0;
end

assign f_7 = en1 | en2;

endmodule