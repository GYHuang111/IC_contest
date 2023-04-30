/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Thu Feb 23 19:37:27 2023
/////////////////////////////////////////////////////////////


module DT_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module DT_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX2 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX2 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module DT_DW01_inc_2_DW01_inc_3 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module DT_DW01_inc_3_DW01_inc_4 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module DT_DW01_inc_4_DW01_inc_5 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module DT_DW01_inc_5_DW01_inc_6 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module DT ( clk, reset, done, sti_rd, sti_addr, sti_di, res_wr, res_rd, 
        res_addr, res_do, res_di, fwpass_finish );
  output [9:0] sti_addr;
  input [15:0] sti_di;
  output [13:0] res_addr;
  output [7:0] res_do;
  input [7:0] res_di;
  input clk, reset;
  output done, sti_rd, res_wr, res_rd, fwpass_finish;
  wire   N96, N97, N98, N99, n904, Object_flag, N121, N122, N123, EDGE,
         FIRST_ROW, N178, N179, N180, N181, N182, N183, N184, N185, N187, N188,
         N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, N208,
         N209, N210, N211, N212, N214, N215, N216, N217, N218, N219, N249,
         N250, N251, N252, N253, N254, N542, N547, \pixel_reg[4][7] ,
         \pixel_reg[4][6] , \pixel_reg[4][5] , \pixel_reg[4][4] ,
         \pixel_reg[4][3] , \pixel_reg[4][2] , \pixel_reg[4][1] ,
         \pixel_reg[4][0] , \pixel_reg[3][7] , \pixel_reg[3][6] ,
         \pixel_reg[3][5] , \pixel_reg[3][4] , \pixel_reg[3][2] ,
         \pixel_reg[3][0] , \pixel_reg[2][7] , \pixel_reg[2][5] ,
         \pixel_reg[2][4] , \pixel_reg[2][3] , \pixel_reg[2][2] ,
         \pixel_reg[2][1] , \pixel_reg[2][0] , \pixel_reg[1][7] ,
         \pixel_reg[1][6] , \pixel_reg[1][5] , \pixel_reg[1][4] ,
         \pixel_reg[1][3] , \pixel_reg[1][2] , \pixel_reg[1][1] ,
         \pixel_reg[1][0] , \pixel_reg[0][7] , \pixel_reg[0][6] ,
         \pixel_reg[0][5] , \pixel_reg[0][4] , \pixel_reg[0][3] ,
         \pixel_reg[0][2] , \pixel_reg[0][1] , \pixel_reg[0][0] , N606, N620,
         N633, N688, N693, N698, N730, N946, N953, N954, N955, N956, N958,
         N959, N960, N961, N962, N963, N964, N965, N968, N969, N970, N971,
         N972, N973, N974, N975, N976, N977, N978, N979, N980, N981, N982,
         N983, N995, N996, N997, N998, N999, N1015, N1016, N1017, N1018, N1019,
         N1020, N1021, N1022, N1023, N1024, N1025, N1026, N1027, N1028, N1029,
         N1030, N1031, N1033, N1034, N1035, N1036, N1037, N1038, N1039, N1040,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903;
  wire   [2:0] STATE;
  wire   [3:0] sti_addr_row;
  wire   [3:0] DATA_CNT;
  wire   [6:1] \r550/carry ;
  wire   [7:0] \r548/carry ;

  DT_DW01_inc_0_DW01_inc_1 add_461 ( .A({N1022, N1021, N1020, N1019, N1018, 
        N1017, N1016, N1015}), .SUM({N1040, N1039, N1038, N1037, N1036, N1035, 
        N1034, N1033}) );
  DT_DW01_inc_1_DW01_inc_2 add_457 ( .A({N1022, N1021, N1020, N1019, N1018, 
        N1017, N1016, N1015}), .SUM({N1030, N1029, N1028, N1027, N1026, N1025, 
        N1024, N1023}) );
  DT_DW01_inc_2_DW01_inc_3 add_433 ( .A({N965, N964, N963, N962, N961, N960, 
        N959, N958}), .SUM({N983, N982, N981, N980, N979, N978, N977, N976})
         );
  DT_DW01_inc_3_DW01_inc_4 add_430 ( .A({N955, N954, N953, N999, N998, N997, 
        N996, N995}), .SUM({N975, N974, N973, N972, N971, N970, N969, N968})
         );
  DT_DW01_inc_4_DW01_inc_5 r549 ( .A(sti_addr[9:3]), .SUM({N198, N197, N196, 
        N195, N194, N193, N192}) );
  DT_DW01_inc_5_DW01_inc_6 r547 ( .A({sti_addr[2:0], sti_addr_row[3], n479, 
        sti_addr_row[1], N185}), .SUM({N184, N183, N182, N181, N180, N179, 
        N178}) );
  DFFQX2 Object_flag_reg ( .D(n373), .CK(clk), .Q(Object_flag) );
  DFFX1 \res_addr_latch_reg[1]  ( .D(n370), .CK(clk), .QN(n422) );
  DFFX1 \res_addr_latch_reg[7]  ( .D(n364), .CK(clk), .QN(n428) );
  DFFX1 \res_addr_latch_reg[8]  ( .D(n363), .CK(clk), .QN(n429) );
  DFFX1 \res_addr_latch_reg[9]  ( .D(n362), .CK(clk), .QN(n430) );
  DFFX1 \res_addr_latch_reg[10]  ( .D(n361), .CK(clk), .QN(n431) );
  DFFX1 \res_addr_latch_reg[11]  ( .D(n360), .CK(clk), .QN(n432) );
  DFFX1 \res_addr_latch_reg[12]  ( .D(n359), .CK(clk), .QN(n433) );
  DFFX1 \res_addr_latch_reg[0]  ( .D(n371), .CK(clk), .QN(n421) );
  DFFX1 \res_addr_latch_reg[3]  ( .D(n368), .CK(clk), .QN(n424) );
  DFFX1 \res_addr_latch_reg[4]  ( .D(n367), .CK(clk), .QN(n425) );
  DFFX1 \res_addr_latch_reg[5]  ( .D(n366), .CK(clk), .QN(n426) );
  DFFX1 \res_addr_latch_reg[6]  ( .D(n365), .CK(clk), .QN(n427) );
  DFFX1 \res_addr_latch_reg[2]  ( .D(n369), .CK(clk), .QN(n423) );
  DFFX1 \pixel_reg_reg[4][7]  ( .D(n318), .CK(clk), .Q(\pixel_reg[4][7] ), 
        .QN(n436) );
  DFFX1 \pixel_reg_reg[4][6]  ( .D(n319), .CK(clk), .Q(\pixel_reg[4][6] ), 
        .QN(n442) );
  DFFX1 \pixel_reg_reg[4][5]  ( .D(n320), .CK(clk), .Q(\pixel_reg[4][5] ), 
        .QN(n420) );
  DFFQX4 \sti_addr_col_reg[5]  ( .D(n380), .CK(clk), .Q(sti_addr[8]) );
  DFFQX4 \sti_addr_col_reg[3]  ( .D(n378), .CK(clk), .Q(sti_addr[6]) );
  DFFX1 \pixel_reg_reg[4][3]  ( .D(n322), .CK(clk), .Q(\pixel_reg[4][3] ), 
        .QN(n416) );
  DFFX1 \pixel_reg_reg[4][4]  ( .D(n321), .CK(clk), .Q(\pixel_reg[4][4] ), 
        .QN(n439) );
  DFFX1 \pixel_reg_reg[4][1]  ( .D(n324), .CK(clk), .Q(\pixel_reg[4][1] ), 
        .QN(n438) );
  DFFX1 \pixel_reg_reg[4][0]  ( .D(n325), .CK(clk), .Q(\pixel_reg[4][0] ), 
        .QN(n411) );
  DFFX1 \pixel_reg_reg[4][2]  ( .D(n323), .CK(clk), .Q(\pixel_reg[4][2] ), 
        .QN(n440) );
  DFFQX4 \sti_addr_row_reg[5]  ( .D(n385), .CK(clk), .Q(sti_addr[1]) );
  DFFQX4 \sti_addr_row_reg[6]  ( .D(n384), .CK(clk), .Q(sti_addr[2]) );
  DFFQX2 EDGE_reg ( .D(n383), .CK(clk), .Q(EDGE) );
  DFFQX4 \sti_addr_row_reg[4]  ( .D(n386), .CK(clk), .Q(sti_addr[0]) );
  DFFX1 \pixel_reg_reg[0][7]  ( .D(n350), .CK(clk), .Q(\pixel_reg[0][7] ), 
        .QN(n417) );
  DFFX1 \pixel_reg_reg[3][7]  ( .D(n326), .CK(clk), .Q(\pixel_reg[3][7] ), 
        .QN(n435) );
  DFFX1 \pixel_reg_reg[1][6]  ( .D(n343), .CK(clk), .Q(\pixel_reg[1][6] ), 
        .QN(n401) );
  DFFX1 \pixel_reg_reg[3][6]  ( .D(n327), .CK(clk), .Q(\pixel_reg[3][6] ), 
        .QN(n410) );
  DFFX1 \pixel_reg_reg[1][1]  ( .D(n348), .CK(clk), .Q(\pixel_reg[1][1] ), 
        .QN(n415) );
  DFFX1 \pixel_reg_reg[2][5]  ( .D(n336), .CK(clk), .Q(\pixel_reg[2][5] ), 
        .QN(n412) );
  DFFX1 \pixel_reg_reg[1][4]  ( .D(n345), .CK(clk), .Q(\pixel_reg[1][4] ), 
        .QN(n402) );
  DFFX1 \pixel_reg_reg[2][1]  ( .D(n340), .CK(clk), .Q(\pixel_reg[2][1] ), 
        .QN(n397) );
  DFFX1 \pixel_reg_reg[0][4]  ( .D(n353), .CK(clk), .Q(\pixel_reg[0][4] ), 
        .QN(n437) );
  DFFX1 \pixel_reg_reg[3][4]  ( .D(n329), .CK(clk), .Q(\pixel_reg[3][4] ), 
        .QN(n434) );
  DFFX1 \pixel_reg_reg[2][2]  ( .D(n339), .CK(clk), .Q(\pixel_reg[2][2] ), 
        .QN(n414) );
  DFFX1 \pixel_reg_reg[1][3]  ( .D(n346), .CK(clk), .Q(\pixel_reg[1][3] ), 
        .QN(n404) );
  DFFX1 \pixel_reg_reg[0][0]  ( .D(n357), .CK(clk), .Q(\pixel_reg[0][0] ), 
        .QN(n406) );
  DFFX1 \pixel_reg_reg[0][3]  ( .D(n354), .CK(clk), .Q(\pixel_reg[0][3] ), 
        .QN(n419) );
  DFFX1 \pixel_reg_reg[0][2]  ( .D(n355), .CK(clk), .Q(\pixel_reg[0][2] ), 
        .QN(n408) );
  DFFX1 \pixel_reg_reg[2][3]  ( .D(n338), .CK(clk), .Q(\pixel_reg[2][3] ), 
        .QN(n396) );
  DFFQX2 \sti_addr_col_reg[6]  ( .D(n382), .CK(clk), .Q(sti_addr[9]) );
  DFFX1 \sti_addr_row_reg[0]  ( .D(n389), .CK(clk), .Q(N185), .QN(N97) );
  DFFX1 \pixel_reg_reg[0][5]  ( .D(n352), .CK(clk), .Q(\pixel_reg[0][5] ), 
        .QN(n418) );
  DFFX1 \pixel_reg_reg[3][5]  ( .D(n328), .CK(clk), .Q(\pixel_reg[3][5] ), 
        .QN(n441) );
  DFFX1 \STATE_reg[0]  ( .D(N121), .CK(clk), .Q(STATE[0]), .QN(n863) );
  DFFX1 \STATE_reg[2]  ( .D(N123), .CK(clk), .QN(n864) );
  DFFX1 \DATA_CNT_reg[0]  ( .D(n392), .CK(clk), .Q(DATA_CNT[0]), .QN(n399) );
  DFFX1 \DATA_CNT_reg[2]  ( .D(n374), .CK(clk), .Q(DATA_CNT[2]), .QN(n781) );
  DFFX1 \STATE_reg[1]  ( .D(N122), .CK(clk), .Q(STATE[1]) );
  DFFX1 \DATA_CNT_reg[3]  ( .D(n391), .CK(clk), .Q(DATA_CNT[3]), .QN(n775) );
  DFFX1 \pixel_reg_reg[1][0]  ( .D(n349), .CK(clk), .Q(\pixel_reg[1][0] ), 
        .QN(n797) );
  DFFX1 \pixel_reg_reg[2][0]  ( .D(n341), .CK(clk), .Q(\pixel_reg[2][0] ), 
        .QN(n816) );
  DFFX1 FIRST_ROW_reg ( .D(n372), .CK(clk), .Q(FIRST_ROW), .QN(n789) );
  DFFXL \pixel_reg_reg[2][7]  ( .D(n334), .CK(clk), .Q(\pixel_reg[2][7] ), 
        .QN(n820) );
  DFFXL \pixel_reg_reg[3][0]  ( .D(n333), .CK(clk), .Q(\pixel_reg[3][0] ), 
        .QN(n469) );
  DFFXL \sti_addr_row_reg[1]  ( .D(n390), .CK(clk), .Q(sti_addr_row[1]), .QN(
        N98) );
  DFFXL \pixel_reg_reg[0][1]  ( .D(n356), .CK(clk), .Q(\pixel_reg[0][1] ), 
        .QN(n805) );
  DFFXL \res_addr_latch_reg[13]  ( .D(n358), .CK(clk), .QN(n685) );
  DFFX1 \DATA_CNT_reg[1]  ( .D(n375), .CK(clk), .Q(DATA_CNT[1]), .QN(n828) );
  DFFX4 \sti_addr_row_reg[3]  ( .D(n387), .CK(clk), .Q(sti_addr_row[3]), .QN(
        N96) );
  DFFX1 \pixel_reg_reg[3][2]  ( .D(n331), .CK(clk), .Q(\pixel_reg[3][2] ), 
        .QN(n444) );
  DFFX1 \pixel_reg_reg[2][4]  ( .D(n337), .CK(clk), .Q(\pixel_reg[2][4] ), 
        .QN(n443) );
  DFFQX2 \sti_addr_col_reg[4]  ( .D(n379), .CK(clk), .Q(sti_addr[7]) );
  DFFX1 \pixel_reg_reg[1][7]  ( .D(n342), .CK(clk), .Q(\pixel_reg[1][7] ), 
        .QN(n639) );
  DFFX1 \pixel_reg_reg[1][5]  ( .D(n344), .CK(clk), .Q(\pixel_reg[1][5] ), 
        .QN(n403) );
  DFFX2 \sti_addr_col_reg[2]  ( .D(n377), .CK(clk), .Q(sti_addr[5]), .QN(n400)
         );
  DFFX1 \pixel_reg_reg[1][2]  ( .D(n347), .CK(clk), .Q(\pixel_reg[1][2] ), 
        .QN(n398) );
  DFFX1 \pixel_reg_reg[0][6]  ( .D(n351), .CK(clk), .Q(\pixel_reg[0][6] ), 
        .QN(n413) );
  DFFX1 \pixel_reg_reg[3][3]  ( .D(n330), .CK(clk), .QN(n407) );
  DFFX1 \pixel_reg_reg[3][1]  ( .D(n332), .CK(clk), .QN(n409) );
  DFFX2 \sti_addr_col_reg[1]  ( .D(n376), .CK(clk), .Q(sti_addr[4]), .QN(n394)
         );
  DFFX1 \pixel_reg_reg[2][6]  ( .D(n335), .CK(clk), .QN(n405) );
  DFFX1 \sti_addr_row_reg[2]  ( .D(n388), .CK(clk), .Q(sti_addr_row[2]), .QN(
        N99) );
  DFFQX4 \sti_addr_col_reg[0]  ( .D(n381), .CK(clk), .Q(sti_addr[3]) );
  CLKBUFX3 U367 ( .A(n894), .Y(n393) );
  BUFX4 U368 ( .A(n801), .Y(n474) );
  INVX1 U369 ( .A(n884), .Y(N999) );
  AOI211X2 U370 ( .A0(N961), .A1(n886), .B0(n898), .C0(n899), .Y(n893) );
  NOR2X4 U371 ( .A(n886), .B(N961), .Y(n900) );
  MXI2X2 U372 ( .A(\pixel_reg[1][5] ), .B(\pixel_reg[0][5] ), .S0(N946), .Y(
        n882) );
  OAI222X1 U373 ( .A0(\pixel_reg[3][6] ), .A1(n641), .B0(n405), .B1(n641), 
        .C0(\pixel_reg[3][6] ), .C1(n405), .Y(n652) );
  NAND2X4 U374 ( .A(EDGE), .B(n778), .Y(n813) );
  NAND2X6 U375 ( .A(n450), .B(n735), .Y(n778) );
  NAND2X4 U376 ( .A(n812), .B(n476), .Y(n830) );
  AND3X8 U377 ( .A(n812), .B(n399), .C(n777), .Y(n462) );
  NAND2X8 U378 ( .A(n812), .B(n819), .Y(n817) );
  NAND2X4 U379 ( .A(n812), .B(n476), .Y(n455) );
  NOR2X8 U380 ( .A(n856), .B(EDGE), .Y(n812) );
  NOR2BX2 U381 ( .AN(\pixel_reg[2][2] ), .B(\pixel_reg[3][2] ), .Y(n644) );
  INVX6 U382 ( .A(n451), .Y(n461) );
  NAND3X1 U383 ( .A(n459), .B(n460), .C(n632), .Y(n634) );
  NAND3X1 U384 ( .A(n447), .B(n449), .C(n448), .Y(n628) );
  OAI222X1 U385 ( .A0(\pixel_reg[2][5] ), .A1(n441), .B0(\pixel_reg[2][5] ), 
        .B1(n640), .C0(n441), .C1(n640), .Y(n641) );
  NAND3X1 U386 ( .A(n456), .B(n457), .C(n647), .Y(n649) );
  AOI2BB2X1 U387 ( .B0(n646), .B1(n645), .A0N(n648), .A1N(n407), .Y(n647) );
  OAI2BB2XL U388 ( .B0(N1023), .B1(n411), .A0N(n668), .A1N(\pixel_reg[4][1] ), 
        .Y(n657) );
  OAI22X1 U389 ( .A0(n658), .A1(n669), .B0(\pixel_reg[4][3] ), .B1(n658), .Y(
        n659) );
  INVX3 U390 ( .A(N1028), .Y(n670) );
  NOR2X1 U391 ( .A(n882), .B(N963), .Y(n894) );
  CLKMX2X2 U392 ( .A(N996), .B(N959), .S0(n478), .Y(N1016) );
  CLKINVX1 U393 ( .A(N1030), .Y(n671) );
  CLKINVX1 U394 ( .A(n732), .Y(n450) );
  NOR2X1 U395 ( .A(n758), .B(n783), .Y(n793) );
  OAI21X1 U396 ( .A0(n844), .A1(n845), .B0(Object_flag), .Y(n676) );
  OAI21X1 U397 ( .A0(n842), .A1(n843), .B0(Object_flag), .Y(n677) );
  OAI21X1 U398 ( .A0(n835), .A1(n836), .B0(Object_flag), .Y(n679) );
  OAI21X1 U399 ( .A0(n848), .A1(n849), .B0(Object_flag), .Y(n674) );
  CLKBUFX3 U400 ( .A(n833), .Y(n476) );
  OAI21X1 U401 ( .A0(n852), .A1(n853), .B0(Object_flag), .Y(n672) );
  INVX4 U402 ( .A(reset), .Y(n758) );
  INVX3 U403 ( .A(n675), .Y(res_do[4]) );
  OR2X1 U404 ( .A(n445), .B(n395), .Y(n381) );
  AO22X2 U405 ( .A0(N198), .A1(n760), .B0(N219), .B1(n761), .Y(n446) );
  NOR2BX1 U406 ( .AN(n793), .B(STATE[1]), .Y(n732) );
  MX2XL U407 ( .A(N998), .B(N961), .S0(n478), .Y(N1018) );
  MXI2X2 U408 ( .A(n407), .B(n396), .S0(N956), .Y(N961) );
  AO22XL U409 ( .A0(N192), .A1(n760), .B0(n680), .B1(n761), .Y(n395) );
  CLKINVX1 U410 ( .A(sti_addr[3]), .Y(n680) );
  MXI2X4 U411 ( .A(n400), .B(n430), .S0(res_wr), .Y(res_addr[9]) );
  MXI2X4 U412 ( .A(n394), .B(n429), .S0(res_wr), .Y(res_addr[8]) );
  MXI2X4 U413 ( .A(n681), .B(n427), .S0(res_wr), .Y(res_addr[6]) );
  MXI2X4 U414 ( .A(n682), .B(n426), .S0(res_wr), .Y(res_addr[5]) );
  MXI2X4 U415 ( .A(n683), .B(n425), .S0(res_wr), .Y(res_addr[4]) );
  MXI2X4 U416 ( .A(N96), .B(n424), .S0(res_wr), .Y(res_addr[3]) );
  MXI2X4 U417 ( .A(n482), .B(n423), .S0(res_wr), .Y(res_addr[2]) );
  MXI2X4 U418 ( .A(n486), .B(n422), .S0(res_wr), .Y(res_addr[1]) );
  MXI2X4 U419 ( .A(n684), .B(n685), .S0(res_wr), .Y(res_addr[13]) );
  MXI2X4 U420 ( .A(n686), .B(n433), .S0(res_wr), .Y(res_addr[12]) );
  MXI2X4 U421 ( .A(n687), .B(n432), .S0(res_wr), .Y(res_addr[11]) );
  CLKBUFX6 U422 ( .A(n904), .Y(res_wr) );
  MXI2X4 U423 ( .A(n688), .B(n431), .S0(res_wr), .Y(res_addr[10]) );
  MXI2X4 U424 ( .A(n488), .B(n421), .S0(res_wr), .Y(res_addr[0]) );
  INVX3 U425 ( .A(EDGE), .Y(n751) );
  AO22X2 U426 ( .A0(n744), .A1(n477), .B0(n770), .B1(n729), .Y(n705) );
  CLKINVX3 U427 ( .A(n735), .Y(n729) );
  NAND2X2 U428 ( .A(n812), .B(n474), .Y(n798) );
  NAND2X2 U429 ( .A(n748), .B(n476), .Y(n829) );
  OAI211X4 U430 ( .A0(n747), .A1(n782), .B0(n693), .C0(reset), .Y(n692) );
  NAND2XL U431 ( .A(reset), .B(n783), .Y(n693) );
  NAND2X2 U432 ( .A(n729), .B(n860), .Y(n857) );
  NOR3X2 U433 ( .A(n480), .B(DATA_CNT[1]), .C(n781), .Y(n746) );
  MXI2X4 U434 ( .A(n680), .B(n428), .S0(res_wr), .Y(res_addr[7]) );
  NOR3X2 U435 ( .A(n751), .B(FIRST_ROW), .C(n450), .Y(n802) );
  NOR2BX2 U436 ( .AN(n690), .B(n863), .Y(done) );
  MXI2X1 U437 ( .A(\pixel_reg[3][7] ), .B(\pixel_reg[2][7] ), .S0(N956), .Y(
        n865) );
  AND2X2 U438 ( .A(n478), .B(n855), .Y(n838) );
  NOR2BX2 U439 ( .AN(n855), .B(n478), .Y(n837) );
  AOI21X2 U440 ( .A0(n863), .A1(n864), .B0(n855), .Y(fwpass_finish) );
  OAI22X1 U441 ( .A0(STATE[1]), .A1(n783), .B0(STATE[0]), .B1(n691), .Y(n855)
         );
  INVX3 U442 ( .A(n889), .Y(N995) );
  NOR2XL U443 ( .A(n680), .B(n759), .Y(n445) );
  NAND2X8 U444 ( .A(n772), .B(n728), .Y(n759) );
  OR2X1 U445 ( .A(\pixel_reg[0][5] ), .B(n627), .Y(n448) );
  OR2X1 U446 ( .A(n403), .B(n627), .Y(n449) );
  NAND2X2 U447 ( .A(n793), .B(STATE[1]), .Y(n735) );
  OAI2BB1X1 U448 ( .A0N(n805), .A1N(\pixel_reg[1][1] ), .B0(n630), .Y(n463) );
  OR2X2 U449 ( .A(n855), .B(N1031), .Y(n451) );
  BUFX12 U450 ( .A(n839), .Y(n458) );
  OR2X1 U451 ( .A(\pixel_reg[0][5] ), .B(n403), .Y(n447) );
  OAI222X2 U452 ( .A0(\pixel_reg[1][6] ), .A1(n628), .B0(n413), .B1(n628), 
        .C0(\pixel_reg[1][6] ), .C1(n413), .Y(n637) );
  OR2X1 U453 ( .A(n452), .B(n446), .Y(n382) );
  NAND2BX1 U454 ( .AN(\pixel_reg[2][2] ), .B(\pixel_reg[3][2] ), .Y(n648) );
  MXI2X2 U455 ( .A(\pixel_reg[3][5] ), .B(\pixel_reg[2][5] ), .S0(N956), .Y(
        n883) );
  NOR4XL U456 ( .A(n726), .B(n735), .C(n756), .D(n757), .Y(n755) );
  CLKINVX1 U457 ( .A(sti_addr[9]), .Y(n684) );
  NOR2X4 U458 ( .A(n462), .B(n758), .Y(n814) );
  AOI2BB1XL U459 ( .A0N(n742), .A1N(n745), .B0(n758), .Y(n790) );
  NOR2XL U460 ( .A(n758), .B(n751), .Y(n750) );
  NOR2XL U461 ( .A(n684), .B(n759), .Y(n452) );
  NOR2X1 U462 ( .A(n656), .B(n670), .Y(n453) );
  INVX3 U463 ( .A(n767), .Y(n761) );
  NOR2X1 U464 ( .A(\pixel_reg[4][5] ), .B(n656), .Y(n454) );
  OR2X2 U465 ( .A(n453), .B(n454), .Y(n664) );
  NAND2BXL U466 ( .AN(n746), .B(n756), .Y(n770) );
  OAI211X1 U467 ( .A0(\pixel_reg[3][6] ), .A1(n405), .B0(n650), .C0(n649), .Y(
        n651) );
  AND4X2 U468 ( .A(reset), .B(n773), .C(n753), .D(n774), .Y(n728) );
  OR2XL U469 ( .A(\pixel_reg[0][3] ), .B(n404), .Y(n460) );
  OR2XL U470 ( .A(\pixel_reg[0][3] ), .B(n633), .Y(n459) );
  OA21XL U471 ( .A0(n856), .A1(n794), .B0(reset), .Y(n465) );
  AO21XL U472 ( .A0(n477), .A1(n747), .B0(n705), .Y(n771) );
  NAND2XL U473 ( .A(n477), .B(n770), .Y(n768) );
  AOI211XL U474 ( .A0(n729), .A1(n730), .B0(n731), .C0(n477), .Y(n725) );
  NAND4XL U475 ( .A(N606), .B(FIRST_ROW), .C(n477), .D(EDGE), .Y(n834) );
  AOI33XL U476 ( .A0(n776), .A1(n745), .A2(n477), .B0(n777), .B1(n778), .B2(
        n747), .Y(n772) );
  OR2XL U477 ( .A(\pixel_reg[2][3] ), .B(n648), .Y(n456) );
  OR2XL U478 ( .A(\pixel_reg[2][3] ), .B(n407), .Y(n457) );
  NOR2BX1 U479 ( .AN(N1031), .B(n855), .Y(n839) );
  NAND2XL U480 ( .A(n814), .B(n774), .Y(n824) );
  INVX3 U481 ( .A(n679), .Y(res_do[0]) );
  INVX3 U482 ( .A(n677), .Y(res_do[2]) );
  INVX3 U483 ( .A(n676), .Y(res_do[3]) );
  INVX3 U484 ( .A(n672), .Y(res_do[7]) );
  INVX3 U485 ( .A(n678), .Y(res_do[1]) );
  INVX3 U486 ( .A(n674), .Y(res_do[5]) );
  INVX3 U487 ( .A(n673), .Y(res_do[6]) );
  INVX4 U488 ( .A(n883), .Y(N963) );
  INVX1 U489 ( .A(n885), .Y(N962) );
  CLKINVX1 U490 ( .A(n880), .Y(N955) );
  INVXL U491 ( .A(n692), .Y(n697) );
  NAND2XL U492 ( .A(n751), .B(n399), .Y(n736) );
  AOI2BB2X1 U493 ( .B0(n463), .B1(n464), .A0N(n633), .A1N(n404), .Y(n632) );
  OAI22XL U494 ( .A0(n631), .A1(n404), .B0(\pixel_reg[0][3] ), .B1(n631), .Y(
        n464) );
  NAND2BX1 U495 ( .AN(\pixel_reg[0][4] ), .B(\pixel_reg[1][4] ), .Y(n627) );
  AO22X2 U496 ( .A0(n469), .A1(\pixel_reg[2][0] ), .B0(n409), .B1(
        \pixel_reg[2][1] ), .Y(n643) );
  INVX3 U497 ( .A(n465), .Y(n860) );
  AOI22XL U498 ( .A0(N542), .A1(n746), .B0(N547), .B1(n788), .Y(n786) );
  NAND2BXL U499 ( .AN(\pixel_reg[0][2] ), .B(\pixel_reg[1][2] ), .Y(n633) );
  MXI2X4 U500 ( .A(\pixel_reg[1][0] ), .B(\pixel_reg[0][0] ), .S0(N946), .Y(
        n889) );
  OAI21X2 U501 ( .A0(N959), .A1(n903), .B0(n888), .Y(n902) );
  NAND3BX2 U502 ( .AN(n749), .B(n775), .C(n731), .Y(n727) );
  NAND3XL U503 ( .A(n746), .B(n775), .C(n731), .Y(n753) );
  OAI32X2 U504 ( .A0(n885), .A1(n393), .A2(N999), .B0(N953), .B1(n883), .Y(
        n897) );
  NAND3XL U505 ( .A(n778), .B(n775), .C(n744), .Y(n774) );
  MXI2X1 U506 ( .A(n410), .B(n405), .S0(N956), .Y(N964) );
  MXI2XL U507 ( .A(n789), .B(n790), .S0(n754), .Y(n372) );
  INVXL U508 ( .A(n888), .Y(N996) );
  INVXL U509 ( .A(n887), .Y(N960) );
  INVXL U510 ( .A(n886), .Y(N998) );
  INVXL U511 ( .A(n881), .Y(N954) );
  AOI31XL U512 ( .A0(n868), .A1(n733), .A2(n690), .B0(done), .Y(n867) );
  INVXL U513 ( .A(n865), .Y(N965) );
  AO21XL U514 ( .A0(N688), .A1(n802), .B0(n803), .Y(n800) );
  MXI2XL U515 ( .A(\pixel_reg[1][0] ), .B(n803), .S0(n819), .Y(n818) );
  MXI2XL U516 ( .A(\pixel_reg[2][0] ), .B(n823), .S0(n475), .Y(n822) );
  OAI222X4 U517 ( .A0(\pixel_reg[4][5] ), .A1(n670), .B0(\pixel_reg[4][5] ), 
        .B1(n654), .C0(n670), .C1(n654), .Y(n655) );
  OAI222X2 U518 ( .A0(N1029), .A1(n655), .B0(n442), .B1(n655), .C0(N1029), 
        .C1(n442), .Y(n666) );
  MXI2X2 U519 ( .A(\pixel_reg[3][0] ), .B(\pixel_reg[2][0] ), .S0(N956), .Y(
        n866) );
  NOR2BX4 U520 ( .AN(\pixel_reg[0][2] ), .B(\pixel_reg[1][2] ), .Y(n631) );
  NAND3XL U521 ( .A(n729), .B(n757), .C(n776), .Y(n773) );
  MXI2XL U522 ( .A(\pixel_reg[4][0] ), .B(n859), .S0(n860), .Y(n858) );
  NAND3XL U523 ( .A(n827), .B(n477), .C(N730), .Y(n861) );
  AOI21XL U524 ( .A0(n738), .A1(n739), .B0(n723), .Y(n791) );
  AO22X1 U525 ( .A0(n466), .A1(sti_addr_row[3]), .B0(N96), .B1(n570), .Y(N633)
         );
  OAI22XL U526 ( .A0(n481), .A1(n561), .B0(N99), .B1(n560), .Y(n466) );
  NOR3XL U527 ( .A(n450), .B(EDGE), .C(n789), .Y(n825) );
  AO22X1 U528 ( .A0(n467), .A1(sti_addr_row[3]), .B0(N96), .B1(n543), .Y(N606)
         );
  OAI22XL U529 ( .A0(n481), .A1(n534), .B0(n482), .B1(n533), .Y(n467) );
  AOI21XL U530 ( .A0(n775), .A1(n746), .B0(n776), .Y(n782) );
  MXI2XL U531 ( .A(n477), .B(n729), .S0(n794), .Y(n870) );
  NAND2XL U532 ( .A(n793), .B(n473), .Y(n787) );
  INVXL U533 ( .A(n726), .Y(n777) );
  NAND2X1 U534 ( .A(n748), .B(n474), .Y(n468) );
  CLKINVX1 U535 ( .A(N1026), .Y(n669) );
  CLKINVX1 U536 ( .A(N1024), .Y(n668) );
  NAND2X1 U537 ( .A(n814), .B(n727), .Y(n833) );
  NAND2X2 U538 ( .A(n723), .B(n701), .Y(n699) );
  CLKBUFX3 U539 ( .A(n824), .Y(n475) );
  BUFX12 U540 ( .A(n854), .Y(n478) );
  AOI2BB2X2 U541 ( .B0(n890), .B1(n891), .A0N(n865), .A1N(N955), .Y(n854) );
  OAI222XL U542 ( .A0(n455), .A1(n676), .B0(n807), .B1(n829), .C0(n407), .C1(
        n476), .Y(n330) );
  OAI31XL U543 ( .A0(n813), .A1(n480), .A2(n726), .B0(n814), .Y(n801) );
  OAI222XL U544 ( .A0(n455), .A1(n678), .B0(n804), .B1(n829), .C0(n409), .C1(
        n476), .Y(n332) );
  AND2X2 U545 ( .A(n771), .B(n759), .Y(n760) );
  OAI22XL U546 ( .A0(N962), .A1(n884), .B0(N964), .B1(n881), .Y(n892) );
  OAI21X2 U547 ( .A0(n826), .A1(n802), .B0(n475), .Y(n821) );
  CLKBUFX3 U548 ( .A(n787), .Y(n472) );
  INVX3 U549 ( .A(n489), .Y(n487) );
  INVX3 U550 ( .A(n485), .Y(n483) );
  OR2X1 U551 ( .A(sti_addr_row[1]), .B(N185), .Y(n497) );
  CLKINVX1 U552 ( .A(n486), .Y(n484) );
  INVX3 U553 ( .A(n482), .Y(n481) );
  OAI2BB1X4 U554 ( .A0N(n820), .A1N(\pixel_reg[3][7] ), .B0(n653), .Y(N956) );
  OAI21X2 U555 ( .A0(\pixel_reg[4][7] ), .A1(n671), .B0(n667), .Y(N1031) );
  OAI22X1 U556 ( .A0(n644), .A1(n407), .B0(\pixel_reg[2][3] ), .B1(n644), .Y(
        n645) );
  OAI222XL U557 ( .A0(n830), .A1(n675), .B0(n808), .B1(n829), .C0(n434), .C1(
        n476), .Y(n329) );
  BUFX2 U558 ( .A(n732), .Y(n477) );
  OAI21X1 U559 ( .A0(n850), .A1(n851), .B0(Object_flag), .Y(n673) );
  OAI21XL U560 ( .A0(n400), .A1(n759), .B0(n765), .Y(n377) );
  OAI222XL U561 ( .A0(n830), .A1(n672), .B0(n811), .B1(n829), .C0(n435), .C1(
        n476), .Y(n326) );
  OAI221XL U562 ( .A0(n796), .A1(n829), .B0(n455), .B1(n679), .C0(n831), .Y(
        n333) );
  OAI222XL U563 ( .A0(n830), .A1(n677), .B0(n806), .B1(n829), .C0(n444), .C1(
        n476), .Y(n331) );
  OAI21X1 U564 ( .A0(n840), .A1(n841), .B0(Object_flag), .Y(n678) );
  MXI2X1 U565 ( .A(\pixel_reg[3][2] ), .B(\pixel_reg[2][2] ), .S0(N956), .Y(
        n887) );
  CLKBUFX3 U566 ( .A(n785), .Y(n473) );
  OAI21XL U567 ( .A0(n783), .A1(n794), .B0(reset), .Y(n785) );
  CLKBUFX3 U568 ( .A(DATA_CNT[0]), .Y(n480) );
  CLKBUFX3 U569 ( .A(N97), .Y(n489) );
  CLKBUFX3 U570 ( .A(N97), .Y(n490) );
  CLKBUFX3 U571 ( .A(N98), .Y(n485) );
  CLKBUFX3 U572 ( .A(N97), .Y(n491) );
  CLKBUFX3 U573 ( .A(sti_addr_row[2]), .Y(n479) );
  CLKBUFX3 U574 ( .A(N97), .Y(n488) );
  CLKBUFX3 U575 ( .A(N98), .Y(n486) );
  AOI2BB1X1 U576 ( .A0N(n689), .A1N(n690), .B0(STATE[0]), .Y(n904) );
  OR2X1 U577 ( .A(sti_addr[4]), .B(sti_addr[3]), .Y(n492) );
  CLKBUFX3 U578 ( .A(N99), .Y(n482) );
  CLKINVX1 U579 ( .A(sti_addr[0]), .Y(n502) );
  CLKBUFX3 U580 ( .A(sti_rd), .Y(res_rd) );
  INVX3 U581 ( .A(n783), .Y(sti_rd) );
  OAI21X1 U582 ( .A0(n846), .A1(n847), .B0(Object_flag), .Y(n675) );
  OAI2BB2X4 U583 ( .B0(\pixel_reg[1][0] ), .B1(n406), .A0N(n415), .A1N(
        \pixel_reg[0][1] ), .Y(n630) );
  OAI21X2 U584 ( .A0(n735), .A1(n736), .B0(n737), .Y(n706) );
  AOI33XL U585 ( .A0(n738), .A1(n739), .A2(n740), .B0(EDGE), .B1(n741), .B2(
        n477), .Y(n737) );
  OAI21X4 U586 ( .A0(\pixel_reg[2][1] ), .A1(n409), .B0(n643), .Y(n646) );
  OAI221X1 U587 ( .A0(\pixel_reg[4][3] ), .A1(n662), .B0(\pixel_reg[4][3] ), 
        .B1(n669), .C0(n661), .Y(n663) );
  AOI2BB2X2 U588 ( .B0(n660), .B1(n659), .A0N(n662), .A1N(n669), .Y(n661) );
  OAI211X4 U589 ( .A0(n725), .A1(n726), .B0(n727), .C0(n728), .Y(n701) );
  AO22X4 U590 ( .A0(n435), .A1(\pixel_reg[2][7] ), .B0(n652), .B1(n651), .Y(
        n653) );
  AOI221X1 U591 ( .A0(n901), .A1(n902), .B0(N997), .B1(n887), .C0(n900), .Y(
        n898) );
  MXI2X2 U592 ( .A(n409), .B(n397), .S0(N956), .Y(N959) );
  AO22XL U593 ( .A0(n458), .A1(\pixel_reg[4][2] ), .B0(N1035), .B1(n461), .Y(
        n842) );
  AO22XL U594 ( .A0(n458), .A1(\pixel_reg[4][3] ), .B0(N1036), .B1(n461), .Y(
        n844) );
  MXI2X1 U595 ( .A(\pixel_reg[3][4] ), .B(\pixel_reg[2][4] ), .S0(N956), .Y(
        n885) );
  AO22XL U596 ( .A0(n458), .A1(\pixel_reg[4][4] ), .B0(N1037), .B1(n461), .Y(
        n846) );
  OAI21X2 U597 ( .A0(n748), .A1(n802), .B0(n819), .Y(n815) );
  AO22XL U598 ( .A0(n458), .A1(\pixel_reg[4][7] ), .B0(N1040), .B1(n461), .Y(
        n852) );
  AO22XL U599 ( .A0(n458), .A1(\pixel_reg[4][0] ), .B0(N1033), .B1(n461), .Y(
        n835) );
  OAI32X2 U600 ( .A0(n892), .A1(n893), .A2(n393), .B0(n895), .B1(n896), .Y(
        n891) );
  NAND2BX2 U601 ( .AN(\pixel_reg[4][4] ), .B(N1027), .Y(n654) );
  OAI21X4 U602 ( .A0(\pixel_reg[0][7] ), .A1(n639), .B0(n638), .Y(N946) );
  MXI2X4 U603 ( .A(n889), .B(n866), .S0(n478), .Y(N1015) );
  AO22X4 U604 ( .A0(n639), .A1(\pixel_reg[0][7] ), .B0(n637), .B1(n636), .Y(
        n638) );
  OAI31X4 U605 ( .A0(n813), .A1(n399), .A2(n726), .B0(n814), .Y(n819) );
  XNOR2X1 U606 ( .A(sti_addr[2]), .B(\r548/carry [6]), .Y(N191) );
  OR2X1 U607 ( .A(sti_addr[1]), .B(\r548/carry [5]), .Y(\r548/carry [6]) );
  XNOR2X1 U608 ( .A(\r548/carry [5]), .B(sti_addr[1]), .Y(N190) );
  OR2X1 U609 ( .A(sti_addr[0]), .B(\r548/carry [4]), .Y(\r548/carry [5]) );
  XNOR2X1 U610 ( .A(\r548/carry [4]), .B(sti_addr[0]), .Y(N189) );
  OR2X1 U611 ( .A(sti_addr_row[3]), .B(\r548/carry [3]), .Y(\r548/carry [4])
         );
  XNOR2X1 U612 ( .A(\r548/carry [3]), .B(sti_addr_row[3]), .Y(N188) );
  XOR2X1 U613 ( .A(sti_addr[2]), .B(\r550/carry [6]), .Y(N212) );
  AND2X1 U614 ( .A(\r550/carry [5]), .B(sti_addr[1]), .Y(\r550/carry [6]) );
  XOR2X1 U615 ( .A(sti_addr[1]), .B(\r550/carry [5]), .Y(N211) );
  AND2X1 U616 ( .A(\r550/carry [4]), .B(sti_addr[0]), .Y(\r550/carry [5]) );
  XOR2X1 U617 ( .A(sti_addr[0]), .B(\r550/carry [4]), .Y(N210) );
  AND2X1 U618 ( .A(\r550/carry [3]), .B(sti_addr_row[3]), .Y(\r550/carry [4])
         );
  XOR2X1 U619 ( .A(sti_addr_row[3]), .B(\r550/carry [3]), .Y(N209) );
  OR2X1 U620 ( .A(n479), .B(n483), .Y(\r548/carry [3]) );
  XNOR2X1 U621 ( .A(n483), .B(n479), .Y(N187) );
  AND2X1 U622 ( .A(n483), .B(n479), .Y(\r550/carry [3]) );
  XOR2X1 U623 ( .A(n479), .B(n483), .Y(N208) );
  OAI2BB1X1 U624 ( .A0N(sti_addr[3]), .A1N(sti_addr[4]), .B0(n492), .Y(N214)
         );
  OR2X1 U625 ( .A(n492), .B(sti_addr[5]), .Y(n493) );
  OAI2BB1X1 U626 ( .A0N(n492), .A1N(sti_addr[5]), .B0(n493), .Y(N215) );
  NOR2X1 U627 ( .A(n493), .B(sti_addr[6]), .Y(n494) );
  AO21X1 U628 ( .A0(n493), .A1(sti_addr[6]), .B0(n494), .Y(N216) );
  NAND2X1 U629 ( .A(n494), .B(n687), .Y(n495) );
  OAI21XL U630 ( .A0(n494), .A1(n687), .B0(n495), .Y(N217) );
  XNOR2X1 U631 ( .A(sti_addr[8]), .B(n495), .Y(N218) );
  NOR2X1 U632 ( .A(sti_addr[8]), .B(n495), .Y(n496) );
  XOR2X1 U633 ( .A(sti_addr[9]), .B(n496), .Y(N219) );
  OAI2BB1X1 U634 ( .A0N(N185), .A1N(n483), .B0(n497), .Y(N249) );
  OR2X1 U635 ( .A(n497), .B(n479), .Y(n498) );
  OAI2BB1X1 U636 ( .A0N(n497), .A1N(n479), .B0(n498), .Y(N250) );
  NOR2X1 U637 ( .A(n498), .B(sti_addr_row[3]), .Y(n499) );
  AO21X1 U638 ( .A0(n498), .A1(sti_addr_row[3]), .B0(n499), .Y(N251) );
  NAND2X1 U639 ( .A(n499), .B(n502), .Y(n500) );
  OAI21XL U640 ( .A0(n499), .A1(n502), .B0(n500), .Y(N252) );
  XNOR2X1 U641 ( .A(sti_addr[1]), .B(n500), .Y(N253) );
  NOR2X1 U642 ( .A(sti_addr[1]), .B(n500), .Y(n501) );
  XOR2X1 U643 ( .A(sti_addr[2]), .B(n501), .Y(N254) );
  NOR2X1 U644 ( .A(n483), .B(n488), .Y(n512) );
  NOR2X1 U645 ( .A(n483), .B(n487), .Y(n511) );
  NOR2X1 U646 ( .A(n487), .B(n485), .Y(n509) );
  NOR2X1 U647 ( .A(n490), .B(n486), .Y(n508) );
  AO22X1 U648 ( .A0(sti_di[5]), .A1(n509), .B0(sti_di[4]), .B1(n508), .Y(n503)
         );
  AOI221XL U649 ( .A0(sti_di[6]), .A1(n512), .B0(sti_di[7]), .B1(n511), .C0(
        n503), .Y(n506) );
  AO22X1 U650 ( .A0(sti_di[1]), .A1(n509), .B0(sti_di[0]), .B1(n508), .Y(n504)
         );
  AOI221XL U651 ( .A0(sti_di[2]), .A1(n512), .B0(sti_di[3]), .B1(n511), .C0(
        n504), .Y(n505) );
  OA22X1 U652 ( .A0(n481), .A1(n506), .B0(n482), .B1(n505), .Y(n516) );
  AO22X1 U653 ( .A0(sti_di[13]), .A1(n509), .B0(sti_di[12]), .B1(n508), .Y(
        n507) );
  AOI221XL U654 ( .A0(sti_di[14]), .A1(n512), .B0(sti_di[15]), .B1(n511), .C0(
        n507), .Y(n514) );
  AO22X1 U655 ( .A0(sti_di[9]), .A1(n509), .B0(sti_di[8]), .B1(n508), .Y(n510)
         );
  AOI221XL U656 ( .A0(sti_di[10]), .A1(n512), .B0(sti_di[11]), .B1(n511), .C0(
        n510), .Y(n513) );
  OAI22XL U657 ( .A0(n514), .A1(n481), .B0(n482), .B1(n513), .Y(n515) );
  OAI2BB2XL U658 ( .B0(n516), .B1(N96), .A0N(N96), .A1N(n515), .Y(N542) );
  NOR2X1 U659 ( .A(n483), .B(n491), .Y(n526) );
  NOR2X1 U660 ( .A(n483), .B(n487), .Y(n525) );
  NOR2X1 U661 ( .A(n487), .B(n486), .Y(n523) );
  NOR2X1 U662 ( .A(n490), .B(n486), .Y(n522) );
  AO22X1 U663 ( .A0(sti_di[5]), .A1(n523), .B0(sti_di[4]), .B1(n522), .Y(n517)
         );
  AOI221XL U664 ( .A0(sti_di[6]), .A1(n526), .B0(sti_di[7]), .B1(n525), .C0(
        n517), .Y(n520) );
  AO22X1 U665 ( .A0(sti_di[1]), .A1(n523), .B0(sti_di[0]), .B1(n522), .Y(n518)
         );
  AOI221XL U666 ( .A0(sti_di[2]), .A1(n526), .B0(sti_di[3]), .B1(n525), .C0(
        n518), .Y(n519) );
  OA22X1 U667 ( .A0(n481), .A1(n520), .B0(n482), .B1(n519), .Y(n530) );
  AO22X1 U668 ( .A0(sti_di[13]), .A1(n523), .B0(sti_di[12]), .B1(n522), .Y(
        n521) );
  AOI221XL U669 ( .A0(sti_di[14]), .A1(n526), .B0(sti_di[15]), .B1(n525), .C0(
        n521), .Y(n528) );
  AO22X1 U670 ( .A0(sti_di[9]), .A1(n523), .B0(sti_di[8]), .B1(n522), .Y(n524)
         );
  AOI221XL U671 ( .A0(sti_di[10]), .A1(n526), .B0(sti_di[11]), .B1(n525), .C0(
        n524), .Y(n527) );
  OAI22XL U672 ( .A0(n528), .A1(n481), .B0(n482), .B1(n527), .Y(n529) );
  OAI2BB2XL U673 ( .B0(n530), .B1(N96), .A0N(N96), .A1N(n529), .Y(N547) );
  NOR2X1 U674 ( .A(n483), .B(n491), .Y(n540) );
  NOR2X1 U675 ( .A(n483), .B(n487), .Y(n539) );
  NOR2X1 U676 ( .A(n487), .B(n485), .Y(n537) );
  NOR2X1 U677 ( .A(n490), .B(n485), .Y(n536) );
  AO22X1 U678 ( .A0(sti_di[5]), .A1(n537), .B0(sti_di[4]), .B1(n536), .Y(n531)
         );
  AOI221XL U679 ( .A0(sti_di[6]), .A1(n540), .B0(sti_di[7]), .B1(n539), .C0(
        n531), .Y(n534) );
  AO22X1 U680 ( .A0(sti_di[1]), .A1(n537), .B0(sti_di[0]), .B1(n536), .Y(n532)
         );
  AOI221XL U681 ( .A0(sti_di[2]), .A1(n540), .B0(sti_di[3]), .B1(n539), .C0(
        n532), .Y(n533) );
  AO22X1 U682 ( .A0(sti_di[13]), .A1(n537), .B0(sti_di[12]), .B1(n536), .Y(
        n535) );
  AOI221XL U683 ( .A0(sti_di[14]), .A1(n540), .B0(sti_di[15]), .B1(n539), .C0(
        n535), .Y(n542) );
  AO22X1 U684 ( .A0(sti_di[9]), .A1(n537), .B0(sti_di[8]), .B1(n536), .Y(n538)
         );
  AOI221XL U685 ( .A0(sti_di[10]), .A1(n540), .B0(sti_di[11]), .B1(n539), .C0(
        n538), .Y(n541) );
  OAI22XL U686 ( .A0(n542), .A1(n481), .B0(n482), .B1(n541), .Y(n543) );
  NOR2X1 U687 ( .A(n483), .B(n491), .Y(n553) );
  NOR2X1 U688 ( .A(n483), .B(n487), .Y(n552) );
  NOR2X1 U689 ( .A(n487), .B(n485), .Y(n550) );
  NOR2X1 U690 ( .A(n490), .B(n485), .Y(n549) );
  AO22X1 U691 ( .A0(sti_di[5]), .A1(n550), .B0(sti_di[4]), .B1(n549), .Y(n544)
         );
  AOI221XL U692 ( .A0(sti_di[6]), .A1(n553), .B0(sti_di[7]), .B1(n552), .C0(
        n544), .Y(n547) );
  AO22X1 U693 ( .A0(sti_di[1]), .A1(n550), .B0(sti_di[0]), .B1(n549), .Y(n545)
         );
  AOI221XL U694 ( .A0(sti_di[2]), .A1(n553), .B0(sti_di[3]), .B1(n552), .C0(
        n545), .Y(n546) );
  OA22X1 U695 ( .A0(n481), .A1(n547), .B0(n482), .B1(n546), .Y(n557) );
  AO22X1 U696 ( .A0(sti_di[13]), .A1(n550), .B0(sti_di[12]), .B1(n549), .Y(
        n548) );
  AOI221XL U697 ( .A0(sti_di[14]), .A1(n553), .B0(sti_di[15]), .B1(n552), .C0(
        n548), .Y(n555) );
  AO22X1 U698 ( .A0(sti_di[9]), .A1(n550), .B0(sti_di[8]), .B1(n549), .Y(n551)
         );
  AOI221XL U699 ( .A0(sti_di[10]), .A1(n553), .B0(sti_di[11]), .B1(n552), .C0(
        n551), .Y(n554) );
  OAI22XL U700 ( .A0(n555), .A1(n481), .B0(n482), .B1(n554), .Y(n556) );
  OAI2BB2XL U701 ( .B0(n557), .B1(N96), .A0N(N96), .A1N(n556), .Y(N620) );
  NOR2X1 U702 ( .A(n483), .B(n491), .Y(n567) );
  NOR2X1 U703 ( .A(n483), .B(n487), .Y(n566) );
  NOR2X1 U704 ( .A(n487), .B(n486), .Y(n564) );
  NOR2X1 U705 ( .A(n490), .B(n486), .Y(n563) );
  AO22X1 U706 ( .A0(sti_di[5]), .A1(n564), .B0(sti_di[4]), .B1(n563), .Y(n558)
         );
  AOI221XL U707 ( .A0(sti_di[6]), .A1(n567), .B0(sti_di[7]), .B1(n566), .C0(
        n558), .Y(n561) );
  AO22X1 U708 ( .A0(sti_di[1]), .A1(n564), .B0(sti_di[0]), .B1(n563), .Y(n559)
         );
  AOI221XL U709 ( .A0(sti_di[2]), .A1(n567), .B0(sti_di[3]), .B1(n566), .C0(
        n559), .Y(n560) );
  AO22X1 U710 ( .A0(sti_di[13]), .A1(n564), .B0(sti_di[12]), .B1(n563), .Y(
        n562) );
  AOI221XL U711 ( .A0(sti_di[14]), .A1(n567), .B0(sti_di[15]), .B1(n566), .C0(
        n562), .Y(n569) );
  AO22X1 U712 ( .A0(sti_di[9]), .A1(n564), .B0(sti_di[8]), .B1(n563), .Y(n565)
         );
  AOI221XL U713 ( .A0(sti_di[10]), .A1(n567), .B0(sti_di[11]), .B1(n566), .C0(
        n565), .Y(n568) );
  OAI22XL U714 ( .A0(n569), .A1(n481), .B0(n482), .B1(n568), .Y(n570) );
  NOR2X1 U715 ( .A(n483), .B(n491), .Y(n580) );
  NOR2X1 U716 ( .A(n483), .B(n487), .Y(n579) );
  NOR2X1 U717 ( .A(n487), .B(n486), .Y(n577) );
  NOR2X1 U718 ( .A(n490), .B(n486), .Y(n576) );
  AO22X1 U719 ( .A0(sti_di[5]), .A1(n577), .B0(sti_di[4]), .B1(n576), .Y(n571)
         );
  AOI221XL U720 ( .A0(sti_di[6]), .A1(n580), .B0(sti_di[7]), .B1(n579), .C0(
        n571), .Y(n574) );
  AO22X1 U721 ( .A0(sti_di[1]), .A1(n577), .B0(sti_di[0]), .B1(n576), .Y(n572)
         );
  AOI221XL U722 ( .A0(sti_di[2]), .A1(n580), .B0(sti_di[3]), .B1(n579), .C0(
        n572), .Y(n573) );
  OA22X1 U723 ( .A0(n481), .A1(n574), .B0(n482), .B1(n573), .Y(n584) );
  AO22X1 U724 ( .A0(sti_di[13]), .A1(n577), .B0(sti_di[12]), .B1(n576), .Y(
        n575) );
  AOI221XL U725 ( .A0(sti_di[14]), .A1(n580), .B0(sti_di[15]), .B1(n579), .C0(
        n575), .Y(n582) );
  AO22X1 U726 ( .A0(sti_di[9]), .A1(n577), .B0(sti_di[8]), .B1(n576), .Y(n578)
         );
  AOI221XL U727 ( .A0(sti_di[10]), .A1(n580), .B0(sti_di[11]), .B1(n579), .C0(
        n578), .Y(n581) );
  OAI22XL U728 ( .A0(n582), .A1(n481), .B0(n482), .B1(n581), .Y(n583) );
  OAI2BB2XL U729 ( .B0(n584), .B1(N96), .A0N(N96), .A1N(n583), .Y(N688) );
  NOR2X1 U730 ( .A(n484), .B(n491), .Y(n594) );
  NOR2X1 U731 ( .A(n484), .B(n487), .Y(n593) );
  NOR2X1 U732 ( .A(n487), .B(n486), .Y(n591) );
  NOR2X1 U733 ( .A(n489), .B(n486), .Y(n590) );
  AO22X1 U734 ( .A0(sti_di[5]), .A1(n591), .B0(sti_di[4]), .B1(n590), .Y(n585)
         );
  AOI221XL U735 ( .A0(sti_di[6]), .A1(n594), .B0(sti_di[7]), .B1(n593), .C0(
        n585), .Y(n588) );
  AO22X1 U736 ( .A0(sti_di[1]), .A1(n591), .B0(sti_di[0]), .B1(n590), .Y(n586)
         );
  AOI221XL U737 ( .A0(sti_di[2]), .A1(n594), .B0(sti_di[3]), .B1(n593), .C0(
        n586), .Y(n587) );
  OA22X1 U738 ( .A0(n479), .A1(n588), .B0(n482), .B1(n587), .Y(n598) );
  AO22X1 U739 ( .A0(sti_di[13]), .A1(n591), .B0(sti_di[12]), .B1(n590), .Y(
        n589) );
  AOI221XL U740 ( .A0(sti_di[14]), .A1(n594), .B0(sti_di[15]), .B1(n593), .C0(
        n589), .Y(n596) );
  AO22X1 U741 ( .A0(sti_di[9]), .A1(n591), .B0(sti_di[8]), .B1(n590), .Y(n592)
         );
  AOI221XL U742 ( .A0(sti_di[10]), .A1(n594), .B0(sti_di[11]), .B1(n593), .C0(
        n592), .Y(n595) );
  OAI22XL U743 ( .A0(n596), .A1(n481), .B0(n482), .B1(n595), .Y(n597) );
  OAI2BB2XL U744 ( .B0(n598), .B1(N96), .A0N(N96), .A1N(n597), .Y(N693) );
  NOR2X1 U745 ( .A(n484), .B(n491), .Y(n608) );
  NOR2X1 U746 ( .A(n484), .B(n487), .Y(n607) );
  NOR2X1 U747 ( .A(n487), .B(n486), .Y(n605) );
  NOR2X1 U748 ( .A(n488), .B(n486), .Y(n604) );
  AO22X1 U749 ( .A0(sti_di[5]), .A1(n605), .B0(sti_di[4]), .B1(n604), .Y(n599)
         );
  AOI221XL U750 ( .A0(sti_di[6]), .A1(n608), .B0(sti_di[7]), .B1(n607), .C0(
        n599), .Y(n602) );
  AO22X1 U751 ( .A0(sti_di[1]), .A1(n605), .B0(sti_di[0]), .B1(n604), .Y(n600)
         );
  AOI221XL U752 ( .A0(sti_di[2]), .A1(n608), .B0(sti_di[3]), .B1(n607), .C0(
        n600), .Y(n601) );
  OA22X1 U753 ( .A0(n481), .A1(n602), .B0(n482), .B1(n601), .Y(n612) );
  AO22X1 U754 ( .A0(sti_di[13]), .A1(n605), .B0(sti_di[12]), .B1(n604), .Y(
        n603) );
  AOI221XL U755 ( .A0(sti_di[14]), .A1(n608), .B0(sti_di[15]), .B1(n607), .C0(
        n603), .Y(n610) );
  AO22X1 U756 ( .A0(sti_di[9]), .A1(n605), .B0(sti_di[8]), .B1(n604), .Y(n606)
         );
  AOI221XL U757 ( .A0(sti_di[10]), .A1(n608), .B0(sti_di[11]), .B1(n607), .C0(
        n606), .Y(n609) );
  OAI22XL U758 ( .A0(n610), .A1(n481), .B0(N99), .B1(n609), .Y(n611) );
  OAI2BB2XL U759 ( .B0(n612), .B1(N96), .A0N(N96), .A1N(n611), .Y(N698) );
  NOR2X1 U760 ( .A(n484), .B(n488), .Y(n622) );
  NOR2X1 U761 ( .A(n484), .B(n487), .Y(n621) );
  NOR2X1 U762 ( .A(n487), .B(n486), .Y(n619) );
  NOR2X1 U763 ( .A(n490), .B(n486), .Y(n618) );
  AO22X1 U764 ( .A0(sti_di[5]), .A1(n619), .B0(sti_di[4]), .B1(n618), .Y(n613)
         );
  AOI221XL U765 ( .A0(sti_di[6]), .A1(n622), .B0(sti_di[7]), .B1(n621), .C0(
        n613), .Y(n616) );
  AO22X1 U766 ( .A0(sti_di[1]), .A1(n619), .B0(sti_di[0]), .B1(n618), .Y(n614)
         );
  AOI221XL U767 ( .A0(sti_di[2]), .A1(n622), .B0(sti_di[3]), .B1(n621), .C0(
        n614), .Y(n615) );
  OA22X1 U768 ( .A0(n481), .A1(n616), .B0(n482), .B1(n615), .Y(n626) );
  AO22X1 U769 ( .A0(sti_di[13]), .A1(n619), .B0(sti_di[12]), .B1(n618), .Y(
        n617) );
  AOI221XL U770 ( .A0(sti_di[14]), .A1(n622), .B0(sti_di[15]), .B1(n621), .C0(
        n617), .Y(n624) );
  AO22X1 U771 ( .A0(sti_di[9]), .A1(n619), .B0(sti_di[8]), .B1(n618), .Y(n620)
         );
  AOI221XL U772 ( .A0(sti_di[10]), .A1(n622), .B0(sti_di[11]), .B1(n621), .C0(
        n620), .Y(n623) );
  OAI22XL U773 ( .A0(n624), .A1(n481), .B0(n482), .B1(n623), .Y(n625) );
  OAI2BB2XL U774 ( .B0(n626), .B1(N96), .A0N(N96), .A1N(n625), .Y(N730) );
  NOR2BX1 U775 ( .AN(\pixel_reg[0][4] ), .B(\pixel_reg[1][4] ), .Y(n629) );
  OAI22XL U776 ( .A0(n629), .A1(n403), .B0(\pixel_reg[0][5] ), .B1(n629), .Y(
        n635) );
  OAI211X1 U777 ( .A0(\pixel_reg[1][6] ), .A1(n413), .B0(n635), .C0(n634), .Y(
        n636) );
  NAND2BX1 U778 ( .AN(\pixel_reg[2][4] ), .B(\pixel_reg[3][4] ), .Y(n640) );
  NOR2BX1 U779 ( .AN(\pixel_reg[2][4] ), .B(\pixel_reg[3][4] ), .Y(n642) );
  OAI22XL U780 ( .A0(n642), .A1(n441), .B0(\pixel_reg[2][5] ), .B1(n642), .Y(
        n650) );
  NOR2BX1 U781 ( .AN(\pixel_reg[4][4] ), .B(N1027), .Y(n656) );
  NAND2BX1 U782 ( .AN(\pixel_reg[4][2] ), .B(N1025), .Y(n662) );
  OAI21XL U783 ( .A0(\pixel_reg[4][1] ), .A1(n668), .B0(n657), .Y(n660) );
  NOR2BX1 U784 ( .AN(\pixel_reg[4][2] ), .B(N1025), .Y(n658) );
  OAI211X1 U785 ( .A0(N1029), .A1(n442), .B0(n664), .C0(n663), .Y(n665) );
  AO22X1 U786 ( .A0(n671), .A1(\pixel_reg[4][7] ), .B0(n666), .B1(n665), .Y(
        n667) );
  CLKINVX1 U787 ( .A(n691), .Y(n689) );
  MXI2X1 U788 ( .A(n692), .B(n693), .S0(n480), .Y(n392) );
  MXI2X1 U789 ( .A(n694), .B(n695), .S0(DATA_CNT[3]), .Y(n391) );
  OA21XL U790 ( .A0(n692), .A1(DATA_CNT[2]), .B0(n696), .Y(n695) );
  NAND4X1 U791 ( .A(DATA_CNT[1]), .B(n697), .C(DATA_CNT[2]), .D(n480), .Y(n694) );
  NAND2BX1 U792 ( .AN(n698), .B(n699), .Y(n390) );
  MXI2X1 U793 ( .A(n486), .B(n700), .S0(n701), .Y(n698) );
  AOI221XL U794 ( .A0(N249), .A1(n702), .B0(n486), .B1(n703), .C0(n704), .Y(
        n700) );
  AO22X1 U795 ( .A0(n486), .A1(n705), .B0(N179), .B1(n706), .Y(n704) );
  NAND2BX1 U796 ( .AN(n707), .B(n699), .Y(n389) );
  MXI2X1 U797 ( .A(n488), .B(n708), .S0(n701), .Y(n707) );
  AOI221XL U798 ( .A0(n488), .A1(n702), .B0(n487), .B1(n703), .C0(n709), .Y(
        n708) );
  AO22X1 U799 ( .A0(n487), .A1(n705), .B0(N178), .B1(n706), .Y(n709) );
  NAND2BX1 U800 ( .AN(n710), .B(n699), .Y(n388) );
  MXI2X1 U801 ( .A(n482), .B(n711), .S0(n701), .Y(n710) );
  AOI221XL U802 ( .A0(N250), .A1(n702), .B0(N208), .B1(n703), .C0(n712), .Y(
        n711) );
  AO22X1 U803 ( .A0(N187), .A1(n705), .B0(N180), .B1(n706), .Y(n712) );
  NAND2BX1 U804 ( .AN(n713), .B(n699), .Y(n387) );
  MXI2X1 U805 ( .A(N96), .B(n714), .S0(n701), .Y(n713) );
  AOI221XL U806 ( .A0(N251), .A1(n702), .B0(N209), .B1(n703), .C0(n715), .Y(
        n714) );
  AO22X1 U807 ( .A0(N188), .A1(n705), .B0(N181), .B1(n706), .Y(n715) );
  NAND2BX1 U808 ( .AN(n716), .B(n699), .Y(n386) );
  MXI2X1 U809 ( .A(n683), .B(n717), .S0(n701), .Y(n716) );
  AOI221XL U810 ( .A0(N252), .A1(n702), .B0(N210), .B1(n703), .C0(n718), .Y(
        n717) );
  AO22X1 U811 ( .A0(N189), .A1(n705), .B0(N182), .B1(n706), .Y(n718) );
  NAND2BX1 U812 ( .AN(n719), .B(n699), .Y(n385) );
  MXI2X1 U813 ( .A(n682), .B(n720), .S0(n701), .Y(n719) );
  AOI221XL U814 ( .A0(N253), .A1(n702), .B0(N211), .B1(n703), .C0(n721), .Y(
        n720) );
  AO22X1 U815 ( .A0(N190), .A1(n705), .B0(N183), .B1(n706), .Y(n721) );
  NAND2BX1 U816 ( .AN(n722), .B(n699), .Y(n384) );
  MXI2X1 U817 ( .A(n681), .B(n724), .S0(n701), .Y(n722) );
  NAND2X1 U818 ( .A(n733), .B(n480), .Y(n730) );
  AOI221XL U819 ( .A0(N254), .A1(n702), .B0(N212), .B1(n703), .C0(n734), .Y(
        n724) );
  AO22X1 U820 ( .A0(N191), .A1(n705), .B0(N184), .B1(n706), .Y(n734) );
  CLKINVX1 U821 ( .A(n742), .Y(n740) );
  CLKINVX1 U822 ( .A(n743), .Y(n703) );
  AOI222XL U823 ( .A0(n744), .A1(n729), .B0(n745), .B1(n739), .C0(n746), .C1(
        n477), .Y(n743) );
  AO22X1 U824 ( .A0(n477), .A1(n747), .B0(n741), .B1(n748), .Y(n702) );
  OAI21XL U825 ( .A0(DATA_CNT[2]), .A1(DATA_CNT[1]), .B0(n749), .Y(n741) );
  MXI2X1 U826 ( .A(n750), .B(n751), .S0(n752), .Y(n383) );
  NOR3BXL U827 ( .AN(n753), .B(n754), .C(n755), .Y(n752) );
  OAI21XL U828 ( .A0(n686), .A1(n759), .B0(n762), .Y(n380) );
  AOI22X1 U829 ( .A0(N197), .A1(n760), .B0(N218), .B1(n761), .Y(n762) );
  OAI21XL U830 ( .A0(n687), .A1(n759), .B0(n763), .Y(n379) );
  AOI22X1 U831 ( .A0(N196), .A1(n760), .B0(N217), .B1(n761), .Y(n763) );
  OAI21XL U832 ( .A0(n688), .A1(n759), .B0(n764), .Y(n378) );
  AOI22X1 U833 ( .A0(N195), .A1(n760), .B0(N216), .B1(n761), .Y(n764) );
  AOI22X1 U834 ( .A0(N194), .A1(n760), .B0(N215), .B1(n761), .Y(n765) );
  OAI21XL U835 ( .A0(n394), .A1(n759), .B0(n766), .Y(n376) );
  AOI22X1 U836 ( .A0(N193), .A1(n760), .B0(N214), .B1(n761), .Y(n766) );
  OAI2BB1X1 U837 ( .A0N(n768), .A1N(n769), .B0(n759), .Y(n767) );
  OAI21XL U838 ( .A0(n744), .A1(n747), .B0(n729), .Y(n769) );
  MXI2X1 U839 ( .A(n779), .B(n780), .S0(DATA_CNT[1]), .Y(n375) );
  NAND2X1 U840 ( .A(n697), .B(n480), .Y(n779) );
  OAI22XL U841 ( .A0(n692), .A1(n749), .B0(n696), .B1(n781), .Y(n374) );
  OA21XL U842 ( .A0(DATA_CNT[1]), .A1(n692), .B0(n780), .Y(n696) );
  OA21XL U843 ( .A0(n480), .A1(n692), .B0(n693), .Y(n780) );
  NOR2X1 U844 ( .A(n726), .B(EDGE), .Y(n776) );
  CLKINVX1 U845 ( .A(n736), .Y(n747) );
  OAI22XL U846 ( .A0(n784), .A1(n473), .B0(n786), .B1(n472), .Y(n373) );
  CLKINVX1 U847 ( .A(n756), .Y(n788) );
  CLKINVX1 U848 ( .A(Object_flag), .Y(n784) );
  OAI21XL U849 ( .A0(n791), .A1(n726), .B0(reset), .Y(n754) );
  NOR4X1 U850 ( .A(n757), .B(n756), .C(n735), .D(n733), .Y(n723) );
  NOR2X1 U851 ( .A(n450), .B(n756), .Y(n739) );
  NAND2X1 U852 ( .A(n480), .B(n751), .Y(n756) );
  CLKINVX1 U853 ( .A(n745), .Y(n738) );
  NAND4X1 U854 ( .A(n479), .B(sti_addr_row[3]), .C(sti_addr_row[1]), .D(n792), 
        .Y(n745) );
  NOR4X1 U855 ( .A(N185), .B(n681), .C(n682), .D(n683), .Y(n792) );
  OAI22XL U856 ( .A0(n421), .A1(n473), .B0(n488), .B1(n472), .Y(n371) );
  OAI22XL U857 ( .A0(n422), .A1(n473), .B0(n486), .B1(n472), .Y(n370) );
  OAI22XL U858 ( .A0(n423), .A1(n473), .B0(N99), .B1(n472), .Y(n369) );
  OAI22XL U859 ( .A0(n424), .A1(n473), .B0(N96), .B1(n472), .Y(n368) );
  OAI22XL U860 ( .A0(n425), .A1(n473), .B0(n683), .B1(n472), .Y(n367) );
  OAI22XL U861 ( .A0(n426), .A1(n473), .B0(n682), .B1(n472), .Y(n366) );
  OAI22XL U862 ( .A0(n427), .A1(n473), .B0(n681), .B1(n472), .Y(n365) );
  OAI22XL U863 ( .A0(n428), .A1(n473), .B0(n680), .B1(n472), .Y(n364) );
  OAI22XL U864 ( .A0(n429), .A1(n473), .B0(n394), .B1(n472), .Y(n363) );
  OAI22XL U865 ( .A0(n430), .A1(n473), .B0(n400), .B1(n472), .Y(n362) );
  OAI22XL U866 ( .A0(n431), .A1(n473), .B0(n688), .B1(n472), .Y(n361) );
  CLKINVX1 U867 ( .A(sti_addr[6]), .Y(n688) );
  OAI22XL U868 ( .A0(n432), .A1(n473), .B0(n687), .B1(n472), .Y(n360) );
  CLKINVX1 U869 ( .A(sti_addr[7]), .Y(n687) );
  OAI22XL U870 ( .A0(n433), .A1(n473), .B0(n686), .B1(n472), .Y(n359) );
  CLKINVX1 U871 ( .A(sti_addr[8]), .Y(n686) );
  OAI22XL U872 ( .A0(n685), .A1(n473), .B0(n684), .B1(n472), .Y(n358) );
  OAI221XL U873 ( .A0(n468), .A1(n796), .B0(n797), .B1(n798), .C0(n799), .Y(
        n357) );
  MXI2X1 U874 ( .A(\pixel_reg[0][0] ), .B(n800), .S0(n474), .Y(n799) );
  OAI222XL U875 ( .A0(n415), .A1(n798), .B0(n468), .B1(n804), .C0(n805), .C1(
        n474), .Y(n356) );
  OAI222XL U876 ( .A0(n398), .A1(n798), .B0(n468), .B1(n806), .C0(n408), .C1(
        n474), .Y(n355) );
  OAI222XL U877 ( .A0(n404), .A1(n798), .B0(n468), .B1(n807), .C0(n419), .C1(
        n474), .Y(n354) );
  OAI222XL U878 ( .A0(n402), .A1(n798), .B0(n795), .B1(n808), .C0(n437), .C1(
        n474), .Y(n353) );
  OAI222XL U879 ( .A0(n403), .A1(n798), .B0(n795), .B1(n809), .C0(n418), .C1(
        n474), .Y(n352) );
  OAI222XL U880 ( .A0(n401), .A1(n798), .B0(n795), .B1(n810), .C0(n413), .C1(
        n474), .Y(n351) );
  OAI222XL U881 ( .A0(n639), .A1(n798), .B0(n795), .B1(n811), .C0(n417), .C1(
        n474), .Y(n350) );
  NAND2X1 U882 ( .A(n748), .B(n474), .Y(n795) );
  OAI221XL U883 ( .A0(n796), .A1(n815), .B0(n816), .B1(n817), .C0(n818), .Y(
        n349) );
  OAI222XL U884 ( .A0(n397), .A1(n817), .B0(n804), .B1(n815), .C0(n415), .C1(
        n819), .Y(n348) );
  OAI222XL U885 ( .A0(n414), .A1(n817), .B0(n806), .B1(n815), .C0(n398), .C1(
        n819), .Y(n347) );
  OAI222XL U886 ( .A0(n396), .A1(n817), .B0(n807), .B1(n815), .C0(n404), .C1(
        n819), .Y(n346) );
  OAI222XL U887 ( .A0(n443), .A1(n817), .B0(n808), .B1(n815), .C0(n402), .C1(
        n819), .Y(n345) );
  OAI222XL U888 ( .A0(n412), .A1(n817), .B0(n809), .B1(n815), .C0(n403), .C1(
        n819), .Y(n344) );
  OAI222XL U889 ( .A0(n405), .A1(n817), .B0(n810), .B1(n815), .C0(n401), .C1(
        n819), .Y(n343) );
  OAI222XL U890 ( .A0(n820), .A1(n817), .B0(n811), .B1(n815), .C0(n639), .C1(
        n819), .Y(n342) );
  OAI21XL U891 ( .A0(n796), .A1(n821), .B0(n822), .Y(n341) );
  AO21X1 U892 ( .A0(N620), .A1(n825), .B0(n803), .Y(n823) );
  OAI22XL U893 ( .A0(n397), .A1(n475), .B0(n804), .B1(n821), .Y(n340) );
  OAI22XL U894 ( .A0(n414), .A1(n475), .B0(n806), .B1(n821), .Y(n339) );
  OAI22XL U895 ( .A0(n396), .A1(n475), .B0(n807), .B1(n821), .Y(n338) );
  OAI22XL U896 ( .A0(n443), .A1(n475), .B0(n808), .B1(n821), .Y(n337) );
  OAI22XL U897 ( .A0(n412), .A1(n475), .B0(n809), .B1(n821), .Y(n336) );
  OAI22XL U898 ( .A0(n405), .A1(n475), .B0(n810), .B1(n821), .Y(n335) );
  OAI22XL U899 ( .A0(n820), .A1(n475), .B0(n811), .B1(n821), .Y(n334) );
  OA21XL U900 ( .A0(n827), .A1(n729), .B0(n778), .Y(n826) );
  NOR4X1 U901 ( .A(n751), .B(n828), .C(n480), .D(DATA_CNT[2]), .Y(n744) );
  MXI2X1 U902 ( .A(\pixel_reg[3][0] ), .B(n832), .S0(n476), .Y(n831) );
  AO21X1 U903 ( .A0(N693), .A1(n802), .B0(n803), .Y(n832) );
  CLKINVX1 U904 ( .A(n834), .Y(n803) );
  AO22X1 U905 ( .A0(N968), .A1(n837), .B0(N976), .B1(n838), .Y(n836) );
  AO22X1 U906 ( .A0(N969), .A1(n837), .B0(N977), .B1(n838), .Y(n841) );
  AO22X1 U907 ( .A0(n458), .A1(\pixel_reg[4][1] ), .B0(N1034), .B1(n461), .Y(
        n840) );
  AO22X1 U908 ( .A0(N970), .A1(n837), .B0(N978), .B1(n838), .Y(n843) );
  AO22X1 U909 ( .A0(N971), .A1(n837), .B0(N979), .B1(n838), .Y(n845) );
  AO22X1 U910 ( .A0(N972), .A1(n837), .B0(N980), .B1(n838), .Y(n847) );
  OAI222XL U911 ( .A0(n455), .A1(n674), .B0(n809), .B1(n829), .C0(n441), .C1(
        n476), .Y(n328) );
  AO22X1 U912 ( .A0(N973), .A1(n837), .B0(N981), .B1(n838), .Y(n849) );
  AO22X1 U913 ( .A0(n458), .A1(\pixel_reg[4][5] ), .B0(N1038), .B1(n461), .Y(
        n848) );
  OAI222XL U914 ( .A0(n830), .A1(n673), .B0(n810), .B1(n829), .C0(n410), .C1(
        n476), .Y(n327) );
  AO22X1 U915 ( .A0(N974), .A1(n837), .B0(N982), .B1(n838), .Y(n851) );
  AO22X1 U916 ( .A0(n458), .A1(\pixel_reg[4][6] ), .B0(N1039), .B1(n461), .Y(
        n850) );
  NOR2X1 U917 ( .A(n735), .B(n751), .Y(n748) );
  AO22X1 U918 ( .A0(N975), .A1(n837), .B0(N983), .B1(n838), .Y(n853) );
  CLKINVX1 U919 ( .A(n813), .Y(n731) );
  NAND3X1 U920 ( .A(n480), .B(n781), .C(DATA_CNT[1]), .Y(n749) );
  NAND3X1 U921 ( .A(n781), .B(n775), .C(n828), .Y(n726) );
  OAI21XL U922 ( .A0(n796), .A1(n857), .B0(n858), .Y(n325) );
  NAND3X1 U923 ( .A(n861), .B(n834), .C(n862), .Y(n859) );
  AOI22X1 U924 ( .A0(N633), .A1(n825), .B0(N698), .B1(n802), .Y(n862) );
  NOR2X1 U925 ( .A(EDGE), .B(FIRST_ROW), .Y(n827) );
  CLKINVX1 U926 ( .A(res_di[0]), .Y(n796) );
  OAI22XL U927 ( .A0(n438), .A1(n860), .B0(n804), .B1(n857), .Y(n324) );
  CLKINVX1 U928 ( .A(res_di[1]), .Y(n804) );
  OAI22XL U929 ( .A0(n440), .A1(n860), .B0(n806), .B1(n857), .Y(n323) );
  CLKINVX1 U930 ( .A(res_di[2]), .Y(n806) );
  OAI22XL U931 ( .A0(n416), .A1(n860), .B0(n807), .B1(n857), .Y(n322) );
  CLKINVX1 U932 ( .A(res_di[3]), .Y(n807) );
  OAI22XL U933 ( .A0(n439), .A1(n860), .B0(n808), .B1(n857), .Y(n321) );
  CLKINVX1 U934 ( .A(res_di[4]), .Y(n808) );
  OAI22XL U935 ( .A0(n420), .A1(n860), .B0(n809), .B1(n857), .Y(n320) );
  CLKINVX1 U936 ( .A(res_di[5]), .Y(n809) );
  OAI22XL U937 ( .A0(n442), .A1(n860), .B0(n810), .B1(n857), .Y(n319) );
  CLKINVX1 U938 ( .A(res_di[6]), .Y(n810) );
  OAI22XL U939 ( .A0(n436), .A1(n860), .B0(n811), .B1(n857), .Y(n318) );
  CLKINVX1 U940 ( .A(res_di[7]), .Y(n811) );
  CLKINVX1 U941 ( .A(n778), .Y(n856) );
  CLKINVX1 U942 ( .A(n866), .Y(N958) );
  OAI22XL U943 ( .A0(n735), .A1(n794), .B0(n867), .B1(n758), .Y(N123) );
  OAI31XL U944 ( .A0(n758), .A1(STATE[0]), .A2(n869), .B0(n870), .Y(N122) );
  AOI32X1 U945 ( .A0(n871), .A1(n872), .A2(n873), .B0(n690), .B1(n874), .Y(
        n869) );
  NAND2X1 U946 ( .A(n868), .B(n733), .Y(n874) );
  AND4X1 U947 ( .A(n394), .B(n400), .C(sti_addr[3]), .D(n875), .Y(n733) );
  NOR4X1 U948 ( .A(sti_addr[9]), .B(sti_addr[8]), .C(sti_addr[7]), .D(
        sti_addr[6]), .Y(n875) );
  CLKINVX1 U949 ( .A(n757), .Y(n868) );
  NAND4X1 U950 ( .A(n683), .B(n682), .C(N185), .D(n876), .Y(n757) );
  NOR4X1 U951 ( .A(sti_addr_row[3]), .B(n479), .C(n483), .D(sti_addr[2]), .Y(
        n876) );
  NOR4X1 U952 ( .A(n482), .B(n486), .C(n488), .D(n742), .Y(n873) );
  NAND4X1 U953 ( .A(sti_addr[7]), .B(sti_addr[8]), .C(sti_addr[6]), .D(n877), 
        .Y(n742) );
  NOR4X1 U954 ( .A(n400), .B(n394), .C(n680), .D(n684), .Y(n877) );
  NOR3X1 U955 ( .A(n682), .B(n691), .C(n681), .Y(n872) );
  CLKINVX1 U956 ( .A(sti_addr[2]), .Y(n681) );
  NAND2X1 U957 ( .A(STATE[1]), .B(n864), .Y(n691) );
  CLKINVX1 U958 ( .A(sti_addr[1]), .Y(n682) );
  NOR2X1 U959 ( .A(n683), .B(N96), .Y(n871) );
  CLKINVX1 U960 ( .A(sti_addr[0]), .Y(n683) );
  NOR2X1 U961 ( .A(n878), .B(n758), .Y(N121) );
  AOI221XL U962 ( .A0(n863), .A1(n864), .B0(sti_rd), .B1(n794), .C0(n690), .Y(
        n878) );
  NOR2X1 U963 ( .A(n864), .B(STATE[1]), .Y(n690) );
  NAND4X1 U964 ( .A(n879), .B(n736), .C(n828), .D(n775), .Y(n794) );
  MXI2X1 U965 ( .A(EDGE), .B(n480), .S0(DATA_CNT[2]), .Y(n879) );
  NAND2X1 U966 ( .A(STATE[0]), .B(n864), .Y(n783) );
  MXI2X1 U967 ( .A(n880), .B(n865), .S0(n478), .Y(N1022) );
  CLKMX2X2 U968 ( .A(N954), .B(N964), .S0(n478), .Y(N1021) );
  MXI2X1 U969 ( .A(n882), .B(n883), .S0(n478), .Y(N1020) );
  MXI2X1 U970 ( .A(n884), .B(n885), .S0(n478), .Y(N1019) );
  CLKMX2X2 U971 ( .A(N997), .B(N960), .S0(n478), .Y(N1017) );
  NOR2X1 U972 ( .A(n881), .B(n897), .Y(n896) );
  AOI21X1 U973 ( .A0(n881), .A1(n897), .B0(N964), .Y(n895) );
  CLKINVX1 U974 ( .A(n882), .Y(N953) );
  NOR3X1 U975 ( .A(n887), .B(n900), .C(N997), .Y(n899) );
  MXI2X1 U976 ( .A(n398), .B(n408), .S0(N946), .Y(N997) );
  MXI2X1 U977 ( .A(\pixel_reg[1][1] ), .B(\pixel_reg[0][1] ), .S0(N946), .Y(
        n888) );
  NAND2X1 U978 ( .A(N959), .B(n903), .Y(n901) );
  NAND2X1 U979 ( .A(N995), .B(n866), .Y(n903) );
  MXI2X1 U980 ( .A(\pixel_reg[1][3] ), .B(\pixel_reg[0][3] ), .S0(N946), .Y(
        n886) );
  MXI2X1 U981 ( .A(\pixel_reg[1][6] ), .B(\pixel_reg[0][6] ), .S0(N946), .Y(
        n881) );
  MXI2X1 U982 ( .A(\pixel_reg[1][4] ), .B(\pixel_reg[0][4] ), .S0(N946), .Y(
        n884) );
  NAND2X1 U983 ( .A(N955), .B(n865), .Y(n890) );
  MXI2X1 U984 ( .A(\pixel_reg[1][7] ), .B(\pixel_reg[0][7] ), .S0(N946), .Y(
        n880) );
endmodule

