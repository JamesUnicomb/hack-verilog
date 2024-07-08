module pc (
    out,
    in,
    clk,  // clock
    incr, // increment
    load,  // load 
    reset  // reset
  );
  
  output reg [15:0] out = 0;
  input [15:0] in;
  input clk;
  input incr;
  input load;
  input reset;

/**
 * A 8-bit counter with load and reset control bits.
 * if      (reset[t] == 1) out[t+1] = 0
 * else if (load[t] == 1)  out[t+1] = in[t]
 * else if (inc[t] == 1)   out[t+1] = out[t] + 1  (integer addition)
 * else                    out[t+1] = out[t]
 */
 
  // initialize register
  wire [15:0] reg_out;
  reg [15:0] reg_in = 16'b0000000000000000;
  register register(
    .clk(clk),
    .write(1'b1),
    .in(reg_in),
    .out(reg_out)
  );

  /* Combinational Logic */
  always @* begin
    if (reset)
      reg_in <= 0;
    else if (load)
      reg_in <= in;
    else if (incr)
      reg_in <= reg_out + 1;
    
    out <= reg_out;
  end
  
endmodule