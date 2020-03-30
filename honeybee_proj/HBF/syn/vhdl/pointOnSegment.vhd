-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pointOnSegment is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_x : IN STD_LOGIC_VECTOR (31 downto 0);
    p_y : IN STD_LOGIC_VECTOR (31 downto 0);
    p_z : IN STD_LOGIC_VECTOR (31 downto 0);
    e_p1_x : IN STD_LOGIC_VECTOR (31 downto 0);
    e_p1_y : IN STD_LOGIC_VECTOR (31 downto 0);
    e_p1_z : IN STD_LOGIC_VECTOR (31 downto 0);
    e_p2_x : IN STD_LOGIC_VECTOR (31 downto 0);
    e_p2_y : IN STD_LOGIC_VECTOR (31 downto 0);
    e_p2_z : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of pointOnSegment is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_const_lv5_5 : STD_LOGIC_VECTOR (4 downto 0) := "00101";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_lv5_3 : STD_LOGIC_VECTOR (4 downto 0) := "00011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_a_fu_210_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_a_reg_914 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal p_a_1_fu_222_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_a_1_reg_920 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_a_2_fu_310_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_a_2_reg_926 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_a_3_fu_322_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_a_3_reg_932 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_a_4_fu_410_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_a_4_reg_938 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_a_5_fu_422_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_a_5_reg_944 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln47_4_fu_463_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln47_4_reg_968 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln47_5_fu_469_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln47_5_reg_973 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln47_3_fu_487_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln47_3_reg_978 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln47_8_fu_510_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln47_8_reg_984 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln47_9_fu_516_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln47_9_reg_989 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln48_4_fu_557_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln48_4_reg_994 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln48_5_fu_563_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln48_5_reg_999 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln48_3_fu_581_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln48_3_reg_1004 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_4_fu_622_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_4_reg_1010 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_5_fu_628_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_5_reg_1015 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln49_3_fu_646_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln49_3_reg_1020 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_8_fu_669_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_8_reg_1026 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_9_fu_675_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_9_reg_1031 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_10_fu_698_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_10_reg_1036 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_11_fu_704_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_11_reg_1041 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_86_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_86_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_92_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_92_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_98_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_98_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_104_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_104_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_110_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_110_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_116_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_116_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln47_fu_128_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln47_1_fu_145_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_131_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln47_fu_141_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln47_1_fu_168_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln47_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_148_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln47_1_fu_158_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln47_3_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln47_2_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln47_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln47_1_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln47_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_86_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln47_1_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_92_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln47_4_fu_216_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bitcast_ln48_fu_228_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln48_1_fu_245_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_fu_231_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln48_fu_241_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln48_1_fu_268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln48_fu_262_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_fu_248_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln48_1_fu_258_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln48_3_fu_286_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln48_2_fu_280_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln48_fu_274_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln48_1_fu_292_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln48_fu_298_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_98_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln48_1_fu_304_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_104_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln48_4_fu_316_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bitcast_ln49_fu_328_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln49_1_fu_345_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_15_fu_331_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln49_fu_341_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln49_1_fu_368_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_fu_362_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_16_fu_348_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln49_1_fu_358_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln49_3_fu_386_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_2_fu_380_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln49_fu_374_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln49_1_fu_392_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_fu_398_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_110_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_1_fu_404_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_116_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_2_fu_416_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bitcast_ln47_2_fu_428_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln47_3_fu_445_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_431_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln47_2_fu_441_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_4_fu_449_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln47_3_fu_459_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln47_7_fu_481_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln47_6_fu_475_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bitcast_ln47_4_fu_493_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_9_fu_496_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln47_4_fu_506_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal bitcast_ln48_2_fu_522_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln48_3_fu_539_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_11_fu_525_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln48_2_fu_535_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_12_fu_543_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln48_3_fu_553_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln48_7_fu_575_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln48_6_fu_569_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bitcast_ln49_2_fu_587_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln49_3_fu_604_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_19_fu_590_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln49_2_fu_600_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_20_fu_608_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln49_3_fu_618_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln49_7_fu_640_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln49_6_fu_634_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bitcast_ln49_4_fu_652_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_22_fu_655_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln49_4_fu_665_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal bitcast_ln49_5_fu_681_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_24_fu_684_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln49_5_fu_694_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal or_ln47_2_fu_710_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln47_2_fu_714_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln47_4_fu_725_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln47_5_fu_729_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln48_2_fu_740_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln48_2_fu_744_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln48_3_fu_749_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln49_2_fu_761_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_3_fu_765_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln47_3_fu_719_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln47_6_fu_734_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln47_7_fu_776_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln47_fu_782_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln48_fu_755_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln49_4_fu_800_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_5_fu_804_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_4_fu_770_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln49_5_fu_821_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_8_fu_825_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_6_fu_809_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_9_fu_830_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln48_5_fu_794_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_10_fu_836_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln49_6_fu_842_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln48_4_fu_788_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_11_fu_848_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln49_7_fu_815_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_86_opcode : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_92_opcode : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_98_opcode : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_104_opcode : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_110_opcode : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_116_opcode : STD_LOGIC_VECTOR (4 downto 0);
    signal and_ln49_12_fu_854_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);

    component honeybee_fcmp_32ng8j IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    honeybee_fcmp_32ng8j_U21 : component honeybee_fcmp_32ng8j
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_86_p0,
        din1 => grp_fu_86_p1,
        ce => ap_const_logic_1,
        opcode => grp_fu_86_opcode,
        dout => grp_fu_86_p2);

    honeybee_fcmp_32ng8j_U22 : component honeybee_fcmp_32ng8j
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_92_p0,
        din1 => grp_fu_92_p1,
        ce => ap_const_logic_1,
        opcode => grp_fu_92_opcode,
        dout => grp_fu_92_p2);

    honeybee_fcmp_32ng8j_U23 : component honeybee_fcmp_32ng8j
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_98_p0,
        din1 => grp_fu_98_p1,
        ce => ap_const_logic_1,
        opcode => grp_fu_98_opcode,
        dout => grp_fu_98_p2);

    honeybee_fcmp_32ng8j_U24 : component honeybee_fcmp_32ng8j
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_104_p0,
        din1 => grp_fu_104_p1,
        ce => ap_const_logic_1,
        opcode => grp_fu_104_opcode,
        dout => grp_fu_104_p2);

    honeybee_fcmp_32ng8j_U25 : component honeybee_fcmp_32ng8j
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_110_p0,
        din1 => grp_fu_110_p1,
        ce => ap_const_logic_1,
        opcode => grp_fu_110_opcode,
        dout => grp_fu_110_p2);

    honeybee_fcmp_32ng8j_U26 : component honeybee_fcmp_32ng8j
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 1)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_116_p0,
        din1 => grp_fu_116_p1,
        ce => ap_const_logic_1,
        opcode => grp_fu_116_opcode,
        dout => grp_fu_116_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv1_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_return_preg <= and_ln49_12_fu_854_p2;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                icmp_ln47_4_reg_968 <= icmp_ln47_4_fu_463_p2;
                icmp_ln47_5_reg_973 <= icmp_ln47_5_fu_469_p2;
                icmp_ln47_8_reg_984 <= icmp_ln47_8_fu_510_p2;
                icmp_ln47_9_reg_989 <= icmp_ln47_9_fu_516_p2;
                icmp_ln48_4_reg_994 <= icmp_ln48_4_fu_557_p2;
                icmp_ln48_5_reg_999 <= icmp_ln48_5_fu_563_p2;
                icmp_ln49_10_reg_1036 <= icmp_ln49_10_fu_698_p2;
                icmp_ln49_11_reg_1041 <= icmp_ln49_11_fu_704_p2;
                icmp_ln49_4_reg_1010 <= icmp_ln49_4_fu_622_p2;
                icmp_ln49_5_reg_1015 <= icmp_ln49_5_fu_628_p2;
                icmp_ln49_8_reg_1026 <= icmp_ln49_8_fu_669_p2;
                icmp_ln49_9_reg_1031 <= icmp_ln49_9_fu_675_p2;
                or_ln47_3_reg_978 <= or_ln47_3_fu_487_p2;
                or_ln48_3_reg_1004 <= or_ln48_3_fu_581_p2;
                or_ln49_3_reg_1020 <= or_ln49_3_fu_646_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                p_a_1_reg_920 <= p_a_1_fu_222_p3;
                p_a_2_reg_926 <= p_a_2_fu_310_p3;
                p_a_3_reg_932 <= p_a_3_fu_322_p3;
                p_a_4_reg_938 <= p_a_4_fu_410_p3;
                p_a_5_reg_944 <= p_a_5_fu_422_p3;
                p_a_reg_914 <= p_a_fu_210_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    and_ln47_1_fu_204_p2 <= (grp_fu_86_p2 and and_ln47_fu_198_p2);
    and_ln47_2_fu_714_p2 <= (or_ln47_3_reg_978 and or_ln47_2_fu_710_p2);
    and_ln47_3_fu_719_p2 <= (grp_fu_86_p2 and and_ln47_2_fu_714_p2);
    and_ln47_4_fu_216_p2 <= (grp_fu_92_p2 and and_ln47_fu_198_p2);
    and_ln47_5_fu_729_p2 <= (or_ln47_4_fu_725_p2 and or_ln47_3_reg_978);
    and_ln47_6_fu_734_p2 <= (grp_fu_92_p2 and and_ln47_5_fu_729_p2);
    and_ln47_7_fu_776_p2 <= (and_ln47_6_fu_734_p2 and and_ln47_3_fu_719_p2);
    and_ln47_fu_198_p2 <= (or_ln47_fu_174_p2 and or_ln47_1_fu_192_p2);
    and_ln48_1_fu_304_p2 <= (grp_fu_98_p2 and and_ln48_fu_298_p2);
    and_ln48_2_fu_744_p2 <= (or_ln48_3_reg_1004 and or_ln48_2_fu_740_p2);
    and_ln48_3_fu_749_p2 <= (grp_fu_98_p2 and and_ln48_2_fu_744_p2);
    and_ln48_4_fu_316_p2 <= (grp_fu_104_p2 and and_ln48_fu_298_p2);
    and_ln48_fu_298_p2 <= (or_ln48_fu_274_p2 and or_ln48_1_fu_292_p2);
    and_ln49_10_fu_836_p2 <= (and_ln49_9_fu_830_p2 and and_ln49_6_fu_809_p2);
    and_ln49_11_fu_848_p2 <= (or_ln49_6_fu_842_p2 and or_ln48_4_fu_788_p2);
    and_ln49_12_fu_854_p2 <= (and_ln49_7_fu_815_p2 and and_ln49_11_fu_848_p2);
    and_ln49_1_fu_404_p2 <= (grp_fu_110_p2 and and_ln49_fu_398_p2);
    and_ln49_2_fu_416_p2 <= (grp_fu_116_p2 and and_ln49_fu_398_p2);
    and_ln49_3_fu_765_p2 <= (or_ln49_3_reg_1020 and or_ln49_2_fu_761_p2);
    and_ln49_4_fu_770_p2 <= (grp_fu_104_p2 and and_ln49_3_fu_765_p2);
    and_ln49_5_fu_804_p2 <= (or_ln49_4_fu_800_p2 and or_ln49_3_reg_1020);
    and_ln49_6_fu_809_p2 <= (grp_fu_110_p2 and and_ln49_5_fu_804_p2);
    and_ln49_7_fu_815_p2 <= (and_ln49_4_fu_770_p2 and and_ln47_7_fu_776_p2);
    and_ln49_8_fu_825_p2 <= (or_ln49_5_fu_821_p2 and or_ln48_3_reg_1004);
    and_ln49_9_fu_830_p2 <= (grp_fu_116_p2 and and_ln49_8_fu_825_p2);
    and_ln49_fu_398_p2 <= (or_ln49_fu_374_p2 and or_ln49_1_fu_392_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_state4, and_ln49_12_fu_854_p2, ap_return_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_return <= and_ln49_12_fu_854_p2;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    bitcast_ln47_1_fu_145_p1 <= e_p2_x;
    bitcast_ln47_2_fu_428_p1 <= p_a_reg_914;
    bitcast_ln47_3_fu_445_p1 <= p_x;
    bitcast_ln47_4_fu_493_p1 <= p_a_1_reg_920;
    bitcast_ln47_fu_128_p1 <= e_p1_x;
    bitcast_ln48_1_fu_245_p1 <= e_p2_y;
    bitcast_ln48_2_fu_522_p1 <= p_a_2_reg_926;
    bitcast_ln48_3_fu_539_p1 <= p_y;
    bitcast_ln48_fu_228_p1 <= e_p1_y;
    bitcast_ln49_1_fu_345_p1 <= e_p2_z;
    bitcast_ln49_2_fu_587_p1 <= p_a_5_reg_944;
    bitcast_ln49_3_fu_604_p1 <= p_z;
    bitcast_ln49_4_fu_652_p1 <= p_a_4_reg_938;
    bitcast_ln49_5_fu_681_p1 <= p_a_3_reg_932;
    bitcast_ln49_fu_328_p1 <= e_p1_z;

    grp_fu_104_opcode_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_104_opcode <= ap_const_lv5_3;
        elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            grp_fu_104_opcode <= ap_const_lv5_2;
        else 
            grp_fu_104_opcode <= "XXXXX";
        end if; 
    end process;


    grp_fu_104_p0_assign_proc : process(ap_CS_fsm_state1, e_p1_y, p_a_5_reg_944, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_104_p0 <= p_a_5_reg_944;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_104_p0 <= e_p1_y;
        else 
            grp_fu_104_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_104_p1_assign_proc : process(ap_CS_fsm_state1, p_z, e_p2_y, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_104_p1 <= p_z;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_104_p1 <= e_p2_y;
        else 
            grp_fu_104_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_110_opcode_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_110_opcode <= ap_const_lv5_5;
        elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            grp_fu_110_opcode <= ap_const_lv5_4;
        else 
            grp_fu_110_opcode <= "XXXXX";
        end if; 
    end process;


    grp_fu_110_p0_assign_proc : process(ap_CS_fsm_state1, e_p1_z, p_a_4_reg_938, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_110_p0 <= p_a_4_reg_938;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_110_p0 <= e_p1_z;
        else 
            grp_fu_110_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_110_p1_assign_proc : process(ap_CS_fsm_state1, p_z, e_p2_z, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_110_p1 <= p_z;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_110_p1 <= e_p2_z;
        else 
            grp_fu_110_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_116_opcode_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_116_opcode <= ap_const_lv5_3;
        elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            grp_fu_116_opcode <= ap_const_lv5_2;
        else 
            grp_fu_116_opcode <= "XXXXX";
        end if; 
    end process;


    grp_fu_116_p0_assign_proc : process(ap_CS_fsm_state1, e_p1_z, p_a_3_reg_932, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_116_p0 <= p_a_3_reg_932;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_116_p0 <= e_p1_z;
        else 
            grp_fu_116_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_116_p1_assign_proc : process(ap_CS_fsm_state1, p_y, e_p2_z, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_116_p1 <= p_y;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_116_p1 <= e_p2_z;
        else 
            grp_fu_116_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_86_opcode_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_86_opcode <= ap_const_lv5_5;
        elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            grp_fu_86_opcode <= ap_const_lv5_4;
        else 
            grp_fu_86_opcode <= "XXXXX";
        end if; 
    end process;


    grp_fu_86_p0_assign_proc : process(ap_CS_fsm_state1, e_p1_x, p_a_reg_914, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_86_p0 <= p_a_reg_914;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_86_p0 <= e_p1_x;
        else 
            grp_fu_86_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_86_p1_assign_proc : process(ap_CS_fsm_state1, p_x, e_p2_x, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_86_p1 <= p_x;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_86_p1 <= e_p2_x;
        else 
            grp_fu_86_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_92_opcode_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_92_opcode <= ap_const_lv5_3;
        elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            grp_fu_92_opcode <= ap_const_lv5_2;
        else 
            grp_fu_92_opcode <= "XXXXX";
        end if; 
    end process;


    grp_fu_92_p0_assign_proc : process(ap_CS_fsm_state1, e_p1_x, p_a_1_reg_920, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_92_p0 <= p_a_1_reg_920;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_92_p0 <= e_p1_x;
        else 
            grp_fu_92_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_92_p1_assign_proc : process(ap_CS_fsm_state1, p_x, e_p2_x, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_92_p1 <= p_x;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_92_p1 <= e_p2_x;
        else 
            grp_fu_92_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_98_opcode_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_98_opcode <= ap_const_lv5_5;
        elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            grp_fu_98_opcode <= ap_const_lv5_4;
        else 
            grp_fu_98_opcode <= "XXXXX";
        end if; 
    end process;


    grp_fu_98_p0_assign_proc : process(ap_CS_fsm_state1, e_p1_y, p_a_2_reg_926, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_98_p0 <= p_a_2_reg_926;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_98_p0 <= e_p1_y;
        else 
            grp_fu_98_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_98_p1_assign_proc : process(ap_CS_fsm_state1, p_y, e_p2_y, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            grp_fu_98_p1 <= p_y;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            grp_fu_98_p1 <= e_p2_y;
        else 
            grp_fu_98_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    icmp_ln47_1_fu_168_p2 <= "1" when (trunc_ln47_fu_141_p1 = ap_const_lv23_0) else "0";
    icmp_ln47_2_fu_180_p2 <= "0" when (tmp_1_fu_148_p4 = ap_const_lv8_FF) else "1";
    icmp_ln47_3_fu_186_p2 <= "1" when (trunc_ln47_1_fu_158_p1 = ap_const_lv23_0) else "0";
    icmp_ln47_4_fu_463_p2 <= "0" when (tmp_3_fu_431_p4 = ap_const_lv8_FF) else "1";
    icmp_ln47_5_fu_469_p2 <= "1" when (trunc_ln47_2_fu_441_p1 = ap_const_lv23_0) else "0";
    icmp_ln47_6_fu_475_p2 <= "0" when (tmp_4_fu_449_p4 = ap_const_lv8_FF) else "1";
    icmp_ln47_7_fu_481_p2 <= "1" when (trunc_ln47_3_fu_459_p1 = ap_const_lv23_0) else "0";
    icmp_ln47_8_fu_510_p2 <= "0" when (tmp_9_fu_496_p4 = ap_const_lv8_FF) else "1";
    icmp_ln47_9_fu_516_p2 <= "1" when (trunc_ln47_4_fu_506_p1 = ap_const_lv23_0) else "0";
    icmp_ln47_fu_162_p2 <= "0" when (tmp_fu_131_p4 = ap_const_lv8_FF) else "1";
    icmp_ln48_1_fu_268_p2 <= "1" when (trunc_ln48_fu_241_p1 = ap_const_lv23_0) else "0";
    icmp_ln48_2_fu_280_p2 <= "0" when (tmp_7_fu_248_p4 = ap_const_lv8_FF) else "1";
    icmp_ln48_3_fu_286_p2 <= "1" when (trunc_ln48_1_fu_258_p1 = ap_const_lv23_0) else "0";
    icmp_ln48_4_fu_557_p2 <= "0" when (tmp_11_fu_525_p4 = ap_const_lv8_FF) else "1";
    icmp_ln48_5_fu_563_p2 <= "1" when (trunc_ln48_2_fu_535_p1 = ap_const_lv23_0) else "0";
    icmp_ln48_6_fu_569_p2 <= "0" when (tmp_12_fu_543_p4 = ap_const_lv8_FF) else "1";
    icmp_ln48_7_fu_575_p2 <= "1" when (trunc_ln48_3_fu_553_p1 = ap_const_lv23_0) else "0";
    icmp_ln48_fu_262_p2 <= "0" when (tmp_6_fu_231_p4 = ap_const_lv8_FF) else "1";
    icmp_ln49_10_fu_698_p2 <= "0" when (tmp_24_fu_684_p4 = ap_const_lv8_FF) else "1";
    icmp_ln49_11_fu_704_p2 <= "1" when (trunc_ln49_5_fu_694_p1 = ap_const_lv23_0) else "0";
    icmp_ln49_1_fu_368_p2 <= "1" when (trunc_ln49_fu_341_p1 = ap_const_lv23_0) else "0";
    icmp_ln49_2_fu_380_p2 <= "0" when (tmp_16_fu_348_p4 = ap_const_lv8_FF) else "1";
    icmp_ln49_3_fu_386_p2 <= "1" when (trunc_ln49_1_fu_358_p1 = ap_const_lv23_0) else "0";
    icmp_ln49_4_fu_622_p2 <= "0" when (tmp_19_fu_590_p4 = ap_const_lv8_FF) else "1";
    icmp_ln49_5_fu_628_p2 <= "1" when (trunc_ln49_2_fu_600_p1 = ap_const_lv23_0) else "0";
    icmp_ln49_6_fu_634_p2 <= "0" when (tmp_20_fu_608_p4 = ap_const_lv8_FF) else "1";
    icmp_ln49_7_fu_640_p2 <= "1" when (trunc_ln49_3_fu_618_p1 = ap_const_lv23_0) else "0";
    icmp_ln49_8_fu_669_p2 <= "0" when (tmp_22_fu_655_p4 = ap_const_lv8_FF) else "1";
    icmp_ln49_9_fu_675_p2 <= "1" when (trunc_ln49_4_fu_665_p1 = ap_const_lv23_0) else "0";
    icmp_ln49_fu_362_p2 <= "0" when (tmp_15_fu_331_p4 = ap_const_lv8_FF) else "1";
    or_ln47_1_fu_192_p2 <= (icmp_ln47_3_fu_186_p2 or icmp_ln47_2_fu_180_p2);
    or_ln47_2_fu_710_p2 <= (icmp_ln47_5_reg_973 or icmp_ln47_4_reg_968);
    or_ln47_3_fu_487_p2 <= (icmp_ln47_7_fu_481_p2 or icmp_ln47_6_fu_475_p2);
    or_ln47_4_fu_725_p2 <= (icmp_ln47_9_reg_989 or icmp_ln47_8_reg_984);
    or_ln47_fu_174_p2 <= (icmp_ln47_fu_162_p2 or icmp_ln47_1_fu_168_p2);
    or_ln48_1_fu_292_p2 <= (icmp_ln48_3_fu_286_p2 or icmp_ln48_2_fu_280_p2);
    or_ln48_2_fu_740_p2 <= (icmp_ln48_5_reg_999 or icmp_ln48_4_reg_994);
    or_ln48_3_fu_581_p2 <= (icmp_ln48_7_fu_575_p2 or icmp_ln48_6_fu_569_p2);
    or_ln48_4_fu_788_p2 <= (xor_ln47_fu_782_p2 or and_ln48_3_fu_749_p2);
    or_ln48_5_fu_794_p2 <= (xor_ln48_fu_755_p2 or xor_ln47_fu_782_p2);
    or_ln48_fu_274_p2 <= (icmp_ln48_fu_262_p2 or icmp_ln48_1_fu_268_p2);
    or_ln49_1_fu_392_p2 <= (icmp_ln49_3_fu_386_p2 or icmp_ln49_2_fu_380_p2);
    or_ln49_2_fu_761_p2 <= (icmp_ln49_5_reg_1015 or icmp_ln49_4_reg_1010);
    or_ln49_3_fu_646_p2 <= (icmp_ln49_7_fu_640_p2 or icmp_ln49_6_fu_634_p2);
    or_ln49_4_fu_800_p2 <= (icmp_ln49_9_reg_1031 or icmp_ln49_8_reg_1026);
    or_ln49_5_fu_821_p2 <= (icmp_ln49_11_reg_1041 or icmp_ln49_10_reg_1036);
    or_ln49_6_fu_842_p2 <= (or_ln48_5_fu_794_p2 or and_ln49_10_fu_836_p2);
    or_ln49_fu_374_p2 <= (icmp_ln49_fu_362_p2 or icmp_ln49_1_fu_368_p2);
    p_a_1_fu_222_p3 <= 
        e_p1_x when (and_ln47_4_fu_216_p2(0) = '1') else 
        e_p2_x;
    p_a_2_fu_310_p3 <= 
        e_p1_y when (and_ln48_1_fu_304_p2(0) = '1') else 
        e_p2_y;
    p_a_3_fu_322_p3 <= 
        e_p1_y when (and_ln48_4_fu_316_p2(0) = '1') else 
        e_p2_y;
    p_a_4_fu_410_p3 <= 
        e_p1_z when (and_ln49_1_fu_404_p2(0) = '1') else 
        e_p2_z;
    p_a_5_fu_422_p3 <= 
        e_p1_z when (and_ln49_2_fu_416_p2(0) = '1') else 
        e_p2_z;
    p_a_fu_210_p3 <= 
        e_p1_x when (and_ln47_1_fu_204_p2(0) = '1') else 
        e_p2_x;
    tmp_11_fu_525_p4 <= bitcast_ln48_2_fu_522_p1(30 downto 23);
    tmp_12_fu_543_p4 <= bitcast_ln48_3_fu_539_p1(30 downto 23);
    tmp_15_fu_331_p4 <= bitcast_ln49_fu_328_p1(30 downto 23);
    tmp_16_fu_348_p4 <= bitcast_ln49_1_fu_345_p1(30 downto 23);
    tmp_19_fu_590_p4 <= bitcast_ln49_2_fu_587_p1(30 downto 23);
    tmp_1_fu_148_p4 <= bitcast_ln47_1_fu_145_p1(30 downto 23);
    tmp_20_fu_608_p4 <= bitcast_ln49_3_fu_604_p1(30 downto 23);
    tmp_22_fu_655_p4 <= bitcast_ln49_4_fu_652_p1(30 downto 23);
    tmp_24_fu_684_p4 <= bitcast_ln49_5_fu_681_p1(30 downto 23);
    tmp_3_fu_431_p4 <= bitcast_ln47_2_fu_428_p1(30 downto 23);
    tmp_4_fu_449_p4 <= bitcast_ln47_3_fu_445_p1(30 downto 23);
    tmp_6_fu_231_p4 <= bitcast_ln48_fu_228_p1(30 downto 23);
    tmp_7_fu_248_p4 <= bitcast_ln48_1_fu_245_p1(30 downto 23);
    tmp_9_fu_496_p4 <= bitcast_ln47_4_fu_493_p1(30 downto 23);
    tmp_fu_131_p4 <= bitcast_ln47_fu_128_p1(30 downto 23);
    trunc_ln47_1_fu_158_p1 <= bitcast_ln47_1_fu_145_p1(23 - 1 downto 0);
    trunc_ln47_2_fu_441_p1 <= bitcast_ln47_2_fu_428_p1(23 - 1 downto 0);
    trunc_ln47_3_fu_459_p1 <= bitcast_ln47_3_fu_445_p1(23 - 1 downto 0);
    trunc_ln47_4_fu_506_p1 <= bitcast_ln47_4_fu_493_p1(23 - 1 downto 0);
    trunc_ln47_fu_141_p1 <= bitcast_ln47_fu_128_p1(23 - 1 downto 0);
    trunc_ln48_1_fu_258_p1 <= bitcast_ln48_1_fu_245_p1(23 - 1 downto 0);
    trunc_ln48_2_fu_535_p1 <= bitcast_ln48_2_fu_522_p1(23 - 1 downto 0);
    trunc_ln48_3_fu_553_p1 <= bitcast_ln48_3_fu_539_p1(23 - 1 downto 0);
    trunc_ln48_fu_241_p1 <= bitcast_ln48_fu_228_p1(23 - 1 downto 0);
    trunc_ln49_1_fu_358_p1 <= bitcast_ln49_1_fu_345_p1(23 - 1 downto 0);
    trunc_ln49_2_fu_600_p1 <= bitcast_ln49_2_fu_587_p1(23 - 1 downto 0);
    trunc_ln49_3_fu_618_p1 <= bitcast_ln49_3_fu_604_p1(23 - 1 downto 0);
    trunc_ln49_4_fu_665_p1 <= bitcast_ln49_4_fu_652_p1(23 - 1 downto 0);
    trunc_ln49_5_fu_694_p1 <= bitcast_ln49_5_fu_681_p1(23 - 1 downto 0);
    trunc_ln49_fu_341_p1 <= bitcast_ln49_fu_328_p1(23 - 1 downto 0);
    xor_ln47_fu_782_p2 <= (ap_const_lv1_1 xor and_ln47_7_fu_776_p2);
    xor_ln48_fu_755_p2 <= (ap_const_lv1_1 xor and_ln48_3_fu_749_p2);
end behav;
