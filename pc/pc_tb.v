module test;
   wire [15:0] out;
   reg [15:0] in = 0;
   reg clk = 0;
   reg incr = 0;
   reg load = 0; 
   reg reset = 0;
   reg  [15:0] t = 0;

   always @(negedge clk)
     t <= t+ 1;

  initial begin
      # 0 in =      0; 
      # 0 reset = 1; 
      # 0 load = 0; 
      # 0 incr = 0; 

      # 1 clk = !clk; 
      # 0 in =      0; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 0; 
      // out =      0

      # 1 clk = !clk; 
      # 0 in =      0; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 0; 
      // out =      0

      # 1 clk = !clk; 
      # 0 in =      0; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out =      0

      # 1 clk = !clk; 
      # 0 in =      0; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out =      1

      # 1 clk = !clk; 
      # 0 in = -32123; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out =      1

      # 1 clk = !clk; 
      # 0 in = -32123; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out =      2

      # 1 clk = !clk; 
      # 0 in = -32123; 
      # 0 reset = 0; 
      # 0 load = 1; 
      # 0 incr = 1; 
      // out =      2

      # 1 clk = !clk; 
      # 0 in = -32123; 
      # 0 reset = 0; 
      # 0 load = 1; 
      # 0 incr = 1; 
      // out = -32123

      # 1 clk = !clk; 
      # 0 in = -32123; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out = -32123

      # 1 clk = !clk; 
      # 0 in = -32123; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out = -32122

      # 1 clk = !clk; 
      # 0 in = -32123; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out = -32122

      # 1 clk = !clk; 
      # 0 in = -32123; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out = -32121

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 0; 
      # 0 load = 1; 
      # 0 incr = 0; 
      // out = -32121

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 0; 
      # 0 load = 1; 
      # 0 incr = 0; 
      // out =  12345

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 1; 
      # 0 load = 1; 
      # 0 incr = 0; 
      // out =  12345

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 1; 
      # 0 load = 1; 
      # 0 incr = 0; 
      // out =      0

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 0; 
      # 0 load = 1; 
      # 0 incr = 1; 
      // out =      0

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 0; 
      # 0 load = 1; 
      # 0 incr = 1; 
      // out =  12345

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 1; 
      # 0 load = 1; 
      # 0 incr = 1; 
      // out =  12345

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 1; 
      # 0 load = 1; 
      # 0 incr = 1; 
      // out =      0

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out =      0

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out =      1

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 1; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out =      1

      # 1 clk = !clk; 
      # 0 in =  12345; 
      # 0 reset = 1; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out =      0

      # 1 clk = !clk; 
      # 0 in =      0; 
      # 0 reset = 0; 
      # 0 load = 1; 
      # 0 incr = 1; 
      // out =      0

      # 1 clk = !clk; 
      # 0 in =      0; 
      # 0 reset = 0; 
      # 0 load = 1; 
      # 0 incr = 1; 
      // out =      0

      # 1 clk = !clk; 
      # 0 in =      0; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out =      0

      # 1 clk = !clk; 
      # 0 in =      0; 
      # 0 reset = 0; 
      # 0 load = 0; 
      # 0 incr = 1; 
      // out =      1

      # 1 clk = !clk; 
      # 0 in =  22222; 
      # 0 reset = 1; 
      # 0 load = 0; 
      # 0 incr = 0; 
      // out =      1

      # 1 clk = !clk; 
      # 0 in =  22222; 
      # 0 reset = 1; 
      # 0 load = 0; 
      # 0 incr = 0; 
      // out =      0

     // finish
     # 1 $finish;
  end

  pc pc(out, in, clk, incr, load, reset);

  initial
     $monitor("t = %d, in = %d, clk = %b, incr = %b, load = %b, reset = %b, out = %d",
              t, in, clk, incr, load, reset, out);
endmodule // test