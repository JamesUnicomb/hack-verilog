module test;

  reg clk = 0;
  reg [15:0] x = 17;
  reg [15:0] y = 6;
  reg zx = 0;
  reg nx = 0;
  reg zy = 0;
  reg ny = 0;
  reg f = 0;
  reg no = 0;
  wire zr;
  wire ng;
  wire [15:0] out;

  initial begin
     // 0
     # 0 clk = !clk;
     # 0 zx = 1;
     # 0 nx = 0;
     # 0 zy = 1;
     # 0 ny = 0;
     # 0 f = 1;
     # 0 no = 0;

     // 1
     # 1 clk = !clk;
     # 0 zx = 1;
     # 0 nx = 1;
     # 0 zy = 1;
     # 0 ny = 1;
     # 0 f = 1;
     # 0 no = 1;

     // -1
     # 1 clk = !clk;
     # 0 zx = 1;
     # 0 nx = 1;
     # 0 zy = 1;
     # 0 ny = 0;
     # 0 f = 1;
     # 0 no = 0;

     // x
     # 1 clk = !clk;
     # 0 zx = 0;
     # 0 nx = 0;
     # 0 zy = 1;
     # 0 ny = 1;
     # 0 f = 0;
     # 0 no = 0;

     // y
     # 1 clk = !clk;
     # 0 zx = 1;
     # 0 nx = 1;
     # 0 zy = 0;
     # 0 ny = 0;
     # 0 f = 0;
     # 0 no = 0;

     // !x
     # 1 clk = !clk;
     # 0 zx = 0;
     # 0 nx = 0;
     # 0 zy = 1;
     # 0 ny = 1;
     # 0 f = 0;
     # 0 no = 1;

     // !y
     # 1 clk = !clk;
     # 0 zx = 1;
     # 0 nx = 1;
     # 0 zy = 0;
     # 0 ny = 0;
     # 0 f = 0;
     # 0 no = 1;

     // -x
     # 1 clk = !clk;
     # 0 zx = 0;
     # 0 nx = 0;
     # 0 zy = 1;
     # 0 ny = 1;
     # 0 f = 1;
     # 0 no = 1;

     // -y
     # 1 clk = !clk;
     # 0 zx = 1;
     # 0 nx = 1;
     # 0 zy = 0;
     # 0 ny = 0;
     # 0 f = 1;
     # 0 no = 1;

     // x+1
     # 1 clk = !clk;
     # 0 zx = 0;
     # 0 nx = 1;
     # 0 zy = 1;
     # 0 ny = 1;
     # 0 f = 1;
     # 0 no = 1;

     // y+1
     # 1 clk = !clk;
     # 0 zx = 1;
     # 0 nx = 1;
     # 0 zy = 0;
     # 0 ny = 1;
     # 0 f = 1;
     # 0 no = 1;

     // x-1
     # 1 clk = !clk;
     # 0 zx = 0;
     # 0 nx = 0;
     # 0 zy = 1;
     # 0 ny = 1;
     # 0 f = 1;
     # 0 no = 0;

     // y-1
     # 1 clk = !clk;
     # 0 zx = 1;
     # 0 nx = 1;
     # 0 zy = 0;
     # 0 ny = 0;
     # 0 f = 1;
     # 0 no = 0;

     // x+y
     # 1 clk = !clk;
     # 0 zx = 0;
     # 0 nx = 0;
     # 0 zy = 0;
     # 0 ny = 0;
     # 0 f = 1;
     # 0 no = 0;

     // x-y
     # 1 clk = !clk;
     # 0 zx = 0;
     # 0 nx = 1;
     # 0 zy = 0;
     # 0 ny = 0;
     # 0 f = 1;
     # 0 no = 1;

     // y-x
     # 1 clk = !clk;
     # 0 zx = 0;
     # 0 nx = 0;
     # 0 zy = 0;
     # 0 ny = 1;
     # 0 f = 1;
     # 0 no = 1;

     // x&y
     # 1 clk = !clk;
     # 0 zx = 0;
     # 0 nx = 0;
     # 0 zy = 0;
     # 0 ny = 0;
     # 0 f = 0;
     # 0 no = 0;

     // x|y
     # 1 clk = !clk;
     # 0 zx = 0;
     # 0 nx = 1;
     # 0 zy = 0;
     # 0 ny = 1;
     # 0 f = 0;
     # 0 no = 1;

     // finish
     # 1 $finish;
  end

  alu alu(x, y, zx, nx, zy, ny, f, no, zr, ng, out);

  initial
     $monitor("At time %t, x = %b, y = %b, zx = %b, nx = %b, zy = %b, ny = %b, f = %b, no = %b, zr = %b, ng = %b, out = %b",
              $time, x, y, zx, nx, zy, ny, f, no, zr, ng, out);
endmodule // test