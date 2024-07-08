module register(
  clk, 
  write, 
  in, 
  out
);

  input               clk;
  input             write;
  input      [15:0]    in;
  output reg [15:0]   out = 16'b0000000000000000;
  
  always @(negedge clk)
  begin
      if(write)
          out <= in;
  end

endmodule