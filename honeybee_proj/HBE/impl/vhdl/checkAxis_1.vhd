-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity checkAxis_1 is
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
    ap_return : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of checkAxis_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (16 downto 0) := "00000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (16 downto 0) := "00000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (16 downto 0) := "00000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (16 downto 0) := "00000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (16 downto 0) := "00000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (16 downto 0) := "00000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (16 downto 0) := "00001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (16 downto 0) := "00010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (16 downto 0) := "00100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (16 downto 0) := "01000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (16 downto 0) := "10000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_3F800000 : STD_LOGIC_VECTOR (31 downto 0) := "00111111100000000000000000000000";
    constant ap_const_lv32_40000000 : STD_LOGIC_VECTOR (31 downto 0) := "01000000000000000000000000000000";
    constant ap_const_lv32_40400000 : STD_LOGIC_VECTOR (31 downto 0) := "01000000010000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal reg_178 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_lineIntersectsPlane_fu_122_ap_ready : STD_LOGIC;
    signal grp_lineIntersectsPlane_fu_122_ap_done : STD_LOGIC;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal reg_184 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_190 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_p_hls_fptosi_float_i_fu_156_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_195 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_pointOnSegment_fu_143_ap_ready : STD_LOGIC;
    signal grp_pointOnSegment_fu_143_ap_done : STD_LOGIC;
    signal grp_pointOnSegment_fu_143_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal grp_p_hls_fptosi_float_i_fu_161_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_199 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_reg_494 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln125_fu_253_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_43_1_reg_503 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln125_1_fu_315_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal tmp_43_2_reg_512 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln125_2_fu_383_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal tmp_43_3_reg_521 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_lineIntersectsPlane_fu_122_ap_start : STD_LOGIC;
    signal grp_lineIntersectsPlane_fu_122_ap_idle : STD_LOGIC;
    signal grp_lineIntersectsPlane_fu_122_plane : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_lineIntersectsPlane_fu_122_ap_return_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_lineIntersectsPlane_fu_122_ap_return_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_lineIntersectsPlane_fu_122_ap_return_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_pointOnSegment_fu_143_ap_start : STD_LOGIC;
    signal grp_pointOnSegment_fu_143_ap_idle : STD_LOGIC;
    signal grp_p_hls_fptosi_float_i_fu_156_ap_ready : STD_LOGIC;
    signal grp_p_hls_fptosi_float_i_fu_161_ap_ready : STD_LOGIC;
    signal collisions_5_0_reg_78 : STD_LOGIC_VECTOR (63 downto 0);
    signal collisions_5_1_reg_90 : STD_LOGIC_VECTOR (63 downto 0);
    signal collisions_5_2_reg_101 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln125_3_fu_451_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_mux_collisions_5_3_phi_fu_115_p4 : STD_LOGIC_VECTOR (63 downto 0);
    signal collisions_5_3_reg_112 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal grp_lineIntersectsPlane_fu_122_ap_start_reg : STD_LOGIC := '0';
    signal grp_pointOnSegment_fu_143_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal shl_ln80_fu_203_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln80_4_fu_209_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln80_fu_215_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln124_fu_221_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln80_10_fu_231_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln80_11_fu_237_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln125_fu_243_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln124_fu_225_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln125_fu_247_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln80_5_fu_259_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln80_fu_271_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln80_6_fu_265_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln80_12_fu_277_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln124_1_fu_283_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln80_13_fu_293_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln125_1_fu_299_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln125_1_fu_303_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln125_4_fu_309_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln124_1_fu_287_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln80_7_fu_321_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln80_1_fu_333_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln80_8_fu_327_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln80_14_fu_339_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln124_2_fu_345_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln80_2_fu_355_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln80_15_fu_361_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln125_2_fu_367_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln125_2_fu_371_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln125_5_fu_377_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln124_2_fu_349_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln80_9_fu_389_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln80_3_fu_401_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln80_10_fu_395_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln80_16_fu_407_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln124_3_fu_413_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln80_4_fu_423_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln80_17_fu_429_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln125_3_fu_435_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln125_3_fu_439_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln125_6_fu_445_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln124_3_fu_417_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (16 downto 0);

    component lineIntersectsPlane IS
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
        plane : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (31 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component pointOnSegment IS
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
    end component;


    component p_hls_fptosi_float_i IS
    port (
        ap_ready : OUT STD_LOGIC;
        x : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    grp_lineIntersectsPlane_fu_122 : component lineIntersectsPlane
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_lineIntersectsPlane_fu_122_ap_start,
        ap_done => grp_lineIntersectsPlane_fu_122_ap_done,
        ap_idle => grp_lineIntersectsPlane_fu_122_ap_idle,
        ap_ready => grp_lineIntersectsPlane_fu_122_ap_ready,
        edge_p1_x => edge_p1_x,
        edge_p1_y => edge_p1_y,
        edge_p1_z => edge_p1_z,
        edge_p2_x => edge_p2_x,
        edge_p2_y => edge_p2_y,
        edge_p2_z => edge_p2_z,
        plane => grp_lineIntersectsPlane_fu_122_plane,
        ap_return_0 => grp_lineIntersectsPlane_fu_122_ap_return_0,
        ap_return_1 => grp_lineIntersectsPlane_fu_122_ap_return_1,
        ap_return_2 => grp_lineIntersectsPlane_fu_122_ap_return_2);

    grp_pointOnSegment_fu_143 : component pointOnSegment
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_pointOnSegment_fu_143_ap_start,
        ap_done => grp_pointOnSegment_fu_143_ap_done,
        ap_idle => grp_pointOnSegment_fu_143_ap_idle,
        ap_ready => grp_pointOnSegment_fu_143_ap_ready,
        p_x => reg_190,
        p_y => reg_184,
        p_z => reg_178,
        e_p1_x => edge_p1_z,
        e_p1_y => edge_p1_y,
        e_p1_z => edge_p1_x,
        e_p2_x => edge_p2_z,
        e_p2_y => edge_p2_y,
        e_p2_z => edge_p2_x,
        ap_return => grp_pointOnSegment_fu_143_ap_return);

    grp_p_hls_fptosi_float_i_fu_156 : component p_hls_fptosi_float_i
    port map (
        ap_ready => grp_p_hls_fptosi_float_i_fu_156_ap_ready,
        x => reg_184,
        ap_return => grp_p_hls_fptosi_float_i_fu_156_ap_return);

    grp_p_hls_fptosi_float_i_fu_161 : component p_hls_fptosi_float_i
    port map (
        ap_ready => grp_p_hls_fptosi_float_i_fu_161_ap_ready,
        x => reg_178,
        ap_return => grp_p_hls_fptosi_float_i_fu_161_ap_return);





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
                ap_return_preg <= ap_const_lv64_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state17)) then 
                    ap_return_preg <= ap_phi_mux_collisions_5_3_phi_fu_115_p4;
                end if; 
            end if;
        end if;
    end process;


    grp_lineIntersectsPlane_fu_122_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_lineIntersectsPlane_fu_122_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
                    grp_lineIntersectsPlane_fu_122_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_lineIntersectsPlane_fu_122_ap_ready = ap_const_logic_1)) then 
                    grp_lineIntersectsPlane_fu_122_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_pointOnSegment_fu_143_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_pointOnSegment_fu_143_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state15) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                    grp_pointOnSegment_fu_143_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_pointOnSegment_fu_143_ap_ready = ap_const_logic_1)) then 
                    grp_pointOnSegment_fu_143_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    collisions_5_0_reg_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_pointOnSegment_fu_143_ap_return = ap_const_lv1_0) and (grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                collisions_5_0_reg_78 <= ap_const_lv64_0;
            elsif (((tmp_s_reg_494 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                collisions_5_0_reg_78 <= or_ln125_fu_253_p2;
            end if; 
        end if;
    end process;

    collisions_5_1_reg_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_pointOnSegment_fu_143_ap_return = ap_const_lv1_0) and (grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                collisions_5_1_reg_90 <= collisions_5_0_reg_78;
            elsif (((tmp_43_1_reg_503 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
                collisions_5_1_reg_90 <= or_ln125_1_fu_315_p2;
            end if; 
        end if;
    end process;

    collisions_5_2_reg_101_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_pointOnSegment_fu_143_ap_return = ap_const_lv1_0) and (grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then 
                collisions_5_2_reg_101 <= collisions_5_1_reg_90;
            elsif (((tmp_43_2_reg_512 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state13))) then 
                collisions_5_2_reg_101 <= or_ln125_2_fu_383_p2;
            end if; 
        end if;
    end process;

    collisions_5_3_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_pointOnSegment_fu_143_ap_return = ap_const_lv1_0) and (grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state16))) then 
                collisions_5_3_reg_112 <= collisions_5_2_reg_101;
            elsif (((tmp_43_3_reg_521 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state17))) then 
                collisions_5_3_reg_112 <= or_ln125_3_fu_451_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((grp_lineIntersectsPlane_fu_122_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state14)) or ((grp_lineIntersectsPlane_fu_122_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10)) or ((grp_lineIntersectsPlane_fu_122_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((grp_lineIntersectsPlane_fu_122_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_178 <= grp_lineIntersectsPlane_fu_122_ap_return_0;
                reg_184 <= grp_lineIntersectsPlane_fu_122_ap_return_1;
                reg_190 <= grp_lineIntersectsPlane_fu_122_ap_return_2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((grp_pointOnSegment_fu_143_ap_return = ap_const_lv1_1) and (grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state16)) or ((grp_pointOnSegment_fu_143_ap_return = ap_const_lv1_1) and (grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state12)) or ((grp_pointOnSegment_fu_143_ap_return = ap_const_lv1_1) and (grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8)) or ((grp_pointOnSegment_fu_143_ap_return = ap_const_lv1_1) and (grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4)))) then
                reg_195 <= grp_p_hls_fptosi_float_i_fu_156_ap_return;
                reg_199 <= grp_p_hls_fptosi_float_i_fu_161_ap_return;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                tmp_43_1_reg_503 <= grp_pointOnSegment_fu_143_ap_return;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then
                tmp_43_2_reg_512 <= grp_pointOnSegment_fu_143_ap_return;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state16))) then
                tmp_43_3_reg_521 <= grp_pointOnSegment_fu_143_ap_return;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                tmp_s_reg_494 <= grp_pointOnSegment_fu_143_ap_return;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, grp_lineIntersectsPlane_fu_122_ap_done, ap_CS_fsm_state6, ap_CS_fsm_state10, ap_CS_fsm_state14, ap_CS_fsm_state4, grp_pointOnSegment_fu_143_ap_done, ap_CS_fsm_state8, ap_CS_fsm_state12, ap_CS_fsm_state16)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_lineIntersectsPlane_fu_122_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((grp_lineIntersectsPlane_fu_122_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if (((grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((grp_lineIntersectsPlane_fu_122_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state11;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                if (((grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state12))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_state12;
                end if;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                if (((grp_lineIntersectsPlane_fu_122_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state14))) then
                    ap_NS_fsm <= ap_ST_fsm_state15;
                else
                    ap_NS_fsm <= ap_ST_fsm_state14;
                end if;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                if (((grp_pointOnSegment_fu_143_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state16))) then
                    ap_NS_fsm <= ap_ST_fsm_state17;
                else
                    ap_NS_fsm <= ap_ST_fsm_state16;
                end if;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXX";
        end case;
    end process;
    add_ln80_10_fu_231_p2 <= std_logic_vector(signed(ap_const_lv32_FFFFFFFF) + signed(shl_ln80_4_fu_209_p2));
    add_ln80_11_fu_237_p2 <= std_logic_vector(unsigned(add_ln80_10_fu_231_p2) + unsigned(shl_ln80_fu_203_p2));
    add_ln80_12_fu_277_p2 <= std_logic_vector(unsigned(or_ln80_fu_271_p2) + unsigned(shl_ln80_6_fu_265_p2));
    add_ln80_13_fu_293_p2 <= std_logic_vector(unsigned(shl_ln80_5_fu_259_p2) + unsigned(shl_ln80_6_fu_265_p2));
    add_ln80_14_fu_339_p2 <= std_logic_vector(unsigned(or_ln80_1_fu_333_p2) + unsigned(shl_ln80_8_fu_327_p2));
    add_ln80_15_fu_361_p2 <= std_logic_vector(unsigned(or_ln80_2_fu_355_p2) + unsigned(shl_ln80_8_fu_327_p2));
    add_ln80_16_fu_407_p2 <= std_logic_vector(unsigned(or_ln80_3_fu_401_p2) + unsigned(shl_ln80_10_fu_395_p2));
    add_ln80_17_fu_429_p2 <= std_logic_vector(unsigned(or_ln80_4_fu_423_p2) + unsigned(shl_ln80_10_fu_395_p2));
    add_ln80_fu_215_p2 <= std_logic_vector(unsigned(shl_ln80_fu_203_p2) + unsigned(shl_ln80_4_fu_209_p2));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state17 <= ap_CS_fsm(16);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state17)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state17) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_phi_mux_collisions_5_3_phi_fu_115_p4_assign_proc : process(tmp_43_3_reg_521, or_ln125_3_fu_451_p2, collisions_5_3_reg_112, ap_CS_fsm_state17)
    begin
        if (((tmp_43_3_reg_521 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state17))) then 
            ap_phi_mux_collisions_5_3_phi_fu_115_p4 <= or_ln125_3_fu_451_p2;
        else 
            ap_phi_mux_collisions_5_3_phi_fu_115_p4 <= collisions_5_3_reg_112;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state17)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state17)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_phi_mux_collisions_5_3_phi_fu_115_p4, ap_CS_fsm_state17, ap_return_preg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state17)) then 
            ap_return <= ap_phi_mux_collisions_5_3_phi_fu_115_p4;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    grp_lineIntersectsPlane_fu_122_ap_start <= grp_lineIntersectsPlane_fu_122_ap_start_reg;

    grp_lineIntersectsPlane_fu_122_plane_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state6, ap_CS_fsm_state10, ap_CS_fsm_state14)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            grp_lineIntersectsPlane_fu_122_plane <= ap_const_lv32_40400000;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            grp_lineIntersectsPlane_fu_122_plane <= ap_const_lv32_40000000;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            grp_lineIntersectsPlane_fu_122_plane <= ap_const_lv32_3F800000;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            grp_lineIntersectsPlane_fu_122_plane <= ap_const_lv32_0;
        else 
            grp_lineIntersectsPlane_fu_122_plane <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_pointOnSegment_fu_143_ap_start <= grp_pointOnSegment_fu_143_ap_start_reg;
    or_ln125_1_fu_315_p2 <= (shl_ln124_1_fu_287_p2 or or_ln125_4_fu_309_p2);
    or_ln125_2_fu_383_p2 <= (shl_ln124_2_fu_349_p2 or or_ln125_5_fu_377_p2);
    or_ln125_3_fu_451_p2 <= (shl_ln124_3_fu_417_p2 or or_ln125_6_fu_445_p2);
    or_ln125_4_fu_309_p2 <= (shl_ln125_1_fu_303_p2 or collisions_5_0_reg_78);
    or_ln125_5_fu_377_p2 <= (shl_ln125_2_fu_371_p2 or collisions_5_1_reg_90);
    or_ln125_6_fu_445_p2 <= (shl_ln125_3_fu_439_p2 or collisions_5_2_reg_101);
    or_ln125_fu_253_p2 <= (shl_ln125_fu_247_p2 or shl_ln124_fu_225_p2);
    or_ln80_1_fu_333_p2 <= (shl_ln80_7_fu_321_p2 or ap_const_lv32_2);
    or_ln80_2_fu_355_p2 <= (shl_ln80_7_fu_321_p2 or ap_const_lv32_1);
    or_ln80_3_fu_401_p2 <= (shl_ln80_9_fu_389_p2 or ap_const_lv32_3);
    or_ln80_4_fu_423_p2 <= (shl_ln80_9_fu_389_p2 or ap_const_lv32_2);
    or_ln80_fu_271_p2 <= (shl_ln80_5_fu_259_p2 or ap_const_lv32_1);
    shl_ln124_1_fu_287_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv64_1),to_integer(unsigned('0' & zext_ln124_1_fu_283_p1(31-1 downto 0)))));
    shl_ln124_2_fu_349_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv64_1),to_integer(unsigned('0' & zext_ln124_2_fu_345_p1(31-1 downto 0)))));
    shl_ln124_3_fu_417_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv64_1),to_integer(unsigned('0' & zext_ln124_3_fu_413_p1(31-1 downto 0)))));
    shl_ln124_fu_225_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv64_1),to_integer(unsigned('0' & zext_ln124_fu_221_p1(31-1 downto 0)))));
    shl_ln125_1_fu_303_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv64_1),to_integer(unsigned('0' & zext_ln125_1_fu_299_p1(31-1 downto 0)))));
    shl_ln125_2_fu_371_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv64_1),to_integer(unsigned('0' & zext_ln125_2_fu_367_p1(31-1 downto 0)))));
    shl_ln125_3_fu_439_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv64_1),to_integer(unsigned('0' & zext_ln125_3_fu_435_p1(31-1 downto 0)))));
    shl_ln125_fu_247_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv64_1),to_integer(unsigned('0' & zext_ln125_fu_243_p1(31-1 downto 0)))));
    shl_ln80_10_fu_395_p2 <= std_logic_vector(shift_left(unsigned(reg_199),to_integer(unsigned('0' & ap_const_lv32_4(31-1 downto 0)))));
    shl_ln80_4_fu_209_p2 <= std_logic_vector(shift_left(unsigned(reg_199),to_integer(unsigned('0' & ap_const_lv32_4(31-1 downto 0)))));
    shl_ln80_5_fu_259_p2 <= std_logic_vector(shift_left(unsigned(reg_195),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    shl_ln80_6_fu_265_p2 <= std_logic_vector(shift_left(unsigned(reg_199),to_integer(unsigned('0' & ap_const_lv32_4(31-1 downto 0)))));
    shl_ln80_7_fu_321_p2 <= std_logic_vector(shift_left(unsigned(reg_195),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    shl_ln80_8_fu_327_p2 <= std_logic_vector(shift_left(unsigned(reg_199),to_integer(unsigned('0' & ap_const_lv32_4(31-1 downto 0)))));
    shl_ln80_9_fu_389_p2 <= std_logic_vector(shift_left(unsigned(reg_195),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    shl_ln80_fu_203_p2 <= std_logic_vector(shift_left(unsigned(reg_195),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    zext_ln124_1_fu_283_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln80_12_fu_277_p2),64));
    zext_ln124_2_fu_345_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln80_14_fu_339_p2),64));
    zext_ln124_3_fu_413_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln80_16_fu_407_p2),64));
    zext_ln124_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln80_fu_215_p2),64));
    zext_ln125_1_fu_299_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln80_13_fu_293_p2),64));
    zext_ln125_2_fu_367_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln80_15_fu_361_p2),64));
    zext_ln125_3_fu_435_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln80_17_fu_429_p2),64));
    zext_ln125_fu_243_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln80_11_fu_237_p2),64));
end behav;
