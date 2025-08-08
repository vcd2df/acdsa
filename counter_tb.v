module test;

  reg rst = 0;
  initial begin
     $dumpfile("test.vcd");
     $dumpvars(0,test);
     # 5 rst = 1;
     # 5 $finish;
  end

  reg clk = 0;
  always #1 clk = !clk;

  wire [3:0] val;
  counter c1 (val, clk, rst);

endmodule // test
