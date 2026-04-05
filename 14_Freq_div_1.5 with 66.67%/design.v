module freq_div1p5(
  input wire clk,
  input wire rst,
  output wire f1p5
  
);

  reg en1, en2;
  reg [1:0] count;

  // Counter (mod-3)
  always @(posedge clk or negedge rst) begin
    if (!rst)
      count <= 2'b00;
    else if (count == 2'b10)
      count <= 2'b00;
    else
      count <= count + 1'b1;
  end

  // posedge logic
  always @(posedge clk or negedge rst) begin
    if (!rst)
      en1 <= 1'b0;
    else if (count == 2)
      en1 <= 1'b1;
    else
      en1 <= 1'b0;
  end

  // negedge logic
  always @(negedge clk or negedge rst) begin
    if (!rst)
      en2 <= 1'b0;
    else if (count == 1)
      en2 <= 1'b1;
    else
      en2 <= 1'b0;
  end

  assign f1p5 = en1 ^ en2;
  


endmodule