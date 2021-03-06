
/****************************************************************************
          MUL/DIV unit

Operation table

   op sign dir
4  1   0    x    |  MULTU
6  1   1    x    |  MULT
0  0   0    0    |  ShiftLeft
1  0   0    1    |  ShiftRightLogic
3  0   1    1    |  ShiftRightArith
****************************************************************************/
module mul(clk, resetn, start, stalled, dst,
            opA, opB, sa,
            op,
            shift_result,
            hi, lo);
parameter WIDTH=32;

input clk;
input resetn;

input start;
output stalled;

input [4:0] dst;

input [WIDTH-1:0] opA;
input [WIDTH-1:0] opB;
input [5-1:0] sa;
input [2:0] op;

output [WIDTH-1:0] shift_result;
output [WIDTH-1:0] hi;
output [WIDTH-1:0] lo;

/********* Control Signals *********/
wire is_signed,dir, is_mul;
assign is_mul=op[2];      // selects between opB and the computed shift amount
assign is_signed=op[1];
assign dir=op[0];         // selects between 2^sa and 2^(32-sa) for right shift

/********* Circuit Body *********/
wire dum,dum2,dum3;
wire [WIDTH:0] opB_mux_out;
wire [5-1:0] left_sa;     // Amount of left shift required for both left/right
reg [WIDTH:0] decoded_sa;

assign opB_mux_out= (is_mul) ? {is_signed&opB[WIDTH-1],opB} : decoded_sa;

lpm_mult  lpm_mult_component (
  .dataa ({is_signed&opA[WIDTH-1],opA}),
  .datab (opB_mux_out),
  .sum(),
  .clock(clk),
  .clken(),
  .aclr(~resetn),
  .result ({dum2,dum,hi,lo}));
defparam
  lpm_mult_component.lpm_widtha = WIDTH+1,
  lpm_mult_component.lpm_widthb = WIDTH+1,
  lpm_mult_component.lpm_widthp = 2*WIDTH+2,
  lpm_mult_component.lpm_widths = 1,
  lpm_mult_component.lpm_pipeline = 1,
  lpm_mult_component.lpm_type = "LPM_MULT",
  lpm_mult_component.lpm_representation = "SIGNED",
  lpm_mult_component.lpm_hint = "MAXIMIZE_SPEED=6";

assign shift_result= (dir && |sa) ? hi : lo;


assign {dum3, left_sa}= (dir) ? 32-sa : {1'b0,sa};

always@(left_sa or dir)
begin
  decoded_sa=0;
  case(left_sa)
    0: decoded_sa[0]=1;
    1: decoded_sa[1]=1;
    2: decoded_sa[2]=1;
    3: decoded_sa[3]=1;
    4: decoded_sa[4]=1;
    5: decoded_sa[5]=1;
    6: decoded_sa[6]=1;
    7: decoded_sa[7]=1;
    8: decoded_sa[8]=1;
    9: decoded_sa[9]=1;
    10: decoded_sa[10]=1;
    11: decoded_sa[11]=1;
    12: decoded_sa[12]=1;
    13: decoded_sa[13]=1;
    14: decoded_sa[14]=1;
    15: decoded_sa[15]=1;
    16: decoded_sa[16]=1;
    17: decoded_sa[17]=1;
    18: decoded_sa[18]=1;
    19: decoded_sa[19]=1;
    20: decoded_sa[20]=1;
    21: decoded_sa[21]=1;
    22: decoded_sa[22]=1;
    23: decoded_sa[23]=1;
    24: decoded_sa[24]=1;
    25: decoded_sa[25]=1;
    26: decoded_sa[26]=1;
    27: decoded_sa[27]=1;
    28: decoded_sa[28]=1;
    29: decoded_sa[29]=1;
    30: decoded_sa[30]=1;
    31: decoded_sa[31]=1;
  endcase
end

// 1 cycle stall state machine
onecyclestall staller((start&is_mul)|(start&(|dst)&~is_mul),clk,resetn,stalled);


endmodule

