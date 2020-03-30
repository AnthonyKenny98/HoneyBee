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
    ap_return : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of honeybee is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "honeybee,hls_ip_2019_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z030i-fbg484-2L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.478400,HLS_SYN_LAT=218,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=51,HLS_SYN_FF=10223,HLS_SYN_LUT=26191,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal grp_checkAxis_2_fu_64_ap_start : STD_LOGIC;
    signal grp_checkAxis_2_fu_64_ap_done : STD_LOGIC;
    signal grp_checkAxis_2_fu_64_ap_idle : STD_LOGIC;
    signal grp_checkAxis_2_fu_64_ap_ready : STD_LOGIC;
    signal grp_checkAxis_2_fu_64_ap_return : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_checkAxis_1_fu_80_ap_start : STD_LOGIC;
    signal grp_checkAxis_1_fu_80_ap_done : STD_LOGIC;
    signal grp_checkAxis_1_fu_80_ap_idle : STD_LOGIC;
    signal grp_checkAxis_1_fu_80_ap_ready : STD_LOGIC;
    signal grp_checkAxis_1_fu_80_ap_return : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_checkAxis_0_fu_96_ap_start : STD_LOGIC;
    signal grp_checkAxis_0_fu_96_ap_done : STD_LOGIC;
    signal grp_checkAxis_0_fu_96_ap_idle : STD_LOGIC;
    signal grp_checkAxis_0_fu_96_ap_ready : STD_LOGIC;
    signal grp_checkAxis_0_fu_96_ap_return : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_checkAxis_2_fu_64_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_checkAxis_1_fu_80_ap_start_reg : STD_LOGIC := '0';
    signal grp_checkAxis_0_fu_96_ap_start_reg : STD_LOGIC := '0';
    signal or_ln170_fu_112_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state2_on_subcall_done : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);

    component checkAxis_2 IS
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
    end component;


    component checkAxis_1 IS
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
    end component;


    component checkAxis_0 IS
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
    end component;



begin
    grp_checkAxis_2_fu_64 : component checkAxis_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_checkAxis_2_fu_64_ap_start,
        ap_done => grp_checkAxis_2_fu_64_ap_done,
        ap_idle => grp_checkAxis_2_fu_64_ap_idle,
        ap_ready => grp_checkAxis_2_fu_64_ap_ready,
        edge_p1_x => edge_p1_x,
        edge_p1_y => edge_p1_y,
        edge_p1_z => edge_p1_z,
        edge_p2_x => edge_p2_x,
        edge_p2_y => edge_p2_y,
        edge_p2_z => edge_p2_z,
        ap_return => grp_checkAxis_2_fu_64_ap_return);

    grp_checkAxis_1_fu_80 : component checkAxis_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_checkAxis_1_fu_80_ap_start,
        ap_done => grp_checkAxis_1_fu_80_ap_done,
        ap_idle => grp_checkAxis_1_fu_80_ap_idle,
        ap_ready => grp_checkAxis_1_fu_80_ap_ready,
        edge_p1_x => edge_p1_z,
        edge_p1_y => edge_p1_y,
        edge_p1_z => edge_p1_x,
        edge_p2_x => edge_p2_z,
        edge_p2_y => edge_p2_y,
        edge_p2_z => edge_p2_x,
        ap_return => grp_checkAxis_1_fu_80_ap_return);

    grp_checkAxis_0_fu_96 : component checkAxis_0
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_checkAxis_0_fu_96_ap_start,
        ap_done => grp_checkAxis_0_fu_96_ap_done,
        ap_idle => grp_checkAxis_0_fu_96_ap_idle,
        ap_ready => grp_checkAxis_0_fu_96_ap_ready,
        edge_p1_x => edge_p1_x,
        edge_p1_y => edge_p1_z,
        edge_p1_z => edge_p1_y,
        edge_p2_x => edge_p2_x,
        edge_p2_y => edge_p2_z,
        edge_p2_z => edge_p2_y,
        ap_return => grp_checkAxis_0_fu_96_ap_return);





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


    grp_checkAxis_0_fu_96_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_checkAxis_0_fu_96_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_checkAxis_0_fu_96_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_checkAxis_0_fu_96_ap_ready = ap_const_logic_1)) then 
                    grp_checkAxis_0_fu_96_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_checkAxis_1_fu_80_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_checkAxis_1_fu_80_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_checkAxis_1_fu_80_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_checkAxis_1_fu_80_ap_ready = ap_const_logic_1)) then 
                    grp_checkAxis_1_fu_80_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_checkAxis_2_fu_64_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_checkAxis_2_fu_64_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_checkAxis_2_fu_64_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_checkAxis_2_fu_64_ap_ready = ap_const_logic_1)) then 
                    grp_checkAxis_2_fu_64_ap_start_reg <= ap_const_logic_0;
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
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then
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

    ap_block_state2_on_subcall_done_assign_proc : process(grp_checkAxis_2_fu_64_ap_done, grp_checkAxis_1_fu_80_ap_done, grp_checkAxis_0_fu_96_ap_done)
    begin
                ap_block_state2_on_subcall_done <= ((grp_checkAxis_0_fu_96_ap_done = ap_const_logic_0) or (grp_checkAxis_1_fu_80_ap_done = ap_const_logic_0) or (grp_checkAxis_2_fu_64_ap_done = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
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
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_boolean_0 = ap_block_state2_on_subcall_done))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= (or_ln170_fu_112_p2 or grp_checkAxis_0_fu_96_ap_return);
    grp_checkAxis_0_fu_96_ap_start <= grp_checkAxis_0_fu_96_ap_start_reg;
    grp_checkAxis_1_fu_80_ap_start <= grp_checkAxis_1_fu_80_ap_start_reg;
    grp_checkAxis_2_fu_64_ap_start <= grp_checkAxis_2_fu_64_ap_start_reg;
    or_ln170_fu_112_p2 <= (grp_checkAxis_2_fu_64_ap_return or grp_checkAxis_1_fu_80_ap_return);
end behav;
