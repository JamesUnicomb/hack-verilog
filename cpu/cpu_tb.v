module test;

  reg                 clk = 0;
  reg  [15:0]           t = 0;
  reg  [15:0]         inM = 0;
  reg  [15:0] instruction = 16'b0000000000000000;
  reg               reset = 0;
  wire [15:0]        outM;
  wire             writeM;
  wire [15:0]    addressM;
  wire [15:0]      pcaddr;

  always @(negedge clk)
    t <= t + 1;

  cpu cpu(clk, inM, instruction, reset, outM, writeM, addressM, pcaddr);

  initial begin
    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b0011000000111001; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b0011000000111001; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b1110110000010000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b1110110000010000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b0101101110100000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b0101101110100000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b1110000111110000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b1110000111110000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b0000001111101011; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b0000001111101011; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b1110001100001000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b1110001100001000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b0000001111101100; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b0000001111101100; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b1110001110011000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b1110001110011000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b0000001111101000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM =     0; 
    # 0 instruction = 16'b0000001111101000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1111010011110000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1111010011110000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0000000000001110; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0000000000001110; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000100; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000100; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0000001111100111; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0000001111100111; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1111110111100000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1111110111100000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100101000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100101000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0000000000010101; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0000000000010101; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110011111000010; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110011111000010; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0000000000000010; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0000000000000010; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110000010111000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110000010111000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1111110111001000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1111110111001000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1111110010101000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1111110010101000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0000001111101000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0000001111101000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110111010010000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110111010010000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000001; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000001; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000010; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000010; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000011; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000011; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000100; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000100; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000101; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000101; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000110; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000110; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000111; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000111; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110101010010000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110101010010000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000001; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000001; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000010; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000010; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000011; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000011; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000100; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000100; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000101; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000101; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000110; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000110; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000111; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000111; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110111111010000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110111111010000; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000001; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000001; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000010; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000010; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000011; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000011; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000100; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000100; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000101; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000101; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000110; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000110; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000111; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000111; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000111; 
    # 0 reset =   1;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b1110001100000111; 
    # 0 reset =   1;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0111111111111111; 
    # 0 reset =   0;

    # 1 clk = !clk; 
    # 0 inM = 11111; 
    # 0 instruction = 16'b0111111111111111; 
    # 0 reset =   0;

     // finish
     # 1 $finish;
end

  initial
     $monitor("t = %d, instruction = %b, clk = %b, outM = %b, writeM = %b, addressM = %b, pcaddr = %b",
              t, instruction, clk, outM, writeM, addressM, pcaddr);
endmodule