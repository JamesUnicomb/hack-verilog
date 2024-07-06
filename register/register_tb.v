module test;

  reg clk   = 1;
  reg write = 0;
  reg  [15:0] t = 0;
  reg  [15:0] in;
  wire [15:0] out;

  always @(negedge clk)
     t <= t+ 1;

  initial begin
      // time 1   
      # 1 clk = !clk;  
      # 0 in =      0; 
      # 0 write =   0; 

      // time 1+  
      # 1 clk = !clk;  
      # 0 in =      0; 
      # 0 write =   1; 

      // time 2   
      # 1 clk = !clk;  
      # 0 in =      0; 
      # 0 write =   1; 

      // time 2+  
      # 1 clk = !clk;  
      # 0 in = -32123; 
      # 0 write =   0; 

      // time 3   
      # 1 clk = !clk;  
      # 0 in = -32123; 
      # 0 write =   0; 

      // time 3+  
      # 1 clk = !clk;  
      # 0 in =  11111; 
      # 0 write =   0; 

      // time 4   
      # 1 clk = !clk;  
      # 0 in =  11111; 
      # 0 write =   0; 

      // time 4+  
      # 1 clk = !clk;  
      # 0 in = -32123; 
      # 0 write =   1; 

      // time 5   
      # 1 clk = !clk;  
      # 0 in = -32123; 
      # 0 write =   1; 

      // time 5+  
      # 1 clk = !clk;  
      # 0 in = -32123; 
      # 0 write =   1; 

      // time 6   
      # 1 clk = !clk;  
      # 0 in = -32123; 
      # 0 write =   1; 

      // time 6+  
      # 1 clk = !clk;  
      # 0 in = -32123; 
      # 0 write =   0; 

      // time 7   
      # 1 clk = !clk;  
      # 0 in = -32123; 
      # 0 write =   0; 

      // time 7+  
      # 1 clk = !clk;  
      # 0 in =  12345; 
      # 0 write =   1; 

      // time 8   
      # 1 clk = !clk;  
      # 0 in =  12345; 
      # 0 write =   1; 

      // time 8+  
      # 1 clk = !clk;  
      # 0 in =      0; 
      # 0 write =   0; 

      // time 9   
      # 1 clk = !clk;  
      # 0 in =      0; 
      # 0 write =   0; 

      // time 9+  
      # 1 clk = !clk;  
      # 0 in =      0; 
      # 0 write =   1; 

      // time 10  
      # 1 clk = !clk;  
      # 0 in =      0; 
      # 0 write =   1; 

      // time 10+ 
      # 1 clk = !clk;  
      # 0 in =      1; 
      # 0 write =   0; 

      // time 11  
      # 1 clk = !clk;  
      # 0 in =      1; 
      # 0 write =   0; 

      // time 11+ 
      # 1 clk = !clk;  
      # 0 in =      1; 
      # 0 write =   1; 

      // time 12  
      # 1 clk = !clk;  
      # 0 in =      1; 
      # 0 write =   1; 

      // time 12+ 
      # 1 clk = !clk;  
      # 0 in =      2; 
      # 0 write =   0; 

      // time 13  
      # 1 clk = !clk;  
      # 0 in =      2; 
      # 0 write =   0; 

      // time 13+ 
      # 1 clk = !clk;  
      # 0 in =      2; 
      # 0 write =   1; 

      // time 14  
      # 1 clk = !clk;  
      # 0 in =      2; 
      # 0 write =   1; 

      // time 14+ 
      # 1 clk = !clk;  
      # 0 in =      4; 
      # 0 write =   0; 

      // time 15  
      # 1 clk = !clk;  
      # 0 in =      4; 
      # 0 write =   0; 

      // time 15+ 
      # 1 clk = !clk;  
      # 0 in =      4; 
      # 0 write =   1; 

      // time 16  
      # 1 clk = !clk;  
      # 0 in =      4; 
      # 0 write =   1; 

      // time 16+ 
      # 1 clk = !clk;  
      # 0 in =      8; 
      # 0 write =   0; 

      // time 17  
      # 1 clk = !clk;  
      # 0 in =      8; 
      # 0 write =   0; 

      // time 17+ 
      # 1 clk = !clk;  
      # 0 in =      8; 
      # 0 write =   1; 

      // time 18  
      # 1 clk = !clk;  
      # 0 in =      8; 
      # 0 write =   1; 

      // time 18+ 
      # 1 clk = !clk;  
      # 0 in =     16; 
      # 0 write =   0; 

      // time 19  
      # 1 clk = !clk;  
      # 0 in =     16; 
      # 0 write =   0; 

      // time 19+ 
      # 1 clk = !clk;  
      # 0 in =     16; 
      # 0 write =   1; 

      // time 20  
      # 1 clk = !clk;  
      # 0 in =     16; 
      # 0 write =   1; 

      // time 20+ 
      # 1 clk = !clk;  
      # 0 in =     32; 
      # 0 write =   0; 

      // time 21  
      # 1 clk = !clk;  
      # 0 in =     32; 
      # 0 write =   0; 

      // time 21+ 
      # 1 clk = !clk;  
      # 0 in =     32; 
      # 0 write =   1; 

      // time 22  
      # 1 clk = !clk;  
      # 0 in =     32; 
      # 0 write =   1; 

      // time 22+ 
      # 1 clk = !clk;  
      # 0 in =     64; 
      # 0 write =   0; 

      // time 23  
      # 1 clk = !clk;  
      # 0 in =     64; 
      # 0 write =   0; 

      // time 23+ 
      # 1 clk = !clk;  
      # 0 in =     64; 
      # 0 write =   1; 

      // time 24  
      # 1 clk = !clk;  
      # 0 in =     64; 
      # 0 write =   1; 

      // time 24+ 
      # 1 clk = !clk;  
      # 0 in =    128; 
      # 0 write =   0; 

      // time 25  
      # 1 clk = !clk;  
      # 0 in =    128; 
      # 0 write =   0; 

      // time 25+ 
      # 1 clk = !clk;  
      # 0 in =    128; 
      # 0 write =   1; 

      // time 26  
      # 1 clk = !clk;  
      # 0 in =    128; 
      # 0 write =   1; 

      // time 26+ 
      # 1 clk = !clk;  
      # 0 in =    256; 
      # 0 write =   0; 

      // time 27  
      # 1 clk = !clk;  
      # 0 in =    256; 
      # 0 write =   0; 

      // time 27+ 
      # 1 clk = !clk;  
      # 0 in =    256; 
      # 0 write =   1; 

      // time 28  
      # 1 clk = !clk;  
      # 0 in =    256; 
      # 0 write =   1; 

      // time 28+ 
      # 1 clk = !clk;  
      # 0 in =    512; 
      # 0 write =   0; 

      // time 29  
      # 1 clk = !clk;  
      # 0 in =    512; 
      # 0 write =   0; 

      // time 29+ 
      # 1 clk = !clk;  
      # 0 in =    512; 
      # 0 write =   1; 

      // time 30  
      # 1 clk = !clk;  
      # 0 in =    512; 
      # 0 write =   1; 

      // time 30+ 
      # 1 clk = !clk;  
      # 0 in =   1024; 
      # 0 write =   0; 

      // time 31  
      # 1 clk = !clk;  
      # 0 in =   1024; 
      # 0 write =   0; 

      // time 31+ 
      # 1 clk = !clk;  
      # 0 in =   1024; 
      # 0 write =   1; 

      // time 32  
      # 1 clk = !clk;  
      # 0 in =   1024; 
      # 0 write =   1; 

      // time 32+ 
      # 1 clk = !clk;  
      # 0 in =   2048; 
      # 0 write =   0; 

      // time 33  
      # 1 clk = !clk;  
      # 0 in =   2048; 
      # 0 write =   0; 

      // time 33+ 
      # 1 clk = !clk;  
      # 0 in =   2048; 
      # 0 write =   1; 

      // time 34  
      # 1 clk = !clk;  
      # 0 in =   2048; 
      # 0 write =   1; 

      // time 34+ 
      # 1 clk = !clk;  
      # 0 in =   4096; 
      # 0 write =   0; 

      // time 35  
      # 1 clk = !clk;  
      # 0 in =   4096; 
      # 0 write =   0; 

      // time 35+ 
      # 1 clk = !clk;  
      # 0 in =   4096; 
      # 0 write =   1; 

      // time 36  
      # 1 clk = !clk;  
      # 0 in =   4096; 
      # 0 write =   1; 

      // time 36+ 
      # 1 clk = !clk;  
      # 0 in =   8192; 
      # 0 write =   0; 

      // time 37  
      # 1 clk = !clk;  
      # 0 in =   8192; 
      # 0 write =   0; 

      // time 37+ 
      # 1 clk = !clk;  
      # 0 in =   8192; 
      # 0 write =   1; 

      // time 38  
      # 1 clk = !clk;  
      # 0 in =   8192; 
      # 0 write =   1; 

      // time 38+ 
      # 1 clk = !clk;  
      # 0 in =  16384; 
      # 0 write =   0; 

      // time 39  
      # 1 clk = !clk;  
      # 0 in =  16384; 
      # 0 write =   0; 

      // time 39+ 
      # 1 clk = !clk;  
      # 0 in =  16384; 
      # 0 write =   1; 

      // time 40  
      # 1 clk = !clk;  
      # 0 in =  16384; 
      # 0 write =   1; 

      // time 40+ 
      # 1 clk = !clk;  
      # 0 in = -32768; 
      # 0 write =   0; 

      // time 41  
      # 1 clk = !clk;  
      # 0 in = -32768; 
      # 0 write =   0; 

      // time 41+ 
      # 1 clk = !clk;  
      # 0 in = -32768; 
      # 0 write =   1; 

      // time 42  
      # 1 clk = !clk;  
      # 0 in = -32768; 
      # 0 write =   1; 

      // time 42+ 
      # 1 clk = !clk;  
      # 0 in =     -2; 
      # 0 write =   0; 

      // time 43  
      # 1 clk = !clk;  
      # 0 in =     -2; 
      # 0 write =   0; 

      // time 43+ 
      # 1 clk = !clk;  
      # 0 in =     -2; 
      # 0 write =   1; 

      // time 44  
      # 1 clk = !clk;  
      # 0 in =     -2; 
      # 0 write =   1; 

      // time 44+ 
      # 1 clk = !clk;  
      # 0 in =     -3; 
      # 0 write =   0; 

      // time 45  
      # 1 clk = !clk;  
      # 0 in =     -3; 
      # 0 write =   0; 

      // time 45+ 
      # 1 clk = !clk;  
      # 0 in =     -3; 
      # 0 write =   1; 

      // time 46  
      # 1 clk = !clk;  
      # 0 in =     -3; 
      # 0 write =   1; 

      // time 46+ 
      # 1 clk = !clk;  
      # 0 in =     -5; 
      # 0 write =   0; 

      // time 47  
      # 1 clk = !clk;  
      # 0 in =     -5; 
      # 0 write =   0; 

      // time 47+ 
      # 1 clk = !clk;  
      # 0 in =     -5; 
      # 0 write =   1; 

      // time 48  
      # 1 clk = !clk;  
      # 0 in =     -5; 
      # 0 write =   1; 

      // time 48+ 
      # 1 clk = !clk;  
      # 0 in =     -9; 
      # 0 write =   0; 

      // time 49  
      # 1 clk = !clk;  
      # 0 in =     -9; 
      # 0 write =   0; 

      // time 49+ 
      # 1 clk = !clk;  
      # 0 in =     -9; 
      # 0 write =   1; 

      // time 50  
      # 1 clk = !clk;  
      # 0 in =     -9; 
      # 0 write =   1; 

      // time 50+ 
      # 1 clk = !clk;  
      # 0 in =    -17; 
      # 0 write =   0; 

      // time 51  
      # 1 clk = !clk;  
      # 0 in =    -17; 
      # 0 write =   0; 

      // time 51+ 
      # 1 clk = !clk;  
      # 0 in =    -17; 
      # 0 write =   1; 

      // time 52  
      # 1 clk = !clk;  
      # 0 in =    -17; 
      # 0 write =   1; 

      // time 52+ 
      # 1 clk = !clk;  
      # 0 in =    -33; 
      # 0 write =   0; 

      // time 53  
      # 1 clk = !clk;  
      # 0 in =    -33; 
      # 0 write =   0; 

      // time 53+ 
      # 1 clk = !clk;  
      # 0 in =    -33; 
      # 0 write =   1; 

      // time 54  
      # 1 clk = !clk;  
      # 0 in =    -33; 
      # 0 write =   1; 

      // time 54+ 
      # 1 clk = !clk;  
      # 0 in =    -65; 
      # 0 write =   0; 

      // time 55  
      # 1 clk = !clk;  
      # 0 in =    -65; 
      # 0 write =   0; 

      // time 55+ 
      # 1 clk = !clk;  
      # 0 in =    -65; 
      # 0 write =   1; 

      // time 56  
      # 1 clk = !clk;  
      # 0 in =    -65; 
      # 0 write =   1; 

      // time 56+ 
      # 1 clk = !clk;  
      # 0 in =   -129; 
      # 0 write =   0; 

      // time 57  
      # 1 clk = !clk;  
      # 0 in =   -129; 
      # 0 write =   0; 

      // time 57+ 
      # 1 clk = !clk;  
      # 0 in =   -129; 
      # 0 write =   1; 

      // time 58  
      # 1 clk = !clk;  
      # 0 in =   -129; 
      # 0 write =   1; 

      // time 58+ 
      # 1 clk = !clk;  
      # 0 in =   -257; 
      # 0 write =   0; 

      // time 59  
      # 1 clk = !clk;  
      # 0 in =   -257; 
      # 0 write =   0; 

      // time 59+ 
      # 1 clk = !clk;  
      # 0 in =   -257; 
      # 0 write =   1; 

      // time 60  
      # 1 clk = !clk;  
      # 0 in =   -257; 
      # 0 write =   1; 

      // time 60+ 
      # 1 clk = !clk;  
      # 0 in =   -513; 
      # 0 write =   0; 

      // time 61  
      # 1 clk = !clk;  
      # 0 in =   -513; 
      # 0 write =   0; 

      // time 61+ 
      # 1 clk = !clk;  
      # 0 in =   -513; 
      # 0 write =   1; 

      // time 62  
      # 1 clk = !clk;  
      # 0 in =   -513; 
      # 0 write =   1; 

      // time 62+ 
      # 1 clk = !clk;  
      # 0 in =  -1025; 
      # 0 write =   0; 

      // time 63  
      # 1 clk = !clk;  
      # 0 in =  -1025; 
      # 0 write =   0; 

      // time 63+ 
      # 1 clk = !clk;  
      # 0 in =  -1025; 
      # 0 write =   1; 

      // time 64  
      # 1 clk = !clk;  
      # 0 in =  -1025; 
      # 0 write =   1; 

      // time 64+ 
      # 1 clk = !clk;  
      # 0 in =  -2049; 
      # 0 write =   0; 

      // time 65  
      # 1 clk = !clk;  
      # 0 in =  -2049; 
      # 0 write =   0; 

      // time 65+ 
      # 1 clk = !clk;  
      # 0 in =  -2049; 
      # 0 write =   1; 

      // time 66  
      # 1 clk = !clk;  
      # 0 in =  -2049; 
      # 0 write =   1; 

      // time 66+ 
      # 1 clk = !clk;  
      # 0 in =  -4097; 
      # 0 write =   0; 

      // time 67  
      # 1 clk = !clk;  
      # 0 in =  -4097; 
      # 0 write =   0; 

      // time 67+ 
      # 1 clk = !clk;  
      # 0 in =  -4097; 
      # 0 write =   1; 

      // time 68  
      # 1 clk = !clk;  
      # 0 in =  -4097; 
      # 0 write =   1; 

      // time 68+ 
      # 1 clk = !clk;  
      # 0 in =  -8193; 
      # 0 write =   0; 

      // time 69  
      # 1 clk = !clk;  
      # 0 in =  -8193; 
      # 0 write =   0; 

      // time 69+ 
      # 1 clk = !clk;  
      # 0 in =  -8193; 
      # 0 write =   1; 

      // time 70  
      # 1 clk = !clk;  
      # 0 in =  -8193; 
      # 0 write =   1; 

      // time 70+ 
      # 1 clk = !clk;  
      # 0 in = -16385; 
      # 0 write =   0; 

      // time 71  
      # 1 clk = !clk;  
      # 0 in = -16385; 
      # 0 write =   0; 

      // time 71+ 
      # 1 clk = !clk;  
      # 0 in = -16385; 
      # 0 write =   1; 

      // time 72  
      # 1 clk = !clk;  
      # 0 in = -16385; 
      # 0 write =   1; 

      // time 72+ 
      # 1 clk = !clk;  
      # 0 in =  32767; 
      # 0 write =   0; 

      // time 73  
      # 1 clk = !clk;  
      # 0 in =  32767; 
      # 0 write =   0; 

      // time 73+ 
      # 1 clk = !clk;  
      # 0 in =  32767; 
      # 0 write =   1; 

      // time 74 
      # 1 clk = !clk;  
      # 0 in =  32767; 
      # 0 write =   1; 

      // finish
      # 1 $finish;
  end

  register register(clk, write, in, out);

  initial $monitor("t = %02d, clk %b, in = %b, write = %b, out = %b",
              t, clk, in, write, out);
endmodule // test
