module cpu (
    clk,
    inM,
    instruction,
    reset,
    outM,
    writeM,
    addressM,
    pcaddr,
    D_reg_out,
    A_reg_out
  );
  
  // cpu variables
  input                     clk;
  input  [15:0]             inM;
  input  [15:0]     instruction;
  input                   reset;
  output reg [15:0]        outM;
  output reg             writeM;
  output reg [15:0]    addressM;
  output reg [15:0]      pcaddr;

  // intermediate variables;
  reg       ni;

  // tmp output
  // TODO: remove
  output [15:0]   D_reg_out;
  output [15:0]   A_reg_out;
  
  // A (address) register variables
  wire [15:0]   A_reg_out;
  reg           A_reg_clk;
  reg         A_reg_write;
  reg  [15:0]    A_reg_in;
  
  // initialize A register
  register A_register(
    .clk(A_reg_clk),
    .write(A_reg_write),
    .in(A_reg_in),
    .out(A_reg_out)
  );
  
  // D (data) register variables
  wire [15:0]   D_reg_out;
  reg           D_reg_clk;
  reg         D_reg_write;
  reg  [15:0]    D_reg_in;
  
  // initialize D register
  register D_register(
    .clk(D_reg_clk),
    .write(D_reg_write),
    .in(D_reg_in),
    .out(D_reg_out)
  );
  
  // ALU variables
  reg  [15:0]   alu_x;
  reg  [15:0]   alu_y;
  reg          alu_zx;
  reg          alu_nx;
  reg          alu_zy;
  reg          alu_ny;
  reg           alu_f;
  reg          alu_no;
  wire         alu_zr;
  wire         alu_ng;
  wire [15:0] alu_out;
  
  // initialize ALU
  alu alu(
    .x(alu_x),
    .y(alu_y),
    .zx(alu_zx),
    .nx(alu_nx),
    .zy(alu_zy),
    .ny(alu_ny),
    .f(alu_f),
    .no(alu_no),
    .zr(alu_zr),
    .ng(alu_ng),
    .out(alu_out)
  );
  
  // program counter
  wire [15:0]   pc_out;
  reg  [15:0]    pc_in;
  reg           pc_clk;
  reg          pc_incr;
  reg          pc_load;
  reg         pc_reset;
  
  // initialize program counter
  pc pc(
    .out(pc_out),
    .in(pc_in),
    .clk(pc_clk),
    .incr(pc_incr),
    .load(pc_load),
    .reset(pc_reset)
  );
  
  // program counter logic
  reg pos;
  reg nzr;
  reg posnzr;
  reg jgt;
  reg jeq;
  reg jlt;
  reg ld;
  
  // intermediate variables
  reg [15:0] a_reg_in;
  reg [15:0] alu_y_in;
  
  always @* begin
    // set up the clocks
    A_reg_clk <= clk;
    D_reg_clk <= clk;
    pc_clk <= clk;

    // intermediate variables
    ni = !instruction[15];
    if (ni)
      A_reg_in <= instruction;
    else
      A_reg_in <= outM;
    
    // register loads
    A_reg_write <= ni | instruction[5];
    D_reg_write <= instruction[15] & instruction[4];
    
    D_reg_in <= outM;
    
    // pc input logic   
    pos <= !alu_ng;
    nzr <= !alu_zr;
    posnzr <= pos & nzr;
    jgt <= instruction[15] & instruction[0];
    jeq <= instruction[15] & instruction[1];
    jlt <= instruction[15] & instruction[2];
    ld <= (jgt & posnzr) | (jeq & alu_zr) | (jlt & alu_ng);
    
    // pc input
    pc_in <= A_reg_out;
    pc_load <= ld;
    pc_reset <= reset;
    pc_incr <= 1'b1;
    
    // alu input
    alu_x <= D_reg_out;
    
    if (instruction[15] & instruction[12])
      alu_y_in <= inM;
    else
      alu_y_in <= A_reg_out;
    
    alu_y <= alu_y_in;
    
    // alu instructions
    alu_zx <= instruction[11];
    alu_nx <= instruction[10];
    alu_zy <= instruction[9];
    alu_ny <= instruction[8];
    alu_f <= instruction[7];
    alu_no <= instruction[6];

    // output
    outM <= alu_out;
    pcaddr <= pc_out;
    addressM <= A_reg_out;
    writeM <= instruction[15] & instruction[3];    
  end
  
endmodule