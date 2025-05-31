// Created by ihdl
module gcd_top(clk, reset, start, data_in1, data_in2, done, result);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire [7:0] a;
  wire [7:0] b;
  input clk;
  wire clk;
  wire \controller.clk ;
  wire \controller.done ;
  wire [1:0] \controller.next ;
  wire \controller.reset ;
  wire \controller.start ;
  wire [1:0] \controller.state ;
  input [7:0] data_in1;
  wire [7:0] data_in1;
  input [7:0] data_in2;
  wire [7:0] data_in2;
  wire [7:0] \datapath.a_out ;
  wire [7:0] \datapath.a_reg_out ;
  wire [7:0] \datapath.b_out ;
  wire [7:0] \datapath.b_reg_out ;
  wire \datapath.clk ;
  wire [7:0] \datapath.data_in1 ;
  wire [7:0] \datapath.data_in2 ;
  wire [7:0] \datapath.mux_a.in0 ;
  wire [7:0] \datapath.mux_b.in0 ;
  wire \datapath.reg_a.clk ;
  wire [7:0] \datapath.reg_a.q ;
  wire \datapath.reg_a.reset ;
  wire \datapath.reg_b.clk ;
  wire [7:0] \datapath.reg_b.q ;
  wire \datapath.reg_b.reset ;
  wire \datapath.reset ;
  wire [7:0] \datapath.sub_a.a ;
  wire [7:0] \datapath.sub_a.b ;
  wire [7:0] \datapath.sub_b.a ;
  wire [7:0] \datapath.sub_b.b ;
  output done;
  wire done;
  input reset;
  wire reset;
  output [7:0] result;
  wire [7:0] result;
  input start;
  wire start;
  INV_X1 _164_ (
    .A(\datapath.reg_b.q [7]),
    .ZN(_121_)
  );
  INV_X1 _165_ (
    .A(\datapath.reg_b.q [5]),
    .ZN(_122_)
  );
  INV_X1 _166_ (
    .A(\datapath.reg_b.q [4]),
    .ZN(_123_)
  );
  INV_X1 _167_ (
    .A(\datapath.reg_b.q [3]),
    .ZN(_124_)
  );
  INV_X1 _168_ (
    .A(\datapath.reg_b.q [2]),
    .ZN(_125_)
  );
  INV_X1 _169_ (
    .A(\datapath.reg_b.q [1]),
    .ZN(_126_)
  );
  INV_X1 _170_ (
    .A(\datapath.reg_b.q [0]),
    .ZN(_127_)
  );
  INV_X1 _171_ (
    .A(\datapath.reg_a.q [7]),
    .ZN(_128_)
  );
  INV_X1 _172_ (
    .A(\datapath.reg_a.q [6]),
    .ZN(_129_)
  );
  INV_X1 _173_ (
    .A(\datapath.reg_a.q [5]),
    .ZN(_130_)
  );
  INV_X1 _174_ (
    .A(\datapath.reg_a.q [4]),
    .ZN(_131_)
  );
  INV_X1 _175_ (
    .A(\datapath.reg_a.q [3]),
    .ZN(_132_)
  );
  INV_X1 _176_ (
    .A(\datapath.reg_a.q [2]),
    .ZN(_133_)
  );
  INV_X1 _177_ (
    .A(\datapath.reg_a.q [1]),
    .ZN(_134_)
  );
  INV_X1 _178_ (
    .A(\datapath.reg_a.q [0]),
    .ZN(_135_)
  );
  INV_X1 _179_ (
    .A(\controller.state [1]),
    .ZN(_136_)
  );
  INV_X1 _180_ (
    .A(\controller.state [0]),
    .ZN(_137_)
  );
  INV_X1 _181_ (
    .A(reset),
    .ZN(_000_)
  );
  NAND2_X1 _182_ (
    .A1(\controller.state [1]),
    .A2(_137_),
    .ZN(_138_)
  );
  INV_X1 _183_ (
    .A(_138_),
    .ZN(_139_)
  );
  NAND2_X1 _184_ (
    .A1(\datapath.reg_b.q [7]),
    .A2(_128_),
    .ZN(_140_)
  );
  OR2_X1 _185_ (
    .A1(\datapath.reg_b.q [6]),
    .A2(_129_),
    .ZN(_141_)
  );
  NAND2_X1 _186_ (
    .A1(\datapath.reg_b.q [6]),
    .A2(_129_),
    .ZN(_142_)
  );
  NAND2_X1 _187_ (
    .A1(_141_),
    .A2(_142_),
    .ZN(_143_)
  );
  NOR2_X1 _188_ (
    .A1(_122_),
    .A2(\datapath.reg_a.q [5]),
    .ZN(_144_)
  );
  NOR2_X1 _189_ (
    .A1(\datapath.reg_b.q [5]),
    .A2(_130_),
    .ZN(_145_)
  );
  NAND2_X1 _190_ (
    .A1(_122_),
    .A2(\datapath.reg_a.q [5]),
    .ZN(_034_)
  );
  NOR2_X1 _191_ (
    .A1(\datapath.reg_b.q [4]),
    .A2(_131_),
    .ZN(_035_)
  );
  NAND2_X1 _192_ (
    .A1(\datapath.reg_b.q [4]),
    .A2(_131_),
    .ZN(_036_)
  );
  XOR2_X1 _193_ (
    .A(\datapath.reg_b.q [4]),
    .B(\datapath.reg_a.q [4]),
    .Z(_037_)
  );
  NOR2_X1 _194_ (
    .A1(_124_),
    .A2(\datapath.reg_a.q [3]),
    .ZN(_038_)
  );
  NAND2_X1 _195_ (
    .A1(_124_),
    .A2(\datapath.reg_a.q [3]),
    .ZN(_039_)
  );
  NAND2_X1 _196_ (
    .A1(_125_),
    .A2(\datapath.reg_a.q [2]),
    .ZN(_040_)
  );
  XNOR2_X1 _197_ (
    .A(\datapath.reg_b.q [2]),
    .B(\datapath.reg_a.q [2]),
    .ZN(_041_)
  );
  XOR2_X1 _198_ (
    .A(\datapath.reg_b.q [2]),
    .B(\datapath.reg_a.q [2]),
    .Z(_042_)
  );
  NOR2_X1 _199_ (
    .A1(\datapath.reg_b.q [1]),
    .A2(_134_),
    .ZN(_043_)
  );
  NOR2_X1 _200_ (
    .A1(_127_),
    .A2(\datapath.reg_a.q [0]),
    .ZN(_044_)
  );
  NOR2_X1 _201_ (
    .A1(_126_),
    .A2(\datapath.reg_a.q [1]),
    .ZN(_045_)
  );
  XOR2_X1 _202_ (
    .A(\datapath.reg_b.q [1]),
    .B(\datapath.reg_a.q [1]),
    .Z(_046_)
  );
  AOI21_X1 _203_ (
    .A(_046_),
    .B1(_135_),
    .B2(\datapath.reg_b.q [0]),
    .ZN(_047_)
  );
  OAI21_X1 _204_ (
    .A(_041_),
    .B1(_043_),
    .B2(_047_),
    .ZN(_048_)
  );
  NAND2_X1 _205_ (
    .A1(_040_),
    .A2(_048_),
    .ZN(_049_)
  );
  AND3_X1 _206_ (
    .A1(_039_),
    .A2(_040_),
    .A3(_048_),
    .ZN(_050_)
  );
  NOR2_X1 _207_ (
    .A1(_038_),
    .A2(_050_),
    .ZN(_051_)
  );
  NOR3_X1 _208_ (
    .A1(_037_),
    .A2(_038_),
    .A3(_050_),
    .ZN(_052_)
  );
  NOR2_X1 _209_ (
    .A1(_035_),
    .A2(_052_),
    .ZN(_053_)
  );
  NOR3_X1 _210_ (
    .A1(_145_),
    .A2(_035_),
    .A3(_052_),
    .ZN(_054_)
  );
  OR3_X1 _211_ (
    .A1(_143_),
    .A2(_144_),
    .A3(_054_),
    .ZN(_055_)
  );
  NAND2_X1 _212_ (
    .A1(_141_),
    .A2(_055_),
    .ZN(_056_)
  );
  OAI211_X1 _213_ (
    .A(_141_),
    .B(_055_),
    .C1(\datapath.reg_b.q [7]),
    .C2(_128_),
    .ZN(_057_)
  );
  AOI21_X1 _214_ (
    .A(_138_),
    .B1(_140_),
    .B2(_057_),
    .ZN(_058_)
  );
  NOR2_X1 _215_ (
    .A1(\controller.state [1]),
    .A2(_137_),
    .ZN(_059_)
  );
  NAND2_X1 _216_ (
    .A1(_136_),
    .A2(\controller.state [0]),
    .ZN(_060_)
  );
  OR2_X1 _217_ (
    .A1(_058_),
    .A2(_059_),
    .ZN(_061_)
  );
  XNOR2_X1 _218_ (
    .A(\datapath.reg_b.q [7]),
    .B(\datapath.reg_a.q [7]),
    .ZN(_062_)
  );
  NAND2_X1 _219_ (
    .A1(_127_),
    .A2(\datapath.reg_a.q [0]),
    .ZN(_063_)
  );
  AOI21_X1 _220_ (
    .A(_046_),
    .B1(\datapath.reg_a.q [0]),
    .B2(_127_),
    .ZN(_064_)
  );
  OAI21_X1 _221_ (
    .A(_041_),
    .B1(_045_),
    .B2(_064_),
    .ZN(_065_)
  );
  OAI21_X1 _222_ (
    .A(_065_),
    .B1(\datapath.reg_a.q [2]),
    .B2(_125_),
    .ZN(_066_)
  );
  AOI21_X1 _223_ (
    .A(_038_),
    .B1(_039_),
    .B2(_066_),
    .ZN(_067_)
  );
  OAI21_X1 _224_ (
    .A(_036_),
    .B1(_037_),
    .B2(_067_),
    .ZN(_068_)
  );
  AOI21_X1 _225_ (
    .A(_144_),
    .B1(_034_),
    .B2(_068_),
    .ZN(_069_)
  );
  OAI21_X1 _226_ (
    .A(_142_),
    .B1(_143_),
    .B2(_069_),
    .ZN(_070_)
  );
  XOR2_X1 _227_ (
    .A(_062_),
    .B(_070_),
    .Z(_071_)
  );
  AOI22_X1 _228_ (
    .A1(data_in2[7]),
    .A2(_059_),
    .B1(_071_),
    .B2(_058_),
    .ZN(_072_)
  );
  OAI21_X1 _229_ (
    .A(_072_),
    .B1(_061_),
    .B2(_121_),
    .ZN(_033_)
  );
  NOR3_X1 _230_ (
    .A1(\datapath.reg_b.q [6]),
    .A2(_058_),
    .A3(_059_),
    .ZN(_073_)
  );
  NOR2_X1 _231_ (
    .A1(data_in2[6]),
    .A2(_060_),
    .ZN(_074_)
  );
  XNOR2_X1 _232_ (
    .A(_143_),
    .B(_069_),
    .ZN(_075_)
  );
  AND2_X1 _233_ (
    .A1(_058_),
    .A2(_075_),
    .ZN(_076_)
  );
  NOR3_X1 _234_ (
    .A1(_073_),
    .A2(_074_),
    .A3(_076_),
    .ZN(_032_)
  );
  NOR2_X1 _235_ (
    .A1(_144_),
    .A2(_145_),
    .ZN(_077_)
  );
  XNOR2_X1 _236_ (
    .A(_068_),
    .B(_077_),
    .ZN(_078_)
  );
  AND2_X1 _237_ (
    .A1(_058_),
    .A2(_078_),
    .ZN(_079_)
  );
  AOI21_X1 _238_ (
    .A(_058_),
    .B1(_059_),
    .B2(data_in2[5]),
    .ZN(_080_)
  );
  OAI22_X1 _239_ (
    .A1(_122_),
    .A2(_061_),
    .B1(_079_),
    .B2(_080_),
    .ZN(_031_)
  );
  NAND2_X1 _240_ (
    .A1(data_in2[4]),
    .A2(_059_),
    .ZN(_081_)
  );
  XOR2_X1 _241_ (
    .A(_037_),
    .B(_067_),
    .Z(_082_)
  );
  NAND2_X1 _242_ (
    .A1(_058_),
    .A2(_082_),
    .ZN(_083_)
  );
  OAI211_X1 _243_ (
    .A(_081_),
    .B(_083_),
    .C1(_123_),
    .C2(_061_),
    .ZN(_030_)
  );
  XNOR2_X1 _244_ (
    .A(\datapath.reg_b.q [3]),
    .B(\datapath.reg_a.q [3]),
    .ZN(_084_)
  );
  XNOR2_X1 _245_ (
    .A(_066_),
    .B(_084_),
    .ZN(_085_)
  );
  AND2_X1 _246_ (
    .A1(_058_),
    .A2(_085_),
    .ZN(_086_)
  );
  AOI21_X1 _247_ (
    .A(_058_),
    .B1(_059_),
    .B2(data_in2[3]),
    .ZN(_087_)
  );
  OAI22_X1 _248_ (
    .A1(_124_),
    .A2(_061_),
    .B1(_086_),
    .B2(_087_),
    .ZN(_029_)
  );
  NAND2_X1 _249_ (
    .A1(data_in2[2]),
    .A2(_059_),
    .ZN(_088_)
  );
  OR3_X1 _250_ (
    .A1(_041_),
    .A2(_045_),
    .A3(_064_),
    .ZN(_089_)
  );
  NAND3_X1 _251_ (
    .A1(_058_),
    .A2(_065_),
    .A3(_089_),
    .ZN(_090_)
  );
  OAI211_X1 _252_ (
    .A(_088_),
    .B(_090_),
    .C1(_125_),
    .C2(_061_),
    .ZN(_028_)
  );
  NAND2_X1 _253_ (
    .A1(data_in2[1]),
    .A2(_059_),
    .ZN(_091_)
  );
  XNOR2_X1 _254_ (
    .A(_046_),
    .B(_063_),
    .ZN(_092_)
  );
  NAND2_X1 _255_ (
    .A1(_058_),
    .A2(_092_),
    .ZN(_093_)
  );
  OAI211_X1 _256_ (
    .A(_091_),
    .B(_093_),
    .C1(_126_),
    .C2(_061_),
    .ZN(_027_)
  );
  XNOR2_X1 _257_ (
    .A(\datapath.reg_b.q [0]),
    .B(\datapath.reg_a.q [0]),
    .ZN(_094_)
  );
  AND2_X1 _258_ (
    .A1(_058_),
    .A2(_094_),
    .ZN(_095_)
  );
  AOI21_X1 _259_ (
    .A(_058_),
    .B1(_059_),
    .B2(data_in2[0]),
    .ZN(_096_)
  );
  OAI22_X1 _260_ (
    .A1(_127_),
    .A2(_061_),
    .B1(_095_),
    .B2(_096_),
    .ZN(_026_)
  );
  AND4_X1 _261_ (
    .A1(_062_),
    .A2(_077_),
    .A3(_084_),
    .A4(_094_),
    .ZN(_097_)
  );
  NOR4_X1 _262_ (
    .A1(_143_),
    .A2(_037_),
    .A3(_042_),
    .A4(_046_),
    .ZN(_098_)
  );
  NAND2_X1 _263_ (
    .A1(_097_),
    .A2(_098_),
    .ZN(_099_)
  );
  NAND4_X1 _264_ (
    .A1(_139_),
    .A2(_140_),
    .A3(_057_),
    .A4(_099_),
    .ZN(_100_)
  );
  NAND2_X1 _265_ (
    .A1(_060_),
    .A2(_100_),
    .ZN(_101_)
  );
  XNOR2_X1 _266_ (
    .A(_056_),
    .B(_062_),
    .ZN(_102_)
  );
  NAND2_X1 _267_ (
    .A1(data_in1[7]),
    .A2(_059_),
    .ZN(_103_)
  );
  OAI221_X1 _268_ (
    .A(_103_),
    .B1(_102_),
    .B2(_100_),
    .C1(_128_),
    .C2(_101_),
    .ZN(_025_)
  );
  OAI21_X1 _269_ (
    .A(_143_),
    .B1(_144_),
    .B2(_054_),
    .ZN(_104_)
  );
  NAND2_X1 _270_ (
    .A1(_055_),
    .A2(_104_),
    .ZN(_105_)
  );
  NAND2_X1 _271_ (
    .A1(data_in1[6]),
    .A2(_059_),
    .ZN(_106_)
  );
  OAI221_X1 _272_ (
    .A(_106_),
    .B1(_105_),
    .B2(_100_),
    .C1(_129_),
    .C2(_101_),
    .ZN(_024_)
  );
  XOR2_X1 _273_ (
    .A(_053_),
    .B(_077_),
    .Z(_107_)
  );
  NAND2_X1 _274_ (
    .A1(data_in1[5]),
    .A2(_059_),
    .ZN(_108_)
  );
  MUX2_X1 _275_ (
    .A(_107_),
    .B(_108_),
    .S(_100_),
    .Z(_109_)
  );
  OAI21_X1 _276_ (
    .A(_109_),
    .B1(_101_),
    .B2(_130_),
    .ZN(_023_)
  );
  NAND2_X1 _277_ (
    .A1(data_in1[4]),
    .A2(_059_),
    .ZN(_110_)
  );
  XOR2_X1 _278_ (
    .A(_037_),
    .B(_051_),
    .Z(_111_)
  );
  OAI221_X1 _279_ (
    .A(_110_),
    .B1(_111_),
    .B2(_100_),
    .C1(_101_),
    .C2(_131_),
    .ZN(_022_)
  );
  XNOR2_X1 _280_ (
    .A(_049_),
    .B(_084_),
    .ZN(_112_)
  );
  NAND2_X1 _281_ (
    .A1(data_in1[3]),
    .A2(_059_),
    .ZN(_113_)
  );
  OAI221_X1 _282_ (
    .A(_113_),
    .B1(_112_),
    .B2(_100_),
    .C1(_132_),
    .C2(_101_),
    .ZN(_021_)
  );
  NAND2_X1 _283_ (
    .A1(data_in1[2]),
    .A2(_059_),
    .ZN(_114_)
  );
  OR3_X1 _284_ (
    .A1(_041_),
    .A2(_043_),
    .A3(_047_),
    .ZN(_115_)
  );
  NAND2_X1 _285_ (
    .A1(_048_),
    .A2(_115_),
    .ZN(_116_)
  );
  OAI221_X1 _286_ (
    .A(_114_),
    .B1(_116_),
    .B2(_100_),
    .C1(_101_),
    .C2(_133_),
    .ZN(_020_)
  );
  XNOR2_X1 _287_ (
    .A(_044_),
    .B(_046_),
    .ZN(_117_)
  );
  NAND2_X1 _288_ (
    .A1(data_in1[1]),
    .A2(_059_),
    .ZN(_118_)
  );
  OAI221_X1 _289_ (
    .A(_118_),
    .B1(_117_),
    .B2(_100_),
    .C1(_134_),
    .C2(_101_),
    .ZN(_019_)
  );
  NAND2_X1 _290_ (
    .A1(data_in1[0]),
    .A2(_059_),
    .ZN(_119_)
  );
  OAI221_X1 _291_ (
    .A(_119_),
    .B1(_100_),
    .B2(_094_),
    .C1(_135_),
    .C2(_101_),
    .ZN(_018_)
  );
  NOR2_X1 _292_ (
    .A1(_136_),
    .A2(_137_),
    .ZN(done)
  );
  NAND3_X1 _293_ (
    .A1(_136_),
    .A2(_137_),
    .A3(start),
    .ZN(_120_)
  );
  OAI21_X1 _294_ (
    .A(_120_),
    .B1(_099_),
    .B2(_138_),
    .ZN(\controller.next [0])
  );
  NAND2_X1 _295_ (
    .A1(_138_),
    .A2(_060_),
    .ZN(\controller.next [1])
  );
  INV_X1 _296_ (
    .A(reset),
    .ZN(_001_)
  );
  INV_X1 _297_ (
    .A(reset),
    .ZN(_002_)
  );
  INV_X1 _298_ (
    .A(reset),
    .ZN(_003_)
  );
  INV_X1 _299_ (
    .A(reset),
    .ZN(_004_)
  );
  INV_X1 _300_ (
    .A(reset),
    .ZN(_005_)
  );
  INV_X1 _301_ (
    .A(reset),
    .ZN(_006_)
  );
  INV_X1 _302_ (
    .A(reset),
    .ZN(_007_)
  );
  INV_X1 _303_ (
    .A(reset),
    .ZN(_008_)
  );
  INV_X1 _304_ (
    .A(reset),
    .ZN(_009_)
  );
  INV_X1 _305_ (
    .A(reset),
    .ZN(_010_)
  );
  INV_X1 _306_ (
    .A(reset),
    .ZN(_011_)
  );
  INV_X1 _307_ (
    .A(reset),
    .ZN(_012_)
  );
  INV_X1 _308_ (
    .A(reset),
    .ZN(_013_)
  );
  INV_X1 _309_ (
    .A(reset),
    .ZN(_014_)
  );
  INV_X1 _310_ (
    .A(reset),
    .ZN(_015_)
  );
  INV_X1 _311_ (
    .A(reset),
    .ZN(_016_)
  );
  INV_X1 _312_ (
    .A(reset),
    .ZN(_017_)
  );
  DFFR_X1 _313_ (
    .CK(clk),
    .D(_018_),
    .Q(\datapath.reg_a.q [0]),
    .QN(_163_),
    .RN(_000_)
  );
  DFFR_X1 _314_ (
    .CK(clk),
    .D(_019_),
    .Q(\datapath.reg_a.q [1]),
    .QN(_162_),
    .RN(_001_)
  );
  DFFR_X1 _315_ (
    .CK(clk),
    .D(_020_),
    .Q(\datapath.reg_a.q [2]),
    .QN(_161_),
    .RN(_002_)
  );
  DFFR_X1 _316_ (
    .CK(clk),
    .D(_021_),
    .Q(\datapath.reg_a.q [3]),
    .QN(_160_),
    .RN(_003_)
  );
  DFFR_X1 _317_ (
    .CK(clk),
    .D(_022_),
    .Q(\datapath.reg_a.q [4]),
    .QN(_159_),
    .RN(_004_)
  );
  DFFR_X1 _318_ (
    .CK(clk),
    .D(_023_),
    .Q(\datapath.reg_a.q [5]),
    .QN(_158_),
    .RN(_005_)
  );
  DFFR_X1 _319_ (
    .CK(clk),
    .D(_024_),
    .Q(\datapath.reg_a.q [6]),
    .QN(_157_),
    .RN(_006_)
  );
  DFFR_X1 _320_ (
    .CK(clk),
    .D(_025_),
    .Q(\datapath.reg_a.q [7]),
    .QN(_156_),
    .RN(_007_)
  );
  DFFR_X1 _321_ (
    .CK(clk),
    .D(\controller.next [0]),
    .Q(\controller.state [0]),
    .QN(_155_),
    .RN(_008_)
  );
  DFFR_X1 _322_ (
    .CK(clk),
    .D(\controller.next [1]),
    .Q(\controller.state [1]),
    .QN(_154_),
    .RN(_009_)
  );
  DFFR_X1 _323_ (
    .CK(clk),
    .D(_026_),
    .Q(\datapath.reg_b.q [0]),
    .QN(_153_),
    .RN(_010_)
  );
  DFFR_X1 _324_ (
    .CK(clk),
    .D(_027_),
    .Q(\datapath.reg_b.q [1]),
    .QN(_152_),
    .RN(_011_)
  );
  DFFR_X1 _325_ (
    .CK(clk),
    .D(_028_),
    .Q(\datapath.reg_b.q [2]),
    .QN(_151_),
    .RN(_012_)
  );
  DFFR_X1 _326_ (
    .CK(clk),
    .D(_029_),
    .Q(\datapath.reg_b.q [3]),
    .QN(_150_),
    .RN(_013_)
  );
  DFFR_X1 _327_ (
    .CK(clk),
    .D(_030_),
    .Q(\datapath.reg_b.q [4]),
    .QN(_149_),
    .RN(_014_)
  );
  DFFR_X1 _328_ (
    .CK(clk),
    .D(_031_),
    .Q(\datapath.reg_b.q [5]),
    .QN(_148_),
    .RN(_015_)
  );
  DFFR_X1 _329_ (
    .CK(clk),
    .D(_032_),
    .Q(\datapath.reg_b.q [6]),
    .QN(_147_),
    .RN(_016_)
  );
  DFFR_X1 _330_ (
    .CK(clk),
    .D(_033_),
    .Q(\datapath.reg_b.q [7]),
    .QN(_146_),
    .RN(_017_)
  );
  assign a = \datapath.reg_a.q ;
  assign b = \datapath.reg_b.q ;
  assign \controller.clk  = clk;
  assign \controller.done  = done;
  assign \controller.reset  = reset;
  assign \controller.start  = start;
  assign \datapath.a_out  = \datapath.reg_a.q ;
  assign \datapath.a_reg_out  = \datapath.reg_a.q ;
  assign \datapath.b_out  = \datapath.reg_b.q ;
  assign \datapath.b_reg_out  = \datapath.reg_b.q ;
  assign \datapath.clk  = clk;
  assign \datapath.data_in1  = data_in1;
  assign \datapath.data_in2  = data_in2;
  assign \datapath.mux_a.in0  = data_in1;
  assign \datapath.mux_b.in0  = data_in2;
  assign \datapath.reg_a.clk  = clk;
  assign \datapath.reg_a.reset  = reset;
  assign \datapath.reg_b.clk  = clk;
  assign \datapath.reg_b.reset  = reset;
  assign \datapath.reset  = reset;
  assign \datapath.sub_a.a  = \datapath.reg_a.q ;
  assign \datapath.sub_a.b  = \datapath.reg_b.q ;
  assign \datapath.sub_b.a  = \datapath.reg_b.q ;
  assign \datapath.sub_b.b  = \datapath.reg_a.q ;
  assign result = \datapath.reg_a.q ;
endmodule