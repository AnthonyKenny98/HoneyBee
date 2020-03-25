-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity honeybee is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    edge_p1_x : IN STD_LOGIC_VECTOR (31 downto 0);
    edge_p1_y : IN STD_LOGIC_VECTOR (31 downto 0);
    edge_p1_z : IN STD_LOGIC_VECTOR (31 downto 0);
    edge_p2_x : IN STD_LOGIC_VECTOR (31 downto 0);
    edge_p2_y : IN STD_LOGIC_VECTOR (31 downto 0);
    edge_p2_z : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of honeybee is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "honeybee,hls_ip_2019_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.921200,HLS_SYN_LAT=251,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=272,HLS_SYN_FF=44714,HLS_SYN_LUT=101911,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3F800000 : STD_LOGIC_VECTOR (31 downto 0) := "00111111100000000000000000000000";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal grp_segmentIntersectsGri_fu_82_ap_start : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_82_ap_done : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_82_ap_idle : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_82_ap_ready : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_82_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_segmentIntersectsGri_fu_104_ap_start : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_104_ap_done : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_104_ap_idle : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_104_ap_ready : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_104_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_segmentIntersectsGri_fu_126_ap_start : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_126_ap_done : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_126_ap_idle : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_126_ap_ready : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_126_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_segmentIntersectsGri_fu_148_ap_start : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_148_ap_done : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_148_ap_idle : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_148_ap_ready : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_148_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_segmentIntersectsGri_fu_170_ap_start : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_170_ap_done : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_170_ap_idle : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_170_ap_ready : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_170_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_segmentIntersectsGri_fu_192_ap_start : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_192_ap_done : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_192_ap_idle : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_192_ap_ready : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_192_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_segmentIntersectsGri_fu_214_ap_start : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_214_ap_done : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_214_ap_idle : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_214_ap_ready : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_214_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_segmentIntersectsGri_fu_236_ap_start : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_236_ap_done : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_236_ap_idle : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_236_ap_ready : STD_LOGIC;
    signal grp_segmentIntersectsGri_fu_236_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_segmentIntersectsGri_fu_82_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_segmentIntersectsGri_fu_104_ap_start_reg : STD_LOGIC := '0';
    signal grp_segmentIntersectsGri_fu_126_ap_start_reg : STD_LOGIC := '0';
    signal grp_segmentIntersectsGri_fu_148_ap_start_reg : STD_LOGIC := '0';
    signal grp_segmentIntersectsGri_fu_170_ap_start_reg : STD_LOGIC := '0';
    signal grp_segmentIntersectsGri_fu_192_ap_start_reg : STD_LOGIC := '0';
    signal grp_segmentIntersectsGri_fu_214_ap_start_reg : STD_LOGIC := '0';
    signal grp_segmentIntersectsGri_fu_236_ap_start_reg : STD_LOGIC := '0';
    signal select_ln159_fu_262_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln158_fu_258_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln158_fu_270_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln_fu_282_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln158_1_fu_278_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln158_1_fu_290_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln159_1_fu_302_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln158_2_fu_298_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln158_2_fu_310_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal or_ln159_2_fu_322_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln158_3_fu_318_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln158_3_fu_330_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal or_ln159_3_fu_342_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln158_4_fu_338_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln158_4_fu_350_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal or_ln159_4_fu_362_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln158_5_fu_358_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln158_5_fu_370_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln159_5_fu_382_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln158_6_fu_378_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state2_on_subcall_done : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);

    component segmentIntersectsGri IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        edge_p1_x : IN STD_LOGIC_VECTOR (31 downto 0);
        edge_p1_y : IN STD_LOGIC_VECTOR (31 downto 0);
        edge_p1_z : IN STD_LOGIC_VECTOR (31 downto 0);
        edge_p2_x : IN STD_LOGIC_VECTOR (31 downto 0);
        edge_p2_y : IN STD_LOGIC_VECTOR (31 downto 0);
        edge_p2_z : IN STD_LOGIC_VECTOR (31 downto 0);
        grid_x : IN STD_LOGIC_VECTOR (31 downto 0);
        grid_y : IN STD_LOGIC_VECTOR (31 downto 0);
        grid_z : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    grp_segmentIntersectsGri_fu_82 : component segmentIntersectsGri
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_segmentIntersectsGri_fu_82_ap_start,
        ap_done => grp_segmentIntersectsGri_fu_82_ap_done,
        ap_idle => grp_segmentIntersectsGri_fu_82_ap_idle,
        ap_ready => grp_segmentIntersectsGri_fu_82_ap_ready,
        edge_p1_x => edge_p1_x,
        edge_p1_y => edge_p1_y,
        edge_p1_z => edge_p1_z,
        edge_p2_x => edge_p2_x,
        edge_p2_y => edge_p2_y,
        edge_p2_z => edge_p2_z,
        grid_x => ap_const_lv32_0,
        grid_y => ap_const_lv32_0,
        grid_z => ap_const_lv32_0,
        ap_return => grp_segmentIntersectsGri_fu_82_ap_return);

    grp_segmentIntersectsGri_fu_104 : component segmentIntersectsGri
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_segmentIntersectsGri_fu_104_ap_start,
        ap_done => grp_segmentIntersectsGri_fu_104_ap_done,
        ap_idle => grp_segmentIntersectsGri_fu_104_ap_idle,
        ap_ready => grp_segmentIntersectsGri_fu_104_ap_ready,
        edge_p1_x => edge_p1_x,
        edge_p1_y => edge_p1_y,
        edge_p1_z => edge_p1_z,
        edge_p2_x => edge_p2_x,
        edge_p2_y => edge_p2_y,
        edge_p2_z => edge_p2_z,
        grid_x => ap_const_lv32_3F800000,
        grid_y => ap_const_lv32_0,
        grid_z => ap_const_lv32_0,
        ap_return => grp_segmentIntersectsGri_fu_104_ap_return);

    grp_segmentIntersectsGri_fu_126 : component segmentIntersectsGri
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_segmentIntersectsGri_fu_126_ap_start,
        ap_done => grp_segmentIntersectsGri_fu_126_ap_done,
        ap_idle => grp_segmentIntersectsGri_fu_126_ap_idle,
        ap_ready => grp_segmentIntersectsGri_fu_126_ap_ready,
        edge_p1_x => edge_p1_x,
        edge_p1_y => edge_p1_y,
        edge_p1_z => edge_p1_z,
        edge_p2_x => edge_p2_x,
        edge_p2_y => edge_p2_y,
        edge_p2_z => edge_p2_z,
        grid_x => ap_const_lv32_0,
        grid_y => ap_const_lv32_3F800000,
        grid_z => ap_const_lv32_0,
        ap_return => grp_segmentIntersectsGri_fu_126_ap_return);

    grp_segmentIntersectsGri_fu_148 : component segmentIntersectsGri
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_segmentIntersectsGri_fu_148_ap_start,
        ap_done => grp_segmentIntersectsGri_fu_148_ap_done,
        ap_idle => grp_segmentIntersectsGri_fu_148_ap_idle,
        ap_ready => grp_segmentIntersectsGri_fu_148_ap_ready,
        edge_p1_x => edge_p1_x,
        edge_p1_y => edge_p1_y,
        edge_p1_z => edge_p1_z,
        edge_p2_x => edge_p2_x,
        edge_p2_y => edge_p2_y,
        edge_p2_z => edge_p2_z,
        grid_x => ap_const_lv32_3F800000,
        grid_y => ap_const_lv32_3F800000,
        grid_z => ap_const_lv32_0,
        ap_return => grp_segmentIntersectsGri_fu_148_ap_return);

    grp_segmentIntersectsGri_fu_170 : component segmentIntersectsGri
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_segmentIntersectsGri_fu_170_ap_start,
        ap_done => grp_segmentIntersectsGri_fu_170_ap_done,
        ap_idle => grp_segmentIntersectsGri_fu_170_ap_idle,
        ap_ready => grp_segmentIntersectsGri_fu_170_ap_ready,
        edge_p1_x => edge_p1_x,
        edge_p1_y => edge_p1_y,
        edge_p1_z => edge_p1_z,
        edge_p2_x => edge_p2_x,
        edge_p2_y => edge_p2_y,
        edge_p2_z => edge_p2_z,
        grid_x => ap_const_lv32_0,
        grid_y => ap_const_lv32_0,
        grid_z => ap_const_lv32_3F800000,
        ap_return => grp_segmentIntersectsGri_fu_170_ap_return);

    grp_segmentIntersectsGri_fu_192 : component segmentIntersectsGri
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_segmentIntersectsGri_fu_192_ap_start,
        ap_done => grp_segmentIntersectsGri_fu_192_ap_done,
        ap_idle => grp_segmentIntersectsGri_fu_192_ap_idle,
        ap_ready => grp_segmentIntersectsGri_fu_192_ap_ready,
        edge_p1_x => edge_p1_x,
        edge_p1_y => edge_p1_y,
        edge_p1_z => edge_p1_z,
        edge_p2_x => edge_p2_x,
        edge_p2_y => edge_p2_y,
        edge_p2_z => edge_p2_z,
        grid_x => ap_const_lv32_3F800000,
        grid_y => ap_const_lv32_0,
        grid_z => ap_const_lv32_3F800000,
        ap_return => grp_segmentIntersectsGri_fu_192_ap_return);

    grp_segmentIntersectsGri_fu_214 : component segmentIntersectsGri
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_segmentIntersectsGri_fu_214_ap_start,
        ap_done => grp_segmentIntersectsGri_fu_214_ap_done,
        ap_idle => grp_segmentIntersectsGri_fu_214_ap_idle,
        ap_ready => grp_segmentIntersectsGri_fu_214_ap_ready,
        edge_p1_x => edge_p1_x,
        edge_p1_y => edge_p1_y,
        edge_p1_z => edge_p1_z,
        edge_p2_x => edge_p2_x,
        edge_p2_y => edge_p2_y,
        edge_p2_z => edge_p2_z,
        grid_x => ap_const_lv32_0,
        grid_y => ap_const_lv32_3F800000,
        grid_z => ap_const_lv32_3F800000,
        ap_return => grp_segmentIntersectsGri_fu_214_ap_return);

    grp_segmentIntersectsGri_fu_236 : component segmentIntersectsGri
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_segmentIntersectsGri_fu_236_ap_start,
        ap_done => grp_segmentIntersectsGri_fu_236_ap_done,
        ap_idle => grp_segmentIntersectsGri_fu_236_ap_idle,
        ap_ready => grp_segmentIntersectsGri_fu_236_ap_ready,
        edge_p1_x => edge_p1_x,
        edge_p1_y => edge_p1_y,
        edge_p1_z => edge_p1_z,
        edge_p2_x => edge_p2_x,
        edge_p2_y => edge_p2_y,
        edge_p2_z => edge_p2_z,
        grid_x => ap_const_lv32_3F800000,
        grid_y => ap_const_lv32_3F800000,
        grid_z => ap_const_lv32_3F800000,
        ap_return => grp_segmentIntersectsGri_fu_236_ap_return);





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


    grp_segmentIntersectsGri_fu_104_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_segmentIntersectsGri_fu_104_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_segmentIntersectsGri_fu_104_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_segmentIntersectsGri_fu_104_ap_ready = ap_const_logic_1)) then 
                    grp_segmentIntersectsGri_fu_104_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_segmentIntersectsGri_fu_126_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_segmentIntersectsGri_fu_126_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_segmentIntersectsGri_fu_126_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_segmentIntersectsGri_fu_126_ap_ready = ap_const_logic_1)) then 
                    grp_segmentIntersectsGri_fu_126_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_segmentIntersectsGri_fu_148_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_segmentIntersectsGri_fu_148_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_segmentIntersectsGri_fu_148_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_segmentIntersectsGri_fu_148_ap_ready = ap_const_logic_1)) then 
                    grp_segmentIntersectsGri_fu_148_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_segmentIntersectsGri_fu_170_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_segmentIntersectsGri_fu_170_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_segmentIntersectsGri_fu_170_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_segmentIntersectsGri_fu_170_ap_ready = ap_const_logic_1)) then 
                    grp_segmentIntersectsGri_fu_170_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_segmentIntersectsGri_fu_192_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_segmentIntersectsGri_fu_192_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_segmentIntersectsGri_fu_192_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_segmentIntersectsGri_fu_192_ap_ready = ap_const_logic_1)) then 
                    grp_segmentIntersectsGri_fu_192_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_segmentIntersectsGri_fu_214_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_segmentIntersectsGri_fu_214_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_segmentIntersectsGri_fu_214_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_segmentIntersectsGri_fu_214_ap_ready = ap_const_logic_1)) then 
                    grp_segmentIntersectsGri_fu_214_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_segmentIntersectsGri_fu_236_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_segmentIntersectsGri_fu_236_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_segmentIntersectsGri_fu_236_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_segmentIntersectsGri_fu_236_ap_ready = ap_const_logic_1)) then 
                    grp_segmentIntersectsGri_fu_236_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_segmentIntersectsGri_fu_82_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_segmentIntersectsGri_fu_82_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_segmentIntersectsGri_fu_82_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_segmentIntersectsGri_fu_82_ap_ready = ap_const_logic_1)) then 
                    grp_segmentIntersectsGri_fu_82_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_block_state2_on_subcall_done_assign_proc : process(grp_segmentIntersectsGri_fu_82_ap_done, grp_segmentIntersectsGri_fu_104_ap_done, grp_segmentIntersectsGri_fu_126_ap_done, grp_segmentIntersectsGri_fu_148_ap_done, grp_segmentIntersectsGri_fu_170_ap_done, grp_segmentIntersectsGri_fu_192_ap_done, grp_segmentIntersectsGri_fu_214_ap_done, grp_segmentIntersectsGri_fu_236_ap_done)
    begin
                ap_block_state2_on_subcall_done <= ((grp_segmentIntersectsGri_fu_148_ap_done = ap_const_logic_0) or (grp_segmentIntersectsGri_fu_126_ap_done = ap_const_logic_0) or (grp_segmentIntersectsGri_fu_104_ap_done = ap_const_logic_0) or (grp_segmentIntersectsGri_fu_82_ap_done = ap_const_logic_0) or (grp_segmentIntersectsGri_fu_236_ap_done = ap_const_logic_0) or (grp_segmentIntersectsGri_fu_214_ap_done = ap_const_logic_0) or (grp_segmentIntersectsGri_fu_192_ap_done = ap_const_logic_0) or (grp_segmentIntersectsGri_fu_170_ap_done = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= 
        or_ln159_5_fu_382_p3 when (grp_segmentIntersectsGri_fu_236_ap_return(0) = '1') else 
        zext_ln158_6_fu_378_p1;
    grp_segmentIntersectsGri_fu_104_ap_start <= grp_segmentIntersectsGri_fu_104_ap_start_reg;
    grp_segmentIntersectsGri_fu_126_ap_start <= grp_segmentIntersectsGri_fu_126_ap_start_reg;
    grp_segmentIntersectsGri_fu_148_ap_start <= grp_segmentIntersectsGri_fu_148_ap_start_reg;
    grp_segmentIntersectsGri_fu_170_ap_start <= grp_segmentIntersectsGri_fu_170_ap_start_reg;
    grp_segmentIntersectsGri_fu_192_ap_start <= grp_segmentIntersectsGri_fu_192_ap_start_reg;
    grp_segmentIntersectsGri_fu_214_ap_start <= grp_segmentIntersectsGri_fu_214_ap_start_reg;
    grp_segmentIntersectsGri_fu_236_ap_start <= grp_segmentIntersectsGri_fu_236_ap_start_reg;
    grp_segmentIntersectsGri_fu_82_ap_start <= grp_segmentIntersectsGri_fu_82_ap_start_reg;
    or_ln159_1_fu_302_p3 <= (ap_const_lv1_1 & select_ln158_1_fu_290_p3);
    or_ln159_2_fu_322_p3 <= (ap_const_lv1_1 & select_ln158_2_fu_310_p3);
    or_ln159_3_fu_342_p3 <= (ap_const_lv1_1 & select_ln158_3_fu_330_p3);
    or_ln159_4_fu_362_p3 <= (ap_const_lv1_1 & select_ln158_4_fu_350_p3);
    or_ln159_5_fu_382_p3 <= (ap_const_lv1_1 & select_ln158_5_fu_370_p3);
    or_ln_fu_282_p3 <= (ap_const_lv1_1 & select_ln158_fu_270_p3);
    select_ln158_1_fu_290_p3 <= 
        or_ln_fu_282_p3 when (grp_segmentIntersectsGri_fu_126_ap_return(0) = '1') else 
        zext_ln158_1_fu_278_p1;
    select_ln158_2_fu_310_p3 <= 
        or_ln159_1_fu_302_p3 when (grp_segmentIntersectsGri_fu_148_ap_return(0) = '1') else 
        zext_ln158_2_fu_298_p1;
    select_ln158_3_fu_330_p3 <= 
        or_ln159_2_fu_322_p3 when (grp_segmentIntersectsGri_fu_170_ap_return(0) = '1') else 
        zext_ln158_3_fu_318_p1;
    select_ln158_4_fu_350_p3 <= 
        or_ln159_3_fu_342_p3 when (grp_segmentIntersectsGri_fu_192_ap_return(0) = '1') else 
        zext_ln158_4_fu_338_p1;
    select_ln158_5_fu_370_p3 <= 
        or_ln159_4_fu_362_p3 when (grp_segmentIntersectsGri_fu_214_ap_return(0) = '1') else 
        zext_ln158_5_fu_358_p1;
    select_ln158_fu_270_p3 <= 
        select_ln159_fu_262_p3 when (grp_segmentIntersectsGri_fu_104_ap_return(0) = '1') else 
        zext_ln158_fu_258_p1;
    select_ln159_fu_262_p3 <= 
        ap_const_lv2_3 when (grp_segmentIntersectsGri_fu_82_ap_return(0) = '1') else 
        ap_const_lv2_2;
    zext_ln158_1_fu_278_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln158_fu_270_p3),3));
    zext_ln158_2_fu_298_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln158_1_fu_290_p3),4));
    zext_ln158_3_fu_318_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln158_2_fu_310_p3),5));
    zext_ln158_4_fu_338_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln158_3_fu_330_p3),6));
    zext_ln158_5_fu_358_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln158_4_fu_350_p3),7));
    zext_ln158_6_fu_378_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln158_5_fu_370_p3),8));
    zext_ln158_fu_258_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_segmentIntersectsGri_fu_82_ap_return),2));
end behav;
