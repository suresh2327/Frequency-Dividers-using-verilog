module tb_freq_div1p5;

  reg clk;
  reg rst;
  wire f1p5;

  // Instantiate DUT
  freq_div1p5 dut (
    .clk(clk),
    .rst(rst),
    .f1p5(f1p5)
  );

  // Clock generation (10ns period → 100 MHz)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Stimulus
  initial begin
    $dumpfile("freq_div1p5.vcd");
    $dumpvars(0, tb_freq_div1p5);

    // Apply reset
    rst = 0;
    #12;
    rst = 1;

    // Run simulation
    #200;

    $finish;
  end

  // Monitor signals
  initial begin
    $monitor("Time=%0t | clk=%b rst=%b count=%0d en1=%b en2=%b f1p5=%b",
              $time, clk, rst, dut.count, dut.en1, dut.en2, f1p5);
  end

endmodule