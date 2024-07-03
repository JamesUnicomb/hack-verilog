module alu (
    x,
    y,
    zx,
    nx,
    zy,
    ny,
    f,
    no,
    zr,
    ng,
    out
  );
  
    input      [7:0]   x;
    input      [7:0]   y;
    input             zx;
    input             nx;
    input             zy;
    input             ny;
    input              f;
    input             no;
    output reg        zr;
    output reg        ng;
    output reg [7:0] out;
  
  reg [7:0] x1;
  reg [7:0] x2;
  reg [7:0] y1;
  reg [7:0] y2;
  reg [7:0] fout;
  reg [7:0] res;

  always @* begin
    x1 = (zx ? 8'h00 : x);
    y1 = (zy ? 8'h00 : y);
    x2 = (nx ? ~x1 : x1);
    y2 = (ny ? ~y1 : y1);
    fout = (f ? x2 + y2 : x2 & y2);
    res = (no ? ~fout : fout);
    ng = res[7];
    zr = ~(|res);
    out = res;
  end
endmodule