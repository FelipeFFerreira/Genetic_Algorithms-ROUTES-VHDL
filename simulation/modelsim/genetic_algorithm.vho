-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "09/22/2023 03:33:10"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	genetic_algorithm IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	output : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END genetic_algorithm;

-- Design Ports Information
-- output[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF genetic_algorithm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_output : std_logic_vector(6 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \init_population_instance|state.s_write_done~q\ : std_logic;
SIGNAL \init_population_instance|Selector98~1_combout\ : std_logic;
SIGNAL \init_population_instance|j[0]~32_combout\ : std_logic;
SIGNAL \init_population_instance|p[0]~32_combout\ : std_logic;
SIGNAL \init_population_instance|i[0]~33_combout\ : std_logic;
SIGNAL \init_population_instance|i[24]~32_combout\ : std_logic;
SIGNAL \init_population_instance|p[2]~38\ : std_logic;
SIGNAL \init_population_instance|p[3]~39_combout\ : std_logic;
SIGNAL \init_population_instance|p[3]~40\ : std_logic;
SIGNAL \init_population_instance|p[4]~41_combout\ : std_logic;
SIGNAL \init_population_instance|p[4]~42\ : std_logic;
SIGNAL \init_population_instance|p[5]~43_combout\ : std_logic;
SIGNAL \init_population_instance|p[5]~44\ : std_logic;
SIGNAL \init_population_instance|p[6]~45_combout\ : std_logic;
SIGNAL \init_population_instance|p[6]~46\ : std_logic;
SIGNAL \init_population_instance|p[7]~47_combout\ : std_logic;
SIGNAL \init_population_instance|p[7]~48\ : std_logic;
SIGNAL \init_population_instance|p[8]~49_combout\ : std_logic;
SIGNAL \init_population_instance|p[8]~50\ : std_logic;
SIGNAL \init_population_instance|p[9]~51_combout\ : std_logic;
SIGNAL \init_population_instance|p[9]~52\ : std_logic;
SIGNAL \init_population_instance|p[10]~53_combout\ : std_logic;
SIGNAL \init_population_instance|p[10]~54\ : std_logic;
SIGNAL \init_population_instance|p[11]~55_combout\ : std_logic;
SIGNAL \init_population_instance|p[11]~56\ : std_logic;
SIGNAL \init_population_instance|p[12]~57_combout\ : std_logic;
SIGNAL \init_population_instance|p[12]~58\ : std_logic;
SIGNAL \init_population_instance|p[13]~59_combout\ : std_logic;
SIGNAL \init_population_instance|p[13]~60\ : std_logic;
SIGNAL \init_population_instance|p[14]~61_combout\ : std_logic;
SIGNAL \init_population_instance|p[14]~62\ : std_logic;
SIGNAL \init_population_instance|p[15]~63_combout\ : std_logic;
SIGNAL \init_population_instance|p[15]~64\ : std_logic;
SIGNAL \init_population_instance|p[16]~65_combout\ : std_logic;
SIGNAL \init_population_instance|p[16]~66\ : std_logic;
SIGNAL \init_population_instance|p[17]~67_combout\ : std_logic;
SIGNAL \init_population_instance|p[17]~68\ : std_logic;
SIGNAL \init_population_instance|p[18]~69_combout\ : std_logic;
SIGNAL \init_population_instance|p[18]~70\ : std_logic;
SIGNAL \init_population_instance|p[19]~71_combout\ : std_logic;
SIGNAL \init_population_instance|p[19]~72\ : std_logic;
SIGNAL \init_population_instance|p[20]~73_combout\ : std_logic;
SIGNAL \init_population_instance|p[20]~74\ : std_logic;
SIGNAL \init_population_instance|p[21]~75_combout\ : std_logic;
SIGNAL \init_population_instance|p[21]~76\ : std_logic;
SIGNAL \init_population_instance|p[22]~77_combout\ : std_logic;
SIGNAL \init_population_instance|p[22]~78\ : std_logic;
SIGNAL \init_population_instance|p[23]~79_combout\ : std_logic;
SIGNAL \init_population_instance|p[23]~80\ : std_logic;
SIGNAL \init_population_instance|p[24]~81_combout\ : std_logic;
SIGNAL \init_population_instance|p[24]~82\ : std_logic;
SIGNAL \init_population_instance|p[25]~83_combout\ : std_logic;
SIGNAL \init_population_instance|p[25]~84\ : std_logic;
SIGNAL \init_population_instance|p[26]~85_combout\ : std_logic;
SIGNAL \init_population_instance|p[26]~86\ : std_logic;
SIGNAL \init_population_instance|p[27]~87_combout\ : std_logic;
SIGNAL \init_population_instance|p[27]~88\ : std_logic;
SIGNAL \init_population_instance|p[28]~89_combout\ : std_logic;
SIGNAL \init_population_instance|p[28]~90\ : std_logic;
SIGNAL \init_population_instance|p[29]~91_combout\ : std_logic;
SIGNAL \init_population_instance|p[29]~92\ : std_logic;
SIGNAL \init_population_instance|p[30]~93_combout\ : std_logic;
SIGNAL \init_population_instance|p[30]~94\ : std_logic;
SIGNAL \init_population_instance|p[31]~95_combout\ : std_logic;
SIGNAL \init_population_instance|Selector97~1_combout\ : std_logic;
SIGNAL \init_population_instance|Selector97~2_combout\ : std_logic;
SIGNAL \init_population_instance|state.s_p_loop~q\ : std_logic;
SIGNAL \init_population_instance|LessThan0~7_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan0~4_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan0~6_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan0~5_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan0~8_combout\ : std_logic;
SIGNAL \init_population_instance|Selector98~0_combout\ : std_logic;
SIGNAL \init_population_instance|i[31]~35_combout\ : std_logic;
SIGNAL \init_population_instance|i[0]~34\ : std_logic;
SIGNAL \init_population_instance|i[1]~36_combout\ : std_logic;
SIGNAL \init_population_instance|i[1]~37\ : std_logic;
SIGNAL \init_population_instance|i[2]~38_combout\ : std_logic;
SIGNAL \init_population_instance|i[2]~39\ : std_logic;
SIGNAL \init_population_instance|i[3]~40_combout\ : std_logic;
SIGNAL \init_population_instance|i[3]~41\ : std_logic;
SIGNAL \init_population_instance|i[4]~42_combout\ : std_logic;
SIGNAL \init_population_instance|i[4]~43\ : std_logic;
SIGNAL \init_population_instance|i[5]~44_combout\ : std_logic;
SIGNAL \init_population_instance|i[5]~45\ : std_logic;
SIGNAL \init_population_instance|i[6]~46_combout\ : std_logic;
SIGNAL \init_population_instance|i[6]~47\ : std_logic;
SIGNAL \init_population_instance|i[7]~48_combout\ : std_logic;
SIGNAL \init_population_instance|i[7]~49\ : std_logic;
SIGNAL \init_population_instance|i[8]~50_combout\ : std_logic;
SIGNAL \init_population_instance|i[8]~51\ : std_logic;
SIGNAL \init_population_instance|i[9]~52_combout\ : std_logic;
SIGNAL \init_population_instance|i[9]~53\ : std_logic;
SIGNAL \init_population_instance|i[10]~54_combout\ : std_logic;
SIGNAL \init_population_instance|i[10]~55\ : std_logic;
SIGNAL \init_population_instance|i[11]~56_combout\ : std_logic;
SIGNAL \init_population_instance|i[11]~57\ : std_logic;
SIGNAL \init_population_instance|i[12]~58_combout\ : std_logic;
SIGNAL \init_population_instance|i[12]~59\ : std_logic;
SIGNAL \init_population_instance|i[13]~60_combout\ : std_logic;
SIGNAL \init_population_instance|i[13]~61\ : std_logic;
SIGNAL \init_population_instance|i[14]~62_combout\ : std_logic;
SIGNAL \init_population_instance|i[14]~63\ : std_logic;
SIGNAL \init_population_instance|i[15]~64_combout\ : std_logic;
SIGNAL \init_population_instance|i[15]~65\ : std_logic;
SIGNAL \init_population_instance|i[16]~66_combout\ : std_logic;
SIGNAL \init_population_instance|i[16]~67\ : std_logic;
SIGNAL \init_population_instance|i[17]~68_combout\ : std_logic;
SIGNAL \init_population_instance|i[17]~69\ : std_logic;
SIGNAL \init_population_instance|i[18]~70_combout\ : std_logic;
SIGNAL \init_population_instance|i[18]~71\ : std_logic;
SIGNAL \init_population_instance|i[19]~72_combout\ : std_logic;
SIGNAL \init_population_instance|i[19]~73\ : std_logic;
SIGNAL \init_population_instance|i[20]~74_combout\ : std_logic;
SIGNAL \init_population_instance|i[20]~75\ : std_logic;
SIGNAL \init_population_instance|i[21]~76_combout\ : std_logic;
SIGNAL \init_population_instance|i[21]~77\ : std_logic;
SIGNAL \init_population_instance|i[22]~78_combout\ : std_logic;
SIGNAL \init_population_instance|i[22]~79\ : std_logic;
SIGNAL \init_population_instance|i[23]~80_combout\ : std_logic;
SIGNAL \init_population_instance|i[23]~81\ : std_logic;
SIGNAL \init_population_instance|i[24]~82_combout\ : std_logic;
SIGNAL \init_population_instance|i[24]~83\ : std_logic;
SIGNAL \init_population_instance|i[25]~84_combout\ : std_logic;
SIGNAL \init_population_instance|i[25]~85\ : std_logic;
SIGNAL \init_population_instance|i[26]~86_combout\ : std_logic;
SIGNAL \init_population_instance|i[26]~87\ : std_logic;
SIGNAL \init_population_instance|i[27]~88_combout\ : std_logic;
SIGNAL \init_population_instance|i[27]~89\ : std_logic;
SIGNAL \init_population_instance|i[28]~90_combout\ : std_logic;
SIGNAL \init_population_instance|i[28]~91\ : std_logic;
SIGNAL \init_population_instance|i[29]~92_combout\ : std_logic;
SIGNAL \init_population_instance|i[29]~93\ : std_logic;
SIGNAL \init_population_instance|i[30]~94_combout\ : std_logic;
SIGNAL \init_population_instance|i[30]~95\ : std_logic;
SIGNAL \init_population_instance|i[31]~96_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan1~5_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan1~6_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan1~7_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan1~3_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan1~0_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan1~1_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan1~2_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan1~4_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan1~8_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan1~9_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan1~10_combout\ : std_logic;
SIGNAL \init_population_instance|p[31]~34_combout\ : std_logic;
SIGNAL \init_population_instance|p[0]~33\ : std_logic;
SIGNAL \init_population_instance|p[1]~35_combout\ : std_logic;
SIGNAL \init_population_instance|p[1]~36\ : std_logic;
SIGNAL \init_population_instance|p[2]~37_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan0~2_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan0~0_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan0~1_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan0~3_combout\ : std_logic;
SIGNAL \init_population_instance|Selector97~0_combout\ : std_logic;
SIGNAL \init_population_instance|stop~0_combout\ : std_logic;
SIGNAL \init_population_instance|stop~q\ : std_logic;
SIGNAL \state.s_init~0_combout\ : std_logic;
SIGNAL \state.s_init~q\ : std_logic;
SIGNAL \init_init_population~0_combout\ : std_logic;
SIGNAL \init_init_population~q\ : std_logic;
SIGNAL \init_population_instance|Selector96~0_combout\ : std_logic;
SIGNAL \init_population_instance|state.s_idle~q\ : std_logic;
SIGNAL \init_population_instance|j[24]~96_combout\ : std_logic;
SIGNAL \init_population_instance|j[24]~97_combout\ : std_logic;
SIGNAL \init_population_instance|j[31]~98_combout\ : std_logic;
SIGNAL \init_population_instance|j[0]~33\ : std_logic;
SIGNAL \init_population_instance|j[1]~34_combout\ : std_logic;
SIGNAL \init_population_instance|j[1]~35\ : std_logic;
SIGNAL \init_population_instance|j[2]~36_combout\ : std_logic;
SIGNAL \init_population_instance|j[2]~37\ : std_logic;
SIGNAL \init_population_instance|j[3]~38_combout\ : std_logic;
SIGNAL \init_population_instance|j[3]~39\ : std_logic;
SIGNAL \init_population_instance|j[4]~40_combout\ : std_logic;
SIGNAL \init_population_instance|j[4]~41\ : std_logic;
SIGNAL \init_population_instance|j[5]~42_combout\ : std_logic;
SIGNAL \init_population_instance|j[5]~43\ : std_logic;
SIGNAL \init_population_instance|j[6]~44_combout\ : std_logic;
SIGNAL \init_population_instance|j[6]~45\ : std_logic;
SIGNAL \init_population_instance|j[7]~46_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan2~1_combout\ : std_logic;
SIGNAL \init_population_instance|j[7]~47\ : std_logic;
SIGNAL \init_population_instance|j[8]~48_combout\ : std_logic;
SIGNAL \init_population_instance|j[8]~49\ : std_logic;
SIGNAL \init_population_instance|j[9]~50_combout\ : std_logic;
SIGNAL \init_population_instance|j[9]~51\ : std_logic;
SIGNAL \init_population_instance|j[10]~52_combout\ : std_logic;
SIGNAL \init_population_instance|j[10]~53\ : std_logic;
SIGNAL \init_population_instance|j[11]~54_combout\ : std_logic;
SIGNAL \init_population_instance|j[11]~55\ : std_logic;
SIGNAL \init_population_instance|j[12]~56_combout\ : std_logic;
SIGNAL \init_population_instance|j[12]~57\ : std_logic;
SIGNAL \init_population_instance|j[13]~58_combout\ : std_logic;
SIGNAL \init_population_instance|j[13]~59\ : std_logic;
SIGNAL \init_population_instance|j[14]~60_combout\ : std_logic;
SIGNAL \init_population_instance|j[14]~61\ : std_logic;
SIGNAL \init_population_instance|j[15]~62_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan2~3_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan2~2_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan2~0_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan2~4_combout\ : std_logic;
SIGNAL \init_population_instance|j[15]~63\ : std_logic;
SIGNAL \init_population_instance|j[16]~64_combout\ : std_logic;
SIGNAL \init_population_instance|j[16]~65\ : std_logic;
SIGNAL \init_population_instance|j[17]~66_combout\ : std_logic;
SIGNAL \init_population_instance|j[17]~67\ : std_logic;
SIGNAL \init_population_instance|j[18]~68_combout\ : std_logic;
SIGNAL \init_population_instance|j[18]~69\ : std_logic;
SIGNAL \init_population_instance|j[19]~70_combout\ : std_logic;
SIGNAL \init_population_instance|j[19]~71\ : std_logic;
SIGNAL \init_population_instance|j[20]~72_combout\ : std_logic;
SIGNAL \init_population_instance|j[20]~73\ : std_logic;
SIGNAL \init_population_instance|j[21]~74_combout\ : std_logic;
SIGNAL \init_population_instance|j[21]~75\ : std_logic;
SIGNAL \init_population_instance|j[22]~76_combout\ : std_logic;
SIGNAL \init_population_instance|j[22]~77\ : std_logic;
SIGNAL \init_population_instance|j[23]~78_combout\ : std_logic;
SIGNAL \init_population_instance|j[23]~79\ : std_logic;
SIGNAL \init_population_instance|j[24]~80_combout\ : std_logic;
SIGNAL \init_population_instance|j[24]~81\ : std_logic;
SIGNAL \init_population_instance|j[25]~82_combout\ : std_logic;
SIGNAL \init_population_instance|j[25]~83\ : std_logic;
SIGNAL \init_population_instance|j[26]~84_combout\ : std_logic;
SIGNAL \init_population_instance|j[26]~85\ : std_logic;
SIGNAL \init_population_instance|j[27]~86_combout\ : std_logic;
SIGNAL \init_population_instance|j[27]~87\ : std_logic;
SIGNAL \init_population_instance|j[28]~88_combout\ : std_logic;
SIGNAL \init_population_instance|j[28]~89\ : std_logic;
SIGNAL \init_population_instance|j[29]~90_combout\ : std_logic;
SIGNAL \init_population_instance|j[29]~91\ : std_logic;
SIGNAL \init_population_instance|j[30]~92_combout\ : std_logic;
SIGNAL \init_population_instance|j[30]~93\ : std_logic;
SIGNAL \init_population_instance|j[31]~94_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan2~5_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan2~6_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan2~7_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan2~8_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan2~9_combout\ : std_logic;
SIGNAL \init_population_instance|LessThan2~10_combout\ : std_logic;
SIGNAL \init_population_instance|Selector98~2_combout\ : std_logic;
SIGNAL \init_population_instance|state.s_i_loop~q\ : std_logic;
SIGNAL \init_population_instance|Selector99~0_combout\ : std_logic;
SIGNAL \init_population_instance|state.s_j_loop~q\ : std_logic;
SIGNAL \init_population_instance|datain[0]~1_combout\ : std_logic;
SIGNAL \init_population_instance|state.s_write~q\ : std_logic;
SIGNAL \init_population_instance|Selector102~0_combout\ : std_logic;
SIGNAL \init_population_instance|Selector102~1_combout\ : std_logic;
SIGNAL \init_population_instance|we~q\ : std_logic;
SIGNAL \init_population_instance|datain[0]~0_combout\ : std_logic;
SIGNAL \state.s_print~0_combout\ : std_logic;
SIGNAL \state.s_print~q\ : std_logic;
SIGNAL \sel_address~feeder_combout\ : std_logic;
SIGNAL \sel_address~q\ : std_logic;
SIGNAL \init_population_instance|Add4~0_combout\ : std_logic;
SIGNAL \init_population_instance|address[0]~13_combout\ : std_logic;
SIGNAL \address[0]~0_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~1_cout\ : std_logic;
SIGNAL \init_population_instance|Add2~2_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~1\ : std_logic;
SIGNAL \init_population_instance|Add4~2_combout\ : std_logic;
SIGNAL \init_population_instance|address[0]~14\ : std_logic;
SIGNAL \init_population_instance|address[1]~15_combout\ : std_logic;
SIGNAL \address[1]~1_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~3\ : std_logic;
SIGNAL \init_population_instance|Add2~4_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~3\ : std_logic;
SIGNAL \init_population_instance|Add4~4_combout\ : std_logic;
SIGNAL \init_population_instance|address[1]~16\ : std_logic;
SIGNAL \init_population_instance|address[2]~17_combout\ : std_logic;
SIGNAL \address[2]~2_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~5\ : std_logic;
SIGNAL \init_population_instance|Add2~6_combout\ : std_logic;
SIGNAL \init_population_instance|Add3~0_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~5\ : std_logic;
SIGNAL \init_population_instance|Add4~6_combout\ : std_logic;
SIGNAL \init_population_instance|address[2]~18\ : std_logic;
SIGNAL \init_population_instance|address[3]~19_combout\ : std_logic;
SIGNAL \address[3]~3_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~7\ : std_logic;
SIGNAL \init_population_instance|Add2~8_combout\ : std_logic;
SIGNAL \init_population_instance|Add3~1\ : std_logic;
SIGNAL \init_population_instance|Add3~2_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~7\ : std_logic;
SIGNAL \init_population_instance|Add4~8_combout\ : std_logic;
SIGNAL \init_population_instance|address[3]~20\ : std_logic;
SIGNAL \init_population_instance|address[4]~21_combout\ : std_logic;
SIGNAL \address[4]~4_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|romout[0][5]~0_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~9\ : std_logic;
SIGNAL \init_population_instance|Add2~10_combout\ : std_logic;
SIGNAL \init_population_instance|Add3~3\ : std_logic;
SIGNAL \init_population_instance|Add3~4_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~9\ : std_logic;
SIGNAL \init_population_instance|Add4~10_combout\ : std_logic;
SIGNAL \init_population_instance|address[4]~22\ : std_logic;
SIGNAL \init_population_instance|address[5]~23_combout\ : std_logic;
SIGNAL \address[5]~5_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|romout[0][6]~1_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~11\ : std_logic;
SIGNAL \init_population_instance|Add2~12_combout\ : std_logic;
SIGNAL \init_population_instance|Add3~5\ : std_logic;
SIGNAL \init_population_instance|Add3~6_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~11\ : std_logic;
SIGNAL \init_population_instance|Add4~12_combout\ : std_logic;
SIGNAL \init_population_instance|address[5]~24\ : std_logic;
SIGNAL \init_population_instance|address[6]~25_combout\ : std_logic;
SIGNAL \address[6]~6_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|romout[0][7]~2_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~13\ : std_logic;
SIGNAL \init_population_instance|Add2~14_combout\ : std_logic;
SIGNAL \init_population_instance|Add3~7\ : std_logic;
SIGNAL \init_population_instance|Add3~8_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~13\ : std_logic;
SIGNAL \init_population_instance|Add4~14_combout\ : std_logic;
SIGNAL \init_population_instance|address[6]~26\ : std_logic;
SIGNAL \init_population_instance|address[7]~27_combout\ : std_logic;
SIGNAL \address[7]~7_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~15\ : std_logic;
SIGNAL \init_population_instance|Add2~16_combout\ : std_logic;
SIGNAL \init_population_instance|Add3~9\ : std_logic;
SIGNAL \init_population_instance|Add3~10_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~15\ : std_logic;
SIGNAL \init_population_instance|Add4~16_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|romout[0][8]~3_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \init_population_instance|address[7]~28\ : std_logic;
SIGNAL \init_population_instance|address[8]~29_combout\ : std_logic;
SIGNAL \address[8]~8_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|romout[0][9]~5_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|romout[1][5]~4_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~17\ : std_logic;
SIGNAL \init_population_instance|Add2~18_combout\ : std_logic;
SIGNAL \init_population_instance|Add3~11\ : std_logic;
SIGNAL \init_population_instance|Add3~12_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~17\ : std_logic;
SIGNAL \init_population_instance|Add4~18_combout\ : std_logic;
SIGNAL \init_population_instance|address[8]~30\ : std_logic;
SIGNAL \init_population_instance|address[9]~31_combout\ : std_logic;
SIGNAL \address[9]~9_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|romout[1][6]~6_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~19\ : std_logic;
SIGNAL \init_population_instance|Add2~20_combout\ : std_logic;
SIGNAL \init_population_instance|Add3~13\ : std_logic;
SIGNAL \init_population_instance|Add3~14_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~19\ : std_logic;
SIGNAL \init_population_instance|Add4~20_combout\ : std_logic;
SIGNAL \init_population_instance|address[9]~32\ : std_logic;
SIGNAL \init_population_instance|address[10]~33_combout\ : std_logic;
SIGNAL \address[10]~10_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|romout[1][7]~7_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~21\ : std_logic;
SIGNAL \init_population_instance|Add2~22_combout\ : std_logic;
SIGNAL \init_population_instance|Add3~15\ : std_logic;
SIGNAL \init_population_instance|Add3~16_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~21\ : std_logic;
SIGNAL \init_population_instance|Add4~22_combout\ : std_logic;
SIGNAL \init_population_instance|address[10]~34\ : std_logic;
SIGNAL \init_population_instance|address[11]~35_combout\ : std_logic;
SIGNAL \address[11]~11_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|romout[1][8]~8_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \init_population_instance|Add2~23\ : std_logic;
SIGNAL \init_population_instance|Add2~24_combout\ : std_logic;
SIGNAL \init_population_instance|Add3~17\ : std_logic;
SIGNAL \init_population_instance|Add3~18_combout\ : std_logic;
SIGNAL \init_population_instance|Add4~23\ : std_logic;
SIGNAL \init_population_instance|Add4~24_combout\ : std_logic;
SIGNAL \init_population_instance|address[11]~36\ : std_logic;
SIGNAL \init_population_instance|address[12]~37_combout\ : std_logic;
SIGNAL \address[12]~12_combout\ : std_logic;
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \print_data_instance|bcd_i[3]~2_combout\ : std_logic;
SIGNAL \init_print~0_combout\ : std_logic;
SIGNAL \init_print~q\ : std_logic;
SIGNAL \print_data_instance|state.s_idle~0_combout\ : std_logic;
SIGNAL \print_data_instance|state.s_idle~q\ : std_logic;
SIGNAL \print_data_instance|state.s_write~feeder_combout\ : std_logic;
SIGNAL \print_data_instance|state.s_write~q\ : std_logic;
SIGNAL \init_population_instance|datain[2]~feeder_combout\ : std_logic;
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \print_data_instance|bcd_i[2]~1_combout\ : std_logic;
SIGNAL \init_population_instance|datain[0]~feeder_combout\ : std_logic;
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \print_data_instance|bcd_i[0]~feeder_combout\ : std_logic;
SIGNAL \ram_instance|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \print_data_instance|bcd_i[1]~0_combout\ : std_logic;
SIGNAL \bcd_seven_instance|Mux6~0_combout\ : std_logic;
SIGNAL \bcd_seven_instance|Mux5~0_combout\ : std_logic;
SIGNAL \bcd_seven_instance|Mux4~0_combout\ : std_logic;
SIGNAL \bcd_seven_instance|Mux3~0_combout\ : std_logic;
SIGNAL \bcd_seven_instance|Mux2~0_combout\ : std_logic;
SIGNAL \bcd_seven_instance|Mux1~0_combout\ : std_logic;
SIGNAL \bcd_seven_instance|Mux0~0_combout\ : std_logic;
SIGNAL \print_data_instance|bcd_i\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \init_population_instance|address\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \init_population_instance|j\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \init_population_instance|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \init_population_instance|p\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \init_population_instance|datain\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \bcd_seven_instance|seven_o\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \init_population_instance|ALT_INV_state.s_i_loop~q\ : std_logic;
SIGNAL \init_population_instance|ALT_INV_state.s_j_loop~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \init_population_instance|datain\(0);

\ram_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[12]~12_combout\ & \address[11]~11_combout\ & \address[10]~10_combout\ & \address[9]~9_combout\ & \address[8]~8_combout\ & \address[7]~7_combout\ & \address[6]~6_combout\ & 
\address[5]~5_combout\ & \address[4]~4_combout\ & \address[3]~3_combout\ & \address[2]~2_combout\ & \address[1]~1_combout\ & \address[0]~0_combout\);

\ram_instance|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \ram_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\ram_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \init_population_instance|datain\(1);

\ram_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\address[12]~12_combout\ & \address[11]~11_combout\ & \address[10]~10_combout\ & \address[9]~9_combout\ & \address[8]~8_combout\ & \address[7]~7_combout\ & \address[6]~6_combout\ & 
\address[5]~5_combout\ & \address[4]~4_combout\ & \address[3]~3_combout\ & \address[2]~2_combout\ & \address[1]~1_combout\ & \address[0]~0_combout\);

\ram_instance|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \ram_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\ram_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \init_population_instance|datain\(2);

\ram_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\address[12]~12_combout\ & \address[11]~11_combout\ & \address[10]~10_combout\ & \address[9]~9_combout\ & \address[8]~8_combout\ & \address[7]~7_combout\ & \address[6]~6_combout\ & 
\address[5]~5_combout\ & \address[4]~4_combout\ & \address[3]~3_combout\ & \address[2]~2_combout\ & \address[1]~1_combout\ & \address[0]~0_combout\);

\ram_instance|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \ram_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\ram_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \init_population_instance|datain\(3);

\ram_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\address[12]~12_combout\ & \address[11]~11_combout\ & \address[10]~10_combout\ & \address[9]~9_combout\ & \address[8]~8_combout\ & \address[7]~7_combout\ & \address[6]~6_combout\ & 
\address[5]~5_combout\ & \address[4]~4_combout\ & \address[3]~3_combout\ & \address[2]~2_combout\ & \address[1]~1_combout\ & \address[0]~0_combout\);

\ram_instance|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \ram_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\init_population_instance|ALT_INV_state.s_i_loop~q\ <= NOT \init_population_instance|state.s_i_loop~q\;
\init_population_instance|ALT_INV_state.s_j_loop~q\ <= NOT \init_population_instance|state.s_j_loop~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_seven_instance|seven_o\(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_seven_instance|seven_o\(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_seven_instance|seven_o\(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_seven_instance|seven_o\(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_seven_instance|seven_o\(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_seven_instance|seven_o\(5),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_seven_instance|seven_o\(6),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X109_Y45_N31
\init_population_instance|state.s_write_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|state.s_write~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|state.s_write_done~q\);

-- Location: LCCOMB_X109_Y45_N30
\init_population_instance|Selector98~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Selector98~1_combout\ = (!\init_population_instance|state.s_write~q\ & (!\init_population_instance|state.s_j_loop~q\ & (!\init_population_instance|state.s_write_done~q\ & !\init_population_instance|state.s_i_loop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|state.s_write~q\,
	datab => \init_population_instance|state.s_j_loop~q\,
	datac => \init_population_instance|state.s_write_done~q\,
	datad => \init_population_instance|state.s_i_loop~q\,
	combout => \init_population_instance|Selector98~1_combout\);

-- Location: LCCOMB_X108_Y45_N0
\init_population_instance|j[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[0]~32_combout\ = \init_population_instance|j\(0) $ (VCC)
-- \init_population_instance|j[0]~33\ = CARRY(\init_population_instance|j\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(0),
	datad => VCC,
	combout => \init_population_instance|j[0]~32_combout\,
	cout => \init_population_instance|j[0]~33\);

-- Location: LCCOMB_X107_Y45_N0
\init_population_instance|p[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[0]~32_combout\ = \init_population_instance|p\(0) $ (VCC)
-- \init_population_instance|p[0]~33\ = CARRY(\init_population_instance|p\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(0),
	datad => VCC,
	combout => \init_population_instance|p[0]~32_combout\,
	cout => \init_population_instance|p[0]~33\);

-- Location: LCCOMB_X111_Y46_N0
\init_population_instance|i[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[0]~33_combout\ = \init_population_instance|i\(0) $ (VCC)
-- \init_population_instance|i[0]~34\ = CARRY(\init_population_instance|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(0),
	datad => VCC,
	combout => \init_population_instance|i[0]~33_combout\,
	cout => \init_population_instance|i[0]~34\);

-- Location: LCCOMB_X109_Y45_N6
\init_population_instance|i[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[24]~32_combout\ = (\init_population_instance|state.s_j_loop~q\ & !\init_population_instance|LessThan2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init_population_instance|state.s_j_loop~q\,
	datad => \init_population_instance|LessThan2~10_combout\,
	combout => \init_population_instance|i[24]~32_combout\);

-- Location: LCCOMB_X107_Y45_N4
\init_population_instance|p[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[2]~37_combout\ = (\init_population_instance|p\(2) & (\init_population_instance|p[1]~36\ $ (GND))) # (!\init_population_instance|p\(2) & (!\init_population_instance|p[1]~36\ & VCC))
-- \init_population_instance|p[2]~38\ = CARRY((\init_population_instance|p\(2) & !\init_population_instance|p[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(2),
	datad => VCC,
	cin => \init_population_instance|p[1]~36\,
	combout => \init_population_instance|p[2]~37_combout\,
	cout => \init_population_instance|p[2]~38\);

-- Location: LCCOMB_X107_Y45_N6
\init_population_instance|p[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[3]~39_combout\ = (\init_population_instance|p\(3) & (!\init_population_instance|p[2]~38\)) # (!\init_population_instance|p\(3) & ((\init_population_instance|p[2]~38\) # (GND)))
-- \init_population_instance|p[3]~40\ = CARRY((!\init_population_instance|p[2]~38\) # (!\init_population_instance|p\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(3),
	datad => VCC,
	cin => \init_population_instance|p[2]~38\,
	combout => \init_population_instance|p[3]~39_combout\,
	cout => \init_population_instance|p[3]~40\);

-- Location: FF_X107_Y45_N7
\init_population_instance|p[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[3]~39_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(3));

-- Location: LCCOMB_X107_Y45_N8
\init_population_instance|p[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[4]~41_combout\ = (\init_population_instance|p\(4) & (\init_population_instance|p[3]~40\ $ (GND))) # (!\init_population_instance|p\(4) & (!\init_population_instance|p[3]~40\ & VCC))
-- \init_population_instance|p[4]~42\ = CARRY((\init_population_instance|p\(4) & !\init_population_instance|p[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(4),
	datad => VCC,
	cin => \init_population_instance|p[3]~40\,
	combout => \init_population_instance|p[4]~41_combout\,
	cout => \init_population_instance|p[4]~42\);

-- Location: FF_X107_Y45_N9
\init_population_instance|p[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[4]~41_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(4));

-- Location: LCCOMB_X107_Y45_N10
\init_population_instance|p[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[5]~43_combout\ = (\init_population_instance|p\(5) & (!\init_population_instance|p[4]~42\)) # (!\init_population_instance|p\(5) & ((\init_population_instance|p[4]~42\) # (GND)))
-- \init_population_instance|p[5]~44\ = CARRY((!\init_population_instance|p[4]~42\) # (!\init_population_instance|p\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(5),
	datad => VCC,
	cin => \init_population_instance|p[4]~42\,
	combout => \init_population_instance|p[5]~43_combout\,
	cout => \init_population_instance|p[5]~44\);

-- Location: FF_X107_Y45_N11
\init_population_instance|p[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[5]~43_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(5));

-- Location: LCCOMB_X107_Y45_N12
\init_population_instance|p[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[6]~45_combout\ = (\init_population_instance|p\(6) & (\init_population_instance|p[5]~44\ $ (GND))) # (!\init_population_instance|p\(6) & (!\init_population_instance|p[5]~44\ & VCC))
-- \init_population_instance|p[6]~46\ = CARRY((\init_population_instance|p\(6) & !\init_population_instance|p[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(6),
	datad => VCC,
	cin => \init_population_instance|p[5]~44\,
	combout => \init_population_instance|p[6]~45_combout\,
	cout => \init_population_instance|p[6]~46\);

-- Location: FF_X107_Y45_N13
\init_population_instance|p[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[6]~45_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(6));

-- Location: LCCOMB_X107_Y45_N14
\init_population_instance|p[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[7]~47_combout\ = (\init_population_instance|p\(7) & (!\init_population_instance|p[6]~46\)) # (!\init_population_instance|p\(7) & ((\init_population_instance|p[6]~46\) # (GND)))
-- \init_population_instance|p[7]~48\ = CARRY((!\init_population_instance|p[6]~46\) # (!\init_population_instance|p\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(7),
	datad => VCC,
	cin => \init_population_instance|p[6]~46\,
	combout => \init_population_instance|p[7]~47_combout\,
	cout => \init_population_instance|p[7]~48\);

-- Location: FF_X107_Y45_N15
\init_population_instance|p[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[7]~47_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(7));

-- Location: LCCOMB_X107_Y45_N16
\init_population_instance|p[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[8]~49_combout\ = (\init_population_instance|p\(8) & (\init_population_instance|p[7]~48\ $ (GND))) # (!\init_population_instance|p\(8) & (!\init_population_instance|p[7]~48\ & VCC))
-- \init_population_instance|p[8]~50\ = CARRY((\init_population_instance|p\(8) & !\init_population_instance|p[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(8),
	datad => VCC,
	cin => \init_population_instance|p[7]~48\,
	combout => \init_population_instance|p[8]~49_combout\,
	cout => \init_population_instance|p[8]~50\);

-- Location: FF_X107_Y45_N17
\init_population_instance|p[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[8]~49_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(8));

-- Location: LCCOMB_X107_Y45_N18
\init_population_instance|p[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[9]~51_combout\ = (\init_population_instance|p\(9) & (!\init_population_instance|p[8]~50\)) # (!\init_population_instance|p\(9) & ((\init_population_instance|p[8]~50\) # (GND)))
-- \init_population_instance|p[9]~52\ = CARRY((!\init_population_instance|p[8]~50\) # (!\init_population_instance|p\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(9),
	datad => VCC,
	cin => \init_population_instance|p[8]~50\,
	combout => \init_population_instance|p[9]~51_combout\,
	cout => \init_population_instance|p[9]~52\);

-- Location: FF_X107_Y45_N19
\init_population_instance|p[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[9]~51_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(9));

-- Location: LCCOMB_X107_Y45_N20
\init_population_instance|p[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[10]~53_combout\ = (\init_population_instance|p\(10) & (\init_population_instance|p[9]~52\ $ (GND))) # (!\init_population_instance|p\(10) & (!\init_population_instance|p[9]~52\ & VCC))
-- \init_population_instance|p[10]~54\ = CARRY((\init_population_instance|p\(10) & !\init_population_instance|p[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(10),
	datad => VCC,
	cin => \init_population_instance|p[9]~52\,
	combout => \init_population_instance|p[10]~53_combout\,
	cout => \init_population_instance|p[10]~54\);

-- Location: FF_X107_Y45_N21
\init_population_instance|p[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[10]~53_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(10));

-- Location: LCCOMB_X107_Y45_N22
\init_population_instance|p[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[11]~55_combout\ = (\init_population_instance|p\(11) & (!\init_population_instance|p[10]~54\)) # (!\init_population_instance|p\(11) & ((\init_population_instance|p[10]~54\) # (GND)))
-- \init_population_instance|p[11]~56\ = CARRY((!\init_population_instance|p[10]~54\) # (!\init_population_instance|p\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(11),
	datad => VCC,
	cin => \init_population_instance|p[10]~54\,
	combout => \init_population_instance|p[11]~55_combout\,
	cout => \init_population_instance|p[11]~56\);

-- Location: FF_X107_Y45_N23
\init_population_instance|p[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[11]~55_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(11));

-- Location: LCCOMB_X107_Y45_N24
\init_population_instance|p[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[12]~57_combout\ = (\init_population_instance|p\(12) & (\init_population_instance|p[11]~56\ $ (GND))) # (!\init_population_instance|p\(12) & (!\init_population_instance|p[11]~56\ & VCC))
-- \init_population_instance|p[12]~58\ = CARRY((\init_population_instance|p\(12) & !\init_population_instance|p[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(12),
	datad => VCC,
	cin => \init_population_instance|p[11]~56\,
	combout => \init_population_instance|p[12]~57_combout\,
	cout => \init_population_instance|p[12]~58\);

-- Location: FF_X107_Y45_N25
\init_population_instance|p[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[12]~57_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(12));

-- Location: LCCOMB_X107_Y45_N26
\init_population_instance|p[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[13]~59_combout\ = (\init_population_instance|p\(13) & (!\init_population_instance|p[12]~58\)) # (!\init_population_instance|p\(13) & ((\init_population_instance|p[12]~58\) # (GND)))
-- \init_population_instance|p[13]~60\ = CARRY((!\init_population_instance|p[12]~58\) # (!\init_population_instance|p\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(13),
	datad => VCC,
	cin => \init_population_instance|p[12]~58\,
	combout => \init_population_instance|p[13]~59_combout\,
	cout => \init_population_instance|p[13]~60\);

-- Location: FF_X107_Y45_N27
\init_population_instance|p[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[13]~59_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(13));

-- Location: LCCOMB_X107_Y45_N28
\init_population_instance|p[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[14]~61_combout\ = (\init_population_instance|p\(14) & (\init_population_instance|p[13]~60\ $ (GND))) # (!\init_population_instance|p\(14) & (!\init_population_instance|p[13]~60\ & VCC))
-- \init_population_instance|p[14]~62\ = CARRY((\init_population_instance|p\(14) & !\init_population_instance|p[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(14),
	datad => VCC,
	cin => \init_population_instance|p[13]~60\,
	combout => \init_population_instance|p[14]~61_combout\,
	cout => \init_population_instance|p[14]~62\);

-- Location: FF_X107_Y45_N29
\init_population_instance|p[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[14]~61_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(14));

-- Location: LCCOMB_X107_Y45_N30
\init_population_instance|p[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[15]~63_combout\ = (\init_population_instance|p\(15) & (!\init_population_instance|p[14]~62\)) # (!\init_population_instance|p\(15) & ((\init_population_instance|p[14]~62\) # (GND)))
-- \init_population_instance|p[15]~64\ = CARRY((!\init_population_instance|p[14]~62\) # (!\init_population_instance|p\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(15),
	datad => VCC,
	cin => \init_population_instance|p[14]~62\,
	combout => \init_population_instance|p[15]~63_combout\,
	cout => \init_population_instance|p[15]~64\);

-- Location: FF_X107_Y45_N31
\init_population_instance|p[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[15]~63_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(15));

-- Location: LCCOMB_X107_Y44_N0
\init_population_instance|p[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[16]~65_combout\ = (\init_population_instance|p\(16) & (\init_population_instance|p[15]~64\ $ (GND))) # (!\init_population_instance|p\(16) & (!\init_population_instance|p[15]~64\ & VCC))
-- \init_population_instance|p[16]~66\ = CARRY((\init_population_instance|p\(16) & !\init_population_instance|p[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(16),
	datad => VCC,
	cin => \init_population_instance|p[15]~64\,
	combout => \init_population_instance|p[16]~65_combout\,
	cout => \init_population_instance|p[16]~66\);

-- Location: FF_X107_Y44_N1
\init_population_instance|p[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[16]~65_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(16));

-- Location: LCCOMB_X107_Y44_N2
\init_population_instance|p[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[17]~67_combout\ = (\init_population_instance|p\(17) & (!\init_population_instance|p[16]~66\)) # (!\init_population_instance|p\(17) & ((\init_population_instance|p[16]~66\) # (GND)))
-- \init_population_instance|p[17]~68\ = CARRY((!\init_population_instance|p[16]~66\) # (!\init_population_instance|p\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(17),
	datad => VCC,
	cin => \init_population_instance|p[16]~66\,
	combout => \init_population_instance|p[17]~67_combout\,
	cout => \init_population_instance|p[17]~68\);

-- Location: FF_X107_Y44_N3
\init_population_instance|p[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[17]~67_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(17));

-- Location: LCCOMB_X107_Y44_N4
\init_population_instance|p[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[18]~69_combout\ = (\init_population_instance|p\(18) & (\init_population_instance|p[17]~68\ $ (GND))) # (!\init_population_instance|p\(18) & (!\init_population_instance|p[17]~68\ & VCC))
-- \init_population_instance|p[18]~70\ = CARRY((\init_population_instance|p\(18) & !\init_population_instance|p[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(18),
	datad => VCC,
	cin => \init_population_instance|p[17]~68\,
	combout => \init_population_instance|p[18]~69_combout\,
	cout => \init_population_instance|p[18]~70\);

-- Location: FF_X107_Y44_N5
\init_population_instance|p[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[18]~69_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(18));

-- Location: LCCOMB_X107_Y44_N6
\init_population_instance|p[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[19]~71_combout\ = (\init_population_instance|p\(19) & (!\init_population_instance|p[18]~70\)) # (!\init_population_instance|p\(19) & ((\init_population_instance|p[18]~70\) # (GND)))
-- \init_population_instance|p[19]~72\ = CARRY((!\init_population_instance|p[18]~70\) # (!\init_population_instance|p\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(19),
	datad => VCC,
	cin => \init_population_instance|p[18]~70\,
	combout => \init_population_instance|p[19]~71_combout\,
	cout => \init_population_instance|p[19]~72\);

-- Location: FF_X107_Y44_N7
\init_population_instance|p[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[19]~71_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(19));

-- Location: LCCOMB_X107_Y44_N8
\init_population_instance|p[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[20]~73_combout\ = (\init_population_instance|p\(20) & (\init_population_instance|p[19]~72\ $ (GND))) # (!\init_population_instance|p\(20) & (!\init_population_instance|p[19]~72\ & VCC))
-- \init_population_instance|p[20]~74\ = CARRY((\init_population_instance|p\(20) & !\init_population_instance|p[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(20),
	datad => VCC,
	cin => \init_population_instance|p[19]~72\,
	combout => \init_population_instance|p[20]~73_combout\,
	cout => \init_population_instance|p[20]~74\);

-- Location: FF_X107_Y44_N9
\init_population_instance|p[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[20]~73_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(20));

-- Location: LCCOMB_X107_Y44_N10
\init_population_instance|p[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[21]~75_combout\ = (\init_population_instance|p\(21) & (!\init_population_instance|p[20]~74\)) # (!\init_population_instance|p\(21) & ((\init_population_instance|p[20]~74\) # (GND)))
-- \init_population_instance|p[21]~76\ = CARRY((!\init_population_instance|p[20]~74\) # (!\init_population_instance|p\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(21),
	datad => VCC,
	cin => \init_population_instance|p[20]~74\,
	combout => \init_population_instance|p[21]~75_combout\,
	cout => \init_population_instance|p[21]~76\);

-- Location: FF_X107_Y44_N11
\init_population_instance|p[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[21]~75_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(21));

-- Location: LCCOMB_X107_Y44_N12
\init_population_instance|p[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[22]~77_combout\ = (\init_population_instance|p\(22) & (\init_population_instance|p[21]~76\ $ (GND))) # (!\init_population_instance|p\(22) & (!\init_population_instance|p[21]~76\ & VCC))
-- \init_population_instance|p[22]~78\ = CARRY((\init_population_instance|p\(22) & !\init_population_instance|p[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(22),
	datad => VCC,
	cin => \init_population_instance|p[21]~76\,
	combout => \init_population_instance|p[22]~77_combout\,
	cout => \init_population_instance|p[22]~78\);

-- Location: FF_X107_Y44_N13
\init_population_instance|p[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[22]~77_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(22));

-- Location: LCCOMB_X107_Y44_N14
\init_population_instance|p[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[23]~79_combout\ = (\init_population_instance|p\(23) & (!\init_population_instance|p[22]~78\)) # (!\init_population_instance|p\(23) & ((\init_population_instance|p[22]~78\) # (GND)))
-- \init_population_instance|p[23]~80\ = CARRY((!\init_population_instance|p[22]~78\) # (!\init_population_instance|p\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(23),
	datad => VCC,
	cin => \init_population_instance|p[22]~78\,
	combout => \init_population_instance|p[23]~79_combout\,
	cout => \init_population_instance|p[23]~80\);

-- Location: FF_X107_Y44_N15
\init_population_instance|p[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[23]~79_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(23));

-- Location: LCCOMB_X107_Y44_N16
\init_population_instance|p[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[24]~81_combout\ = (\init_population_instance|p\(24) & (\init_population_instance|p[23]~80\ $ (GND))) # (!\init_population_instance|p\(24) & (!\init_population_instance|p[23]~80\ & VCC))
-- \init_population_instance|p[24]~82\ = CARRY((\init_population_instance|p\(24) & !\init_population_instance|p[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(24),
	datad => VCC,
	cin => \init_population_instance|p[23]~80\,
	combout => \init_population_instance|p[24]~81_combout\,
	cout => \init_population_instance|p[24]~82\);

-- Location: FF_X107_Y44_N17
\init_population_instance|p[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[24]~81_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(24));

-- Location: LCCOMB_X107_Y44_N18
\init_population_instance|p[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[25]~83_combout\ = (\init_population_instance|p\(25) & (!\init_population_instance|p[24]~82\)) # (!\init_population_instance|p\(25) & ((\init_population_instance|p[24]~82\) # (GND)))
-- \init_population_instance|p[25]~84\ = CARRY((!\init_population_instance|p[24]~82\) # (!\init_population_instance|p\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(25),
	datad => VCC,
	cin => \init_population_instance|p[24]~82\,
	combout => \init_population_instance|p[25]~83_combout\,
	cout => \init_population_instance|p[25]~84\);

-- Location: FF_X107_Y44_N19
\init_population_instance|p[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[25]~83_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(25));

-- Location: LCCOMB_X107_Y44_N20
\init_population_instance|p[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[26]~85_combout\ = (\init_population_instance|p\(26) & (\init_population_instance|p[25]~84\ $ (GND))) # (!\init_population_instance|p\(26) & (!\init_population_instance|p[25]~84\ & VCC))
-- \init_population_instance|p[26]~86\ = CARRY((\init_population_instance|p\(26) & !\init_population_instance|p[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(26),
	datad => VCC,
	cin => \init_population_instance|p[25]~84\,
	combout => \init_population_instance|p[26]~85_combout\,
	cout => \init_population_instance|p[26]~86\);

-- Location: FF_X107_Y44_N21
\init_population_instance|p[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[26]~85_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(26));

-- Location: LCCOMB_X107_Y44_N22
\init_population_instance|p[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[27]~87_combout\ = (\init_population_instance|p\(27) & (!\init_population_instance|p[26]~86\)) # (!\init_population_instance|p\(27) & ((\init_population_instance|p[26]~86\) # (GND)))
-- \init_population_instance|p[27]~88\ = CARRY((!\init_population_instance|p[26]~86\) # (!\init_population_instance|p\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(27),
	datad => VCC,
	cin => \init_population_instance|p[26]~86\,
	combout => \init_population_instance|p[27]~87_combout\,
	cout => \init_population_instance|p[27]~88\);

-- Location: FF_X107_Y44_N23
\init_population_instance|p[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[27]~87_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(27));

-- Location: LCCOMB_X107_Y44_N24
\init_population_instance|p[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[28]~89_combout\ = (\init_population_instance|p\(28) & (\init_population_instance|p[27]~88\ $ (GND))) # (!\init_population_instance|p\(28) & (!\init_population_instance|p[27]~88\ & VCC))
-- \init_population_instance|p[28]~90\ = CARRY((\init_population_instance|p\(28) & !\init_population_instance|p[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(28),
	datad => VCC,
	cin => \init_population_instance|p[27]~88\,
	combout => \init_population_instance|p[28]~89_combout\,
	cout => \init_population_instance|p[28]~90\);

-- Location: FF_X107_Y44_N25
\init_population_instance|p[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[28]~89_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(28));

-- Location: LCCOMB_X107_Y44_N26
\init_population_instance|p[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[29]~91_combout\ = (\init_population_instance|p\(29) & (!\init_population_instance|p[28]~90\)) # (!\init_population_instance|p\(29) & ((\init_population_instance|p[28]~90\) # (GND)))
-- \init_population_instance|p[29]~92\ = CARRY((!\init_population_instance|p[28]~90\) # (!\init_population_instance|p\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(29),
	datad => VCC,
	cin => \init_population_instance|p[28]~90\,
	combout => \init_population_instance|p[29]~91_combout\,
	cout => \init_population_instance|p[29]~92\);

-- Location: FF_X107_Y44_N27
\init_population_instance|p[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[29]~91_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(29));

-- Location: LCCOMB_X107_Y44_N28
\init_population_instance|p[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[30]~93_combout\ = (\init_population_instance|p\(30) & (\init_population_instance|p[29]~92\ $ (GND))) # (!\init_population_instance|p\(30) & (!\init_population_instance|p[29]~92\ & VCC))
-- \init_population_instance|p[30]~94\ = CARRY((\init_population_instance|p\(30) & !\init_population_instance|p[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(30),
	datad => VCC,
	cin => \init_population_instance|p[29]~92\,
	combout => \init_population_instance|p[30]~93_combout\,
	cout => \init_population_instance|p[30]~94\);

-- Location: FF_X107_Y44_N29
\init_population_instance|p[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[30]~93_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(30));

-- Location: LCCOMB_X107_Y44_N30
\init_population_instance|p[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[31]~95_combout\ = \init_population_instance|p\(31) $ (\init_population_instance|p[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(31),
	cin => \init_population_instance|p[30]~94\,
	combout => \init_population_instance|p[31]~95_combout\);

-- Location: FF_X107_Y44_N31
\init_population_instance|p[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[31]~95_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(31));

-- Location: LCCOMB_X106_Y45_N26
\init_population_instance|Selector97~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Selector97~1_combout\ = (\init_population_instance|LessThan1~10_combout\ & ((\init_population_instance|state.s_idle~q\) # ((!\init_init_population~q\)))) # (!\init_population_instance|LessThan1~10_combout\ & 
-- (!\init_population_instance|state.s_i_loop~q\ & ((\init_population_instance|state.s_idle~q\) # (!\init_init_population~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|LessThan1~10_combout\,
	datab => \init_population_instance|state.s_idle~q\,
	datac => \init_population_instance|state.s_i_loop~q\,
	datad => \init_init_population~q\,
	combout => \init_population_instance|Selector97~1_combout\);

-- Location: LCCOMB_X106_Y45_N14
\init_population_instance|Selector97~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Selector97~2_combout\ = ((\init_init_population~q\ & \init_population_instance|Selector97~0_combout\)) # (!\init_population_instance|Selector97~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init_init_population~q\,
	datac => \init_population_instance|Selector97~1_combout\,
	datad => \init_population_instance|Selector97~0_combout\,
	combout => \init_population_instance|Selector97~2_combout\);

-- Location: FF_X106_Y45_N15
\init_population_instance|state.s_p_loop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|Selector97~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|state.s_p_loop~q\);

-- Location: LCCOMB_X106_Y44_N10
\init_population_instance|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan0~7_combout\ = (!\init_population_instance|p\(29) & (!\init_population_instance|p\(30) & (!\init_population_instance|p\(28) & !\init_population_instance|p\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(29),
	datab => \init_population_instance|p\(30),
	datac => \init_population_instance|p\(28),
	datad => \init_population_instance|p\(27),
	combout => \init_population_instance|LessThan0~7_combout\);

-- Location: LCCOMB_X106_Y44_N28
\init_population_instance|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan0~4_combout\ = (!\init_population_instance|p\(17) & (!\init_population_instance|p\(16) & (!\init_population_instance|p\(15) & !\init_population_instance|p\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(17),
	datab => \init_population_instance|p\(16),
	datac => \init_population_instance|p\(15),
	datad => \init_population_instance|p\(18),
	combout => \init_population_instance|LessThan0~4_combout\);

-- Location: LCCOMB_X106_Y44_N8
\init_population_instance|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan0~6_combout\ = (!\init_population_instance|p\(26) & (!\init_population_instance|p\(25) & (!\init_population_instance|p\(23) & !\init_population_instance|p\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(26),
	datab => \init_population_instance|p\(25),
	datac => \init_population_instance|p\(23),
	datad => \init_population_instance|p\(24),
	combout => \init_population_instance|LessThan0~6_combout\);

-- Location: LCCOMB_X106_Y44_N18
\init_population_instance|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan0~5_combout\ = (!\init_population_instance|p\(19) & (!\init_population_instance|p\(20) & (!\init_population_instance|p\(22) & !\init_population_instance|p\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(19),
	datab => \init_population_instance|p\(20),
	datac => \init_population_instance|p\(22),
	datad => \init_population_instance|p\(21),
	combout => \init_population_instance|LessThan0~5_combout\);

-- Location: LCCOMB_X106_Y44_N0
\init_population_instance|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan0~8_combout\ = (\init_population_instance|LessThan0~7_combout\ & (\init_population_instance|LessThan0~4_combout\ & (\init_population_instance|LessThan0~6_combout\ & \init_population_instance|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|LessThan0~7_combout\,
	datab => \init_population_instance|LessThan0~4_combout\,
	datac => \init_population_instance|LessThan0~6_combout\,
	datad => \init_population_instance|LessThan0~5_combout\,
	combout => \init_population_instance|LessThan0~8_combout\);

-- Location: LCCOMB_X106_Y45_N24
\init_population_instance|Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Selector98~0_combout\ = (\init_population_instance|state.s_p_loop~q\ & ((\init_population_instance|p\(31)) # ((\init_population_instance|LessThan0~3_combout\ & \init_population_instance|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|LessThan0~3_combout\,
	datab => \init_population_instance|p\(31),
	datac => \init_population_instance|state.s_p_loop~q\,
	datad => \init_population_instance|LessThan0~8_combout\,
	combout => \init_population_instance|Selector98~0_combout\);

-- Location: LCCOMB_X110_Y45_N2
\init_population_instance|i[31]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[31]~35_combout\ = (!\reset~input_o\ & (((\init_population_instance|i[24]~32_combout\) # (\init_population_instance|Selector98~0_combout\)) # (!\init_population_instance|j[24]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \init_population_instance|j[24]~96_combout\,
	datac => \init_population_instance|i[24]~32_combout\,
	datad => \init_population_instance|Selector98~0_combout\,
	combout => \init_population_instance|i[31]~35_combout\);

-- Location: FF_X110_Y46_N27
\init_population_instance|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|i[0]~33_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	sload => VCC,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(0));

-- Location: LCCOMB_X111_Y46_N2
\init_population_instance|i[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[1]~36_combout\ = (\init_population_instance|i\(1) & (!\init_population_instance|i[0]~34\)) # (!\init_population_instance|i\(1) & ((\init_population_instance|i[0]~34\) # (GND)))
-- \init_population_instance|i[1]~37\ = CARRY((!\init_population_instance|i[0]~34\) # (!\init_population_instance|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(1),
	datad => VCC,
	cin => \init_population_instance|i[0]~34\,
	combout => \init_population_instance|i[1]~36_combout\,
	cout => \init_population_instance|i[1]~37\);

-- Location: FF_X110_Y46_N23
\init_population_instance|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|i[1]~36_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	sload => VCC,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(1));

-- Location: LCCOMB_X111_Y46_N4
\init_population_instance|i[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[2]~38_combout\ = (\init_population_instance|i\(2) & (\init_population_instance|i[1]~37\ $ (GND))) # (!\init_population_instance|i\(2) & (!\init_population_instance|i[1]~37\ & VCC))
-- \init_population_instance|i[2]~39\ = CARRY((\init_population_instance|i\(2) & !\init_population_instance|i[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(2),
	datad => VCC,
	cin => \init_population_instance|i[1]~37\,
	combout => \init_population_instance|i[2]~38_combout\,
	cout => \init_population_instance|i[2]~39\);

-- Location: FF_X110_Y46_N7
\init_population_instance|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|i[2]~38_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	sload => VCC,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(2));

-- Location: LCCOMB_X111_Y46_N6
\init_population_instance|i[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[3]~40_combout\ = (\init_population_instance|i\(3) & (!\init_population_instance|i[2]~39\)) # (!\init_population_instance|i\(3) & ((\init_population_instance|i[2]~39\) # (GND)))
-- \init_population_instance|i[3]~41\ = CARRY((!\init_population_instance|i[2]~39\) # (!\init_population_instance|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(3),
	datad => VCC,
	cin => \init_population_instance|i[2]~39\,
	combout => \init_population_instance|i[3]~40_combout\,
	cout => \init_population_instance|i[3]~41\);

-- Location: FF_X110_Y46_N3
\init_population_instance|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|i[3]~40_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	sload => VCC,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(3));

-- Location: LCCOMB_X111_Y46_N8
\init_population_instance|i[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[4]~42_combout\ = (\init_population_instance|i\(4) & (\init_population_instance|i[3]~41\ $ (GND))) # (!\init_population_instance|i\(4) & (!\init_population_instance|i[3]~41\ & VCC))
-- \init_population_instance|i[4]~43\ = CARRY((\init_population_instance|i\(4) & !\init_population_instance|i[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(4),
	datad => VCC,
	cin => \init_population_instance|i[3]~41\,
	combout => \init_population_instance|i[4]~42_combout\,
	cout => \init_population_instance|i[4]~43\);

-- Location: FF_X110_Y46_N1
\init_population_instance|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|i[4]~42_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	sload => VCC,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(4));

-- Location: LCCOMB_X111_Y46_N10
\init_population_instance|i[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[5]~44_combout\ = (\init_population_instance|i\(5) & (!\init_population_instance|i[4]~43\)) # (!\init_population_instance|i\(5) & ((\init_population_instance|i[4]~43\) # (GND)))
-- \init_population_instance|i[5]~45\ = CARRY((!\init_population_instance|i[4]~43\) # (!\init_population_instance|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(5),
	datad => VCC,
	cin => \init_population_instance|i[4]~43\,
	combout => \init_population_instance|i[5]~44_combout\,
	cout => \init_population_instance|i[5]~45\);

-- Location: FF_X110_Y46_N15
\init_population_instance|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|i[5]~44_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	sload => VCC,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(5));

-- Location: LCCOMB_X111_Y46_N12
\init_population_instance|i[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[6]~46_combout\ = (\init_population_instance|i\(6) & (\init_population_instance|i[5]~45\ $ (GND))) # (!\init_population_instance|i\(6) & (!\init_population_instance|i[5]~45\ & VCC))
-- \init_population_instance|i[6]~47\ = CARRY((\init_population_instance|i\(6) & !\init_population_instance|i[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(6),
	datad => VCC,
	cin => \init_population_instance|i[5]~45\,
	combout => \init_population_instance|i[6]~46_combout\,
	cout => \init_population_instance|i[6]~47\);

-- Location: FF_X110_Y46_N9
\init_population_instance|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|i[6]~46_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	sload => VCC,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(6));

-- Location: LCCOMB_X111_Y46_N14
\init_population_instance|i[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[7]~48_combout\ = (\init_population_instance|i\(7) & (!\init_population_instance|i[6]~47\)) # (!\init_population_instance|i\(7) & ((\init_population_instance|i[6]~47\) # (GND)))
-- \init_population_instance|i[7]~49\ = CARRY((!\init_population_instance|i[6]~47\) # (!\init_population_instance|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(7),
	datad => VCC,
	cin => \init_population_instance|i[6]~47\,
	combout => \init_population_instance|i[7]~48_combout\,
	cout => \init_population_instance|i[7]~49\);

-- Location: FF_X110_Y46_N19
\init_population_instance|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|i[7]~48_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	sload => VCC,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(7));

-- Location: LCCOMB_X111_Y46_N16
\init_population_instance|i[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[8]~50_combout\ = (\init_population_instance|i\(8) & (\init_population_instance|i[7]~49\ $ (GND))) # (!\init_population_instance|i\(8) & (!\init_population_instance|i[7]~49\ & VCC))
-- \init_population_instance|i[8]~51\ = CARRY((\init_population_instance|i\(8) & !\init_population_instance|i[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(8),
	datad => VCC,
	cin => \init_population_instance|i[7]~49\,
	combout => \init_population_instance|i[8]~50_combout\,
	cout => \init_population_instance|i[8]~51\);

-- Location: FF_X111_Y46_N17
\init_population_instance|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[8]~50_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(8));

-- Location: LCCOMB_X111_Y46_N18
\init_population_instance|i[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[9]~52_combout\ = (\init_population_instance|i\(9) & (!\init_population_instance|i[8]~51\)) # (!\init_population_instance|i\(9) & ((\init_population_instance|i[8]~51\) # (GND)))
-- \init_population_instance|i[9]~53\ = CARRY((!\init_population_instance|i[8]~51\) # (!\init_population_instance|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(9),
	datad => VCC,
	cin => \init_population_instance|i[8]~51\,
	combout => \init_population_instance|i[9]~52_combout\,
	cout => \init_population_instance|i[9]~53\);

-- Location: FF_X111_Y46_N19
\init_population_instance|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[9]~52_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(9));

-- Location: LCCOMB_X111_Y46_N20
\init_population_instance|i[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[10]~54_combout\ = (\init_population_instance|i\(10) & (\init_population_instance|i[9]~53\ $ (GND))) # (!\init_population_instance|i\(10) & (!\init_population_instance|i[9]~53\ & VCC))
-- \init_population_instance|i[10]~55\ = CARRY((\init_population_instance|i\(10) & !\init_population_instance|i[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(10),
	datad => VCC,
	cin => \init_population_instance|i[9]~53\,
	combout => \init_population_instance|i[10]~54_combout\,
	cout => \init_population_instance|i[10]~55\);

-- Location: FF_X111_Y46_N21
\init_population_instance|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[10]~54_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(10));

-- Location: LCCOMB_X111_Y46_N22
\init_population_instance|i[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[11]~56_combout\ = (\init_population_instance|i\(11) & (!\init_population_instance|i[10]~55\)) # (!\init_population_instance|i\(11) & ((\init_population_instance|i[10]~55\) # (GND)))
-- \init_population_instance|i[11]~57\ = CARRY((!\init_population_instance|i[10]~55\) # (!\init_population_instance|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(11),
	datad => VCC,
	cin => \init_population_instance|i[10]~55\,
	combout => \init_population_instance|i[11]~56_combout\,
	cout => \init_population_instance|i[11]~57\);

-- Location: FF_X111_Y46_N23
\init_population_instance|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[11]~56_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(11));

-- Location: LCCOMB_X111_Y46_N24
\init_population_instance|i[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[12]~58_combout\ = (\init_population_instance|i\(12) & (\init_population_instance|i[11]~57\ $ (GND))) # (!\init_population_instance|i\(12) & (!\init_population_instance|i[11]~57\ & VCC))
-- \init_population_instance|i[12]~59\ = CARRY((\init_population_instance|i\(12) & !\init_population_instance|i[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(12),
	datad => VCC,
	cin => \init_population_instance|i[11]~57\,
	combout => \init_population_instance|i[12]~58_combout\,
	cout => \init_population_instance|i[12]~59\);

-- Location: FF_X111_Y46_N25
\init_population_instance|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[12]~58_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(12));

-- Location: LCCOMB_X111_Y46_N26
\init_population_instance|i[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[13]~60_combout\ = (\init_population_instance|i\(13) & (!\init_population_instance|i[12]~59\)) # (!\init_population_instance|i\(13) & ((\init_population_instance|i[12]~59\) # (GND)))
-- \init_population_instance|i[13]~61\ = CARRY((!\init_population_instance|i[12]~59\) # (!\init_population_instance|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(13),
	datad => VCC,
	cin => \init_population_instance|i[12]~59\,
	combout => \init_population_instance|i[13]~60_combout\,
	cout => \init_population_instance|i[13]~61\);

-- Location: FF_X111_Y46_N27
\init_population_instance|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[13]~60_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(13));

-- Location: LCCOMB_X111_Y46_N28
\init_population_instance|i[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[14]~62_combout\ = (\init_population_instance|i\(14) & (\init_population_instance|i[13]~61\ $ (GND))) # (!\init_population_instance|i\(14) & (!\init_population_instance|i[13]~61\ & VCC))
-- \init_population_instance|i[14]~63\ = CARRY((\init_population_instance|i\(14) & !\init_population_instance|i[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(14),
	datad => VCC,
	cin => \init_population_instance|i[13]~61\,
	combout => \init_population_instance|i[14]~62_combout\,
	cout => \init_population_instance|i[14]~63\);

-- Location: FF_X111_Y46_N29
\init_population_instance|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[14]~62_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(14));

-- Location: LCCOMB_X111_Y46_N30
\init_population_instance|i[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[15]~64_combout\ = (\init_population_instance|i\(15) & (!\init_population_instance|i[14]~63\)) # (!\init_population_instance|i\(15) & ((\init_population_instance|i[14]~63\) # (GND)))
-- \init_population_instance|i[15]~65\ = CARRY((!\init_population_instance|i[14]~63\) # (!\init_population_instance|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(15),
	datad => VCC,
	cin => \init_population_instance|i[14]~63\,
	combout => \init_population_instance|i[15]~64_combout\,
	cout => \init_population_instance|i[15]~65\);

-- Location: FF_X111_Y46_N31
\init_population_instance|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[15]~64_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(15));

-- Location: LCCOMB_X111_Y45_N0
\init_population_instance|i[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[16]~66_combout\ = (\init_population_instance|i\(16) & (\init_population_instance|i[15]~65\ $ (GND))) # (!\init_population_instance|i\(16) & (!\init_population_instance|i[15]~65\ & VCC))
-- \init_population_instance|i[16]~67\ = CARRY((\init_population_instance|i\(16) & !\init_population_instance|i[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(16),
	datad => VCC,
	cin => \init_population_instance|i[15]~65\,
	combout => \init_population_instance|i[16]~66_combout\,
	cout => \init_population_instance|i[16]~67\);

-- Location: FF_X111_Y45_N1
\init_population_instance|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[16]~66_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(16));

-- Location: LCCOMB_X111_Y45_N2
\init_population_instance|i[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[17]~68_combout\ = (\init_population_instance|i\(17) & (!\init_population_instance|i[16]~67\)) # (!\init_population_instance|i\(17) & ((\init_population_instance|i[16]~67\) # (GND)))
-- \init_population_instance|i[17]~69\ = CARRY((!\init_population_instance|i[16]~67\) # (!\init_population_instance|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(17),
	datad => VCC,
	cin => \init_population_instance|i[16]~67\,
	combout => \init_population_instance|i[17]~68_combout\,
	cout => \init_population_instance|i[17]~69\);

-- Location: FF_X111_Y45_N3
\init_population_instance|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[17]~68_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(17));

-- Location: LCCOMB_X111_Y45_N4
\init_population_instance|i[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[18]~70_combout\ = (\init_population_instance|i\(18) & (\init_population_instance|i[17]~69\ $ (GND))) # (!\init_population_instance|i\(18) & (!\init_population_instance|i[17]~69\ & VCC))
-- \init_population_instance|i[18]~71\ = CARRY((\init_population_instance|i\(18) & !\init_population_instance|i[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(18),
	datad => VCC,
	cin => \init_population_instance|i[17]~69\,
	combout => \init_population_instance|i[18]~70_combout\,
	cout => \init_population_instance|i[18]~71\);

-- Location: FF_X111_Y45_N5
\init_population_instance|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[18]~70_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(18));

-- Location: LCCOMB_X111_Y45_N6
\init_population_instance|i[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[19]~72_combout\ = (\init_population_instance|i\(19) & (!\init_population_instance|i[18]~71\)) # (!\init_population_instance|i\(19) & ((\init_population_instance|i[18]~71\) # (GND)))
-- \init_population_instance|i[19]~73\ = CARRY((!\init_population_instance|i[18]~71\) # (!\init_population_instance|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(19),
	datad => VCC,
	cin => \init_population_instance|i[18]~71\,
	combout => \init_population_instance|i[19]~72_combout\,
	cout => \init_population_instance|i[19]~73\);

-- Location: FF_X111_Y45_N7
\init_population_instance|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[19]~72_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(19));

-- Location: LCCOMB_X111_Y45_N8
\init_population_instance|i[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[20]~74_combout\ = (\init_population_instance|i\(20) & (\init_population_instance|i[19]~73\ $ (GND))) # (!\init_population_instance|i\(20) & (!\init_population_instance|i[19]~73\ & VCC))
-- \init_population_instance|i[20]~75\ = CARRY((\init_population_instance|i\(20) & !\init_population_instance|i[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(20),
	datad => VCC,
	cin => \init_population_instance|i[19]~73\,
	combout => \init_population_instance|i[20]~74_combout\,
	cout => \init_population_instance|i[20]~75\);

-- Location: FF_X111_Y45_N9
\init_population_instance|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[20]~74_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(20));

-- Location: LCCOMB_X111_Y45_N10
\init_population_instance|i[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[21]~76_combout\ = (\init_population_instance|i\(21) & (!\init_population_instance|i[20]~75\)) # (!\init_population_instance|i\(21) & ((\init_population_instance|i[20]~75\) # (GND)))
-- \init_population_instance|i[21]~77\ = CARRY((!\init_population_instance|i[20]~75\) # (!\init_population_instance|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(21),
	datad => VCC,
	cin => \init_population_instance|i[20]~75\,
	combout => \init_population_instance|i[21]~76_combout\,
	cout => \init_population_instance|i[21]~77\);

-- Location: FF_X111_Y45_N11
\init_population_instance|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[21]~76_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(21));

-- Location: LCCOMB_X111_Y45_N12
\init_population_instance|i[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[22]~78_combout\ = (\init_population_instance|i\(22) & (\init_population_instance|i[21]~77\ $ (GND))) # (!\init_population_instance|i\(22) & (!\init_population_instance|i[21]~77\ & VCC))
-- \init_population_instance|i[22]~79\ = CARRY((\init_population_instance|i\(22) & !\init_population_instance|i[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(22),
	datad => VCC,
	cin => \init_population_instance|i[21]~77\,
	combout => \init_population_instance|i[22]~78_combout\,
	cout => \init_population_instance|i[22]~79\);

-- Location: FF_X111_Y45_N13
\init_population_instance|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[22]~78_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(22));

-- Location: LCCOMB_X111_Y45_N14
\init_population_instance|i[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[23]~80_combout\ = (\init_population_instance|i\(23) & (!\init_population_instance|i[22]~79\)) # (!\init_population_instance|i\(23) & ((\init_population_instance|i[22]~79\) # (GND)))
-- \init_population_instance|i[23]~81\ = CARRY((!\init_population_instance|i[22]~79\) # (!\init_population_instance|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(23),
	datad => VCC,
	cin => \init_population_instance|i[22]~79\,
	combout => \init_population_instance|i[23]~80_combout\,
	cout => \init_population_instance|i[23]~81\);

-- Location: FF_X111_Y45_N15
\init_population_instance|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[23]~80_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(23));

-- Location: LCCOMB_X111_Y45_N16
\init_population_instance|i[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[24]~82_combout\ = (\init_population_instance|i\(24) & (\init_population_instance|i[23]~81\ $ (GND))) # (!\init_population_instance|i\(24) & (!\init_population_instance|i[23]~81\ & VCC))
-- \init_population_instance|i[24]~83\ = CARRY((\init_population_instance|i\(24) & !\init_population_instance|i[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(24),
	datad => VCC,
	cin => \init_population_instance|i[23]~81\,
	combout => \init_population_instance|i[24]~82_combout\,
	cout => \init_population_instance|i[24]~83\);

-- Location: FF_X111_Y45_N17
\init_population_instance|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[24]~82_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(24));

-- Location: LCCOMB_X111_Y45_N18
\init_population_instance|i[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[25]~84_combout\ = (\init_population_instance|i\(25) & (!\init_population_instance|i[24]~83\)) # (!\init_population_instance|i\(25) & ((\init_population_instance|i[24]~83\) # (GND)))
-- \init_population_instance|i[25]~85\ = CARRY((!\init_population_instance|i[24]~83\) # (!\init_population_instance|i\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(25),
	datad => VCC,
	cin => \init_population_instance|i[24]~83\,
	combout => \init_population_instance|i[25]~84_combout\,
	cout => \init_population_instance|i[25]~85\);

-- Location: FF_X111_Y45_N19
\init_population_instance|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[25]~84_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(25));

-- Location: LCCOMB_X111_Y45_N20
\init_population_instance|i[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[26]~86_combout\ = (\init_population_instance|i\(26) & (\init_population_instance|i[25]~85\ $ (GND))) # (!\init_population_instance|i\(26) & (!\init_population_instance|i[25]~85\ & VCC))
-- \init_population_instance|i[26]~87\ = CARRY((\init_population_instance|i\(26) & !\init_population_instance|i[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(26),
	datad => VCC,
	cin => \init_population_instance|i[25]~85\,
	combout => \init_population_instance|i[26]~86_combout\,
	cout => \init_population_instance|i[26]~87\);

-- Location: FF_X111_Y45_N21
\init_population_instance|i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[26]~86_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(26));

-- Location: LCCOMB_X111_Y45_N22
\init_population_instance|i[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[27]~88_combout\ = (\init_population_instance|i\(27) & (!\init_population_instance|i[26]~87\)) # (!\init_population_instance|i\(27) & ((\init_population_instance|i[26]~87\) # (GND)))
-- \init_population_instance|i[27]~89\ = CARRY((!\init_population_instance|i[26]~87\) # (!\init_population_instance|i\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(27),
	datad => VCC,
	cin => \init_population_instance|i[26]~87\,
	combout => \init_population_instance|i[27]~88_combout\,
	cout => \init_population_instance|i[27]~89\);

-- Location: FF_X111_Y45_N23
\init_population_instance|i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[27]~88_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(27));

-- Location: LCCOMB_X111_Y45_N24
\init_population_instance|i[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[28]~90_combout\ = (\init_population_instance|i\(28) & (\init_population_instance|i[27]~89\ $ (GND))) # (!\init_population_instance|i\(28) & (!\init_population_instance|i[27]~89\ & VCC))
-- \init_population_instance|i[28]~91\ = CARRY((\init_population_instance|i\(28) & !\init_population_instance|i[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(28),
	datad => VCC,
	cin => \init_population_instance|i[27]~89\,
	combout => \init_population_instance|i[28]~90_combout\,
	cout => \init_population_instance|i[28]~91\);

-- Location: FF_X111_Y45_N25
\init_population_instance|i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[28]~90_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(28));

-- Location: LCCOMB_X111_Y45_N26
\init_population_instance|i[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[29]~92_combout\ = (\init_population_instance|i\(29) & (!\init_population_instance|i[28]~91\)) # (!\init_population_instance|i\(29) & ((\init_population_instance|i[28]~91\) # (GND)))
-- \init_population_instance|i[29]~93\ = CARRY((!\init_population_instance|i[28]~91\) # (!\init_population_instance|i\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(29),
	datad => VCC,
	cin => \init_population_instance|i[28]~91\,
	combout => \init_population_instance|i[29]~92_combout\,
	cout => \init_population_instance|i[29]~93\);

-- Location: FF_X111_Y45_N27
\init_population_instance|i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[29]~92_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(29));

-- Location: LCCOMB_X111_Y45_N28
\init_population_instance|i[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[30]~94_combout\ = (\init_population_instance|i\(30) & (\init_population_instance|i[29]~93\ $ (GND))) # (!\init_population_instance|i\(30) & (!\init_population_instance|i[29]~93\ & VCC))
-- \init_population_instance|i[30]~95\ = CARRY((\init_population_instance|i\(30) & !\init_population_instance|i[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(30),
	datad => VCC,
	cin => \init_population_instance|i[29]~93\,
	combout => \init_population_instance|i[30]~94_combout\,
	cout => \init_population_instance|i[30]~95\);

-- Location: FF_X111_Y45_N29
\init_population_instance|i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[30]~94_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(30));

-- Location: LCCOMB_X111_Y45_N30
\init_population_instance|i[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|i[31]~96_combout\ = \init_population_instance|i\(31) $ (\init_population_instance|i[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(31),
	cin => \init_population_instance|i[30]~95\,
	combout => \init_population_instance|i[31]~96_combout\);

-- Location: FF_X111_Y45_N31
\init_population_instance|i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|i[31]~96_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|i[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|i\(31));

-- Location: LCCOMB_X110_Y45_N28
\init_population_instance|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan1~5_combout\ = (!\init_population_instance|i\(16) & !\init_population_instance|i\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init_population_instance|i\(16),
	datad => \init_population_instance|i\(17),
	combout => \init_population_instance|LessThan1~5_combout\);

-- Location: LCCOMB_X110_Y45_N22
\init_population_instance|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan1~6_combout\ = (!\init_population_instance|i\(23) & (!\init_population_instance|i\(22) & (!\init_population_instance|i\(21) & !\init_population_instance|i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(23),
	datab => \init_population_instance|i\(22),
	datac => \init_population_instance|i\(21),
	datad => \init_population_instance|i\(20),
	combout => \init_population_instance|LessThan1~6_combout\);

-- Location: LCCOMB_X110_Y45_N16
\init_population_instance|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan1~7_combout\ = (!\init_population_instance|i\(19) & (\init_population_instance|LessThan1~5_combout\ & (\init_population_instance|LessThan1~6_combout\ & !\init_population_instance|i\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(19),
	datab => \init_population_instance|LessThan1~5_combout\,
	datac => \init_population_instance|LessThan1~6_combout\,
	datad => \init_population_instance|i\(18),
	combout => \init_population_instance|LessThan1~7_combout\);

-- Location: LCCOMB_X110_Y46_N30
\init_population_instance|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan1~3_combout\ = (!\init_population_instance|i\(15) & (!\init_population_instance|i\(14) & (!\init_population_instance|i\(13) & !\init_population_instance|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(15),
	datab => \init_population_instance|i\(14),
	datac => \init_population_instance|i\(13),
	datad => \init_population_instance|i\(12),
	combout => \init_population_instance|LessThan1~3_combout\);

-- Location: LCCOMB_X109_Y46_N2
\init_population_instance|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan1~0_combout\ = (!\init_population_instance|i\(3) & (((!\init_population_instance|i\(2)) # (!\init_population_instance|i\(0))) # (!\init_population_instance|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(1),
	datab => \init_population_instance|i\(3),
	datac => \init_population_instance|i\(0),
	datad => \init_population_instance|i\(2),
	combout => \init_population_instance|LessThan1~0_combout\);

-- Location: LCCOMB_X110_Y46_N0
\init_population_instance|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan1~1_combout\ = (!\init_population_instance|i\(5) & (!\init_population_instance|i\(6) & (!\init_population_instance|i\(4) & !\init_population_instance|i\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(5),
	datab => \init_population_instance|i\(6),
	datac => \init_population_instance|i\(4),
	datad => \init_population_instance|i\(7),
	combout => \init_population_instance|LessThan1~1_combout\);

-- Location: LCCOMB_X110_Y46_N28
\init_population_instance|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan1~2_combout\ = (!\init_population_instance|i\(10) & (!\init_population_instance|i\(9) & (!\init_population_instance|i\(8) & !\init_population_instance|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(10),
	datab => \init_population_instance|i\(9),
	datac => \init_population_instance|i\(8),
	datad => \init_population_instance|i\(11),
	combout => \init_population_instance|LessThan1~2_combout\);

-- Location: LCCOMB_X109_Y46_N28
\init_population_instance|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan1~4_combout\ = (\init_population_instance|LessThan1~3_combout\ & (\init_population_instance|LessThan1~0_combout\ & (\init_population_instance|LessThan1~1_combout\ & \init_population_instance|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|LessThan1~3_combout\,
	datab => \init_population_instance|LessThan1~0_combout\,
	datac => \init_population_instance|LessThan1~1_combout\,
	datad => \init_population_instance|LessThan1~2_combout\,
	combout => \init_population_instance|LessThan1~4_combout\);

-- Location: LCCOMB_X110_Y45_N30
\init_population_instance|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan1~8_combout\ = (!\init_population_instance|i\(27) & (!\init_population_instance|i\(25) & (!\init_population_instance|i\(26) & !\init_population_instance|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(27),
	datab => \init_population_instance|i\(25),
	datac => \init_population_instance|i\(26),
	datad => \init_population_instance|i\(24),
	combout => \init_population_instance|LessThan1~8_combout\);

-- Location: LCCOMB_X110_Y45_N12
\init_population_instance|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan1~9_combout\ = (\init_population_instance|LessThan1~8_combout\ & (!\init_population_instance|i\(29) & (!\init_population_instance|i\(28) & !\init_population_instance|i\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|LessThan1~8_combout\,
	datab => \init_population_instance|i\(29),
	datac => \init_population_instance|i\(28),
	datad => \init_population_instance|i\(30),
	combout => \init_population_instance|LessThan1~9_combout\);

-- Location: LCCOMB_X110_Y45_N6
\init_population_instance|LessThan1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan1~10_combout\ = (\init_population_instance|i\(31)) # ((\init_population_instance|LessThan1~7_combout\ & (\init_population_instance|LessThan1~4_combout\ & \init_population_instance|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(31),
	datab => \init_population_instance|LessThan1~7_combout\,
	datac => \init_population_instance|LessThan1~4_combout\,
	datad => \init_population_instance|LessThan1~9_combout\,
	combout => \init_population_instance|LessThan1~10_combout\);

-- Location: LCCOMB_X106_Y45_N6
\init_population_instance|p[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[31]~34_combout\ = (!\reset~input_o\ & (((\init_population_instance|state.s_i_loop~q\ & !\init_population_instance|LessThan1~10_combout\)) # (!\init_population_instance|j[24]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j[24]~96_combout\,
	datab => \init_population_instance|state.s_i_loop~q\,
	datac => \reset~input_o\,
	datad => \init_population_instance|LessThan1~10_combout\,
	combout => \init_population_instance|p[31]~34_combout\);

-- Location: FF_X106_Y45_N9
\init_population_instance|p[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|p[0]~32_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	sload => VCC,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(0));

-- Location: LCCOMB_X107_Y45_N2
\init_population_instance|p[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|p[1]~35_combout\ = (\init_population_instance|p\(1) & (!\init_population_instance|p[0]~33\)) # (!\init_population_instance|p\(1) & ((\init_population_instance|p[0]~33\) # (GND)))
-- \init_population_instance|p[1]~36\ = CARRY((!\init_population_instance|p[0]~33\) # (!\init_population_instance|p\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(1),
	datad => VCC,
	cin => \init_population_instance|p[0]~33\,
	combout => \init_population_instance|p[1]~35_combout\,
	cout => \init_population_instance|p[1]~36\);

-- Location: FF_X107_Y45_N3
\init_population_instance|p[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[1]~35_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(1));

-- Location: FF_X107_Y45_N5
\init_population_instance|p[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|p[2]~37_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_i_loop~q\,
	ena => \init_population_instance|p[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|p\(2));

-- Location: LCCOMB_X106_Y45_N12
\init_population_instance|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan0~2_combout\ = ((!\init_population_instance|p\(2) & (!\init_population_instance|p\(4) & !\init_population_instance|p\(3)))) # (!\init_population_instance|p\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(2),
	datab => \init_population_instance|p\(4),
	datac => \init_population_instance|p\(5),
	datad => \init_population_instance|p\(3),
	combout => \init_population_instance|LessThan0~2_combout\);

-- Location: LCCOMB_X106_Y45_N28
\init_population_instance|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan0~0_combout\ = (!\init_population_instance|p\(10) & (!\init_population_instance|p\(9) & (!\init_population_instance|p\(7) & !\init_population_instance|p\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(10),
	datab => \init_population_instance|p\(9),
	datac => \init_population_instance|p\(7),
	datad => \init_population_instance|p\(8),
	combout => \init_population_instance|LessThan0~0_combout\);

-- Location: LCCOMB_X106_Y45_N2
\init_population_instance|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan0~1_combout\ = (!\init_population_instance|p\(11) & (!\init_population_instance|p\(12) & (!\init_population_instance|p\(13) & !\init_population_instance|p\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(11),
	datab => \init_population_instance|p\(12),
	datac => \init_population_instance|p\(13),
	datad => \init_population_instance|p\(14),
	combout => \init_population_instance|LessThan0~1_combout\);

-- Location: LCCOMB_X106_Y45_N30
\init_population_instance|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan0~3_combout\ = (\init_population_instance|LessThan0~0_combout\ & (\init_population_instance|LessThan0~1_combout\ & ((\init_population_instance|LessThan0~2_combout\) # (!\init_population_instance|p\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|LessThan0~2_combout\,
	datab => \init_population_instance|LessThan0~0_combout\,
	datac => \init_population_instance|p\(6),
	datad => \init_population_instance|LessThan0~1_combout\,
	combout => \init_population_instance|LessThan0~3_combout\);

-- Location: LCCOMB_X106_Y45_N20
\init_population_instance|Selector97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Selector97~0_combout\ = (\init_population_instance|state.s_p_loop~q\ & (!\init_population_instance|p\(31) & ((!\init_population_instance|LessThan0~8_combout\) # (!\init_population_instance|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|LessThan0~3_combout\,
	datab => \init_population_instance|LessThan0~8_combout\,
	datac => \init_population_instance|state.s_p_loop~q\,
	datad => \init_population_instance|p\(31),
	combout => \init_population_instance|Selector97~0_combout\);

-- Location: LCCOMB_X105_Y46_N18
\init_population_instance|stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|stop~0_combout\ = (\init_population_instance|Selector97~0_combout\ & (\init_init_population~q\)) # (!\init_population_instance|Selector97~0_combout\ & ((\init_population_instance|stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init_init_population~q\,
	datac => \init_population_instance|stop~q\,
	datad => \init_population_instance|Selector97~0_combout\,
	combout => \init_population_instance|stop~0_combout\);

-- Location: FF_X105_Y46_N19
\init_population_instance|stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|stop~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|stop~q\);

-- Location: LCCOMB_X105_Y46_N28
\state.s_init~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s_init~0_combout\ = (\state.s_init~q\) # (\init_population_instance|stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_init~q\,
	datad => \init_population_instance|stop~q\,
	combout => \state.s_init~0_combout\);

-- Location: FF_X105_Y46_N29
\state.s_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_init~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_init~q\);

-- Location: LCCOMB_X105_Y46_N8
\init_init_population~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_init_population~0_combout\ = (\state.s_init~q\ & (\init_init_population~q\)) # (!\state.s_init~q\ & ((!\init_population_instance|stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_init~q\,
	datac => \init_init_population~q\,
	datad => \init_population_instance|stop~q\,
	combout => \init_init_population~0_combout\);

-- Location: FF_X105_Y46_N9
init_init_population : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_init_population~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_init_population~q\);

-- Location: LCCOMB_X106_Y45_N16
\init_population_instance|Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Selector96~0_combout\ = (\init_init_population~q\) # ((\init_population_instance|state.s_idle~q\ & !\init_population_instance|Selector97~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init_init_population~q\,
	datac => \init_population_instance|state.s_idle~q\,
	datad => \init_population_instance|Selector97~0_combout\,
	combout => \init_population_instance|Selector96~0_combout\);

-- Location: FF_X106_Y45_N17
\init_population_instance|state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|Selector96~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|state.s_idle~q\);

-- Location: LCCOMB_X106_Y45_N8
\init_population_instance|j[24]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[24]~96_combout\ = (\init_population_instance|state.s_idle~q\) # (!\init_init_population~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|state.s_idle~q\,
	datad => \init_init_population~q\,
	combout => \init_population_instance|j[24]~96_combout\);

-- Location: LCCOMB_X110_Y45_N24
\init_population_instance|j[24]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[24]~97_combout\ = (\init_population_instance|state.s_i_loop~q\ & \init_population_instance|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init_population_instance|state.s_i_loop~q\,
	datad => \init_population_instance|LessThan1~10_combout\,
	combout => \init_population_instance|j[24]~97_combout\);

-- Location: LCCOMB_X109_Y45_N0
\init_population_instance|j[31]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[31]~98_combout\ = (!\reset~input_o\ & (((\init_population_instance|datain[0]~1_combout\) # (\init_population_instance|j[24]~97_combout\)) # (!\init_population_instance|j[24]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j[24]~96_combout\,
	datab => \reset~input_o\,
	datac => \init_population_instance|datain[0]~1_combout\,
	datad => \init_population_instance|j[24]~97_combout\,
	combout => \init_population_instance|j[31]~98_combout\);

-- Location: FF_X108_Y45_N1
\init_population_instance|j[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[0]~32_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(0));

-- Location: LCCOMB_X108_Y45_N2
\init_population_instance|j[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[1]~34_combout\ = (\init_population_instance|j\(1) & (!\init_population_instance|j[0]~33\)) # (!\init_population_instance|j\(1) & ((\init_population_instance|j[0]~33\) # (GND)))
-- \init_population_instance|j[1]~35\ = CARRY((!\init_population_instance|j[0]~33\) # (!\init_population_instance|j\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(1),
	datad => VCC,
	cin => \init_population_instance|j[0]~33\,
	combout => \init_population_instance|j[1]~34_combout\,
	cout => \init_population_instance|j[1]~35\);

-- Location: FF_X108_Y45_N3
\init_population_instance|j[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[1]~34_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(1));

-- Location: LCCOMB_X108_Y45_N4
\init_population_instance|j[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[2]~36_combout\ = (\init_population_instance|j\(2) & (\init_population_instance|j[1]~35\ $ (GND))) # (!\init_population_instance|j\(2) & (!\init_population_instance|j[1]~35\ & VCC))
-- \init_population_instance|j[2]~37\ = CARRY((\init_population_instance|j\(2) & !\init_population_instance|j[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(2),
	datad => VCC,
	cin => \init_population_instance|j[1]~35\,
	combout => \init_population_instance|j[2]~36_combout\,
	cout => \init_population_instance|j[2]~37\);

-- Location: FF_X108_Y45_N5
\init_population_instance|j[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[2]~36_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(2));

-- Location: LCCOMB_X108_Y45_N6
\init_population_instance|j[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[3]~38_combout\ = (\init_population_instance|j\(3) & (!\init_population_instance|j[2]~37\)) # (!\init_population_instance|j\(3) & ((\init_population_instance|j[2]~37\) # (GND)))
-- \init_population_instance|j[3]~39\ = CARRY((!\init_population_instance|j[2]~37\) # (!\init_population_instance|j\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(3),
	datad => VCC,
	cin => \init_population_instance|j[2]~37\,
	combout => \init_population_instance|j[3]~38_combout\,
	cout => \init_population_instance|j[3]~39\);

-- Location: FF_X108_Y45_N7
\init_population_instance|j[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[3]~38_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(3));

-- Location: LCCOMB_X108_Y45_N8
\init_population_instance|j[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[4]~40_combout\ = (\init_population_instance|j\(4) & (\init_population_instance|j[3]~39\ $ (GND))) # (!\init_population_instance|j\(4) & (!\init_population_instance|j[3]~39\ & VCC))
-- \init_population_instance|j[4]~41\ = CARRY((\init_population_instance|j\(4) & !\init_population_instance|j[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(4),
	datad => VCC,
	cin => \init_population_instance|j[3]~39\,
	combout => \init_population_instance|j[4]~40_combout\,
	cout => \init_population_instance|j[4]~41\);

-- Location: FF_X108_Y45_N9
\init_population_instance|j[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[4]~40_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(4));

-- Location: LCCOMB_X108_Y45_N10
\init_population_instance|j[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[5]~42_combout\ = (\init_population_instance|j\(5) & (!\init_population_instance|j[4]~41\)) # (!\init_population_instance|j\(5) & ((\init_population_instance|j[4]~41\) # (GND)))
-- \init_population_instance|j[5]~43\ = CARRY((!\init_population_instance|j[4]~41\) # (!\init_population_instance|j\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(5),
	datad => VCC,
	cin => \init_population_instance|j[4]~41\,
	combout => \init_population_instance|j[5]~42_combout\,
	cout => \init_population_instance|j[5]~43\);

-- Location: FF_X108_Y45_N11
\init_population_instance|j[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[5]~42_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(5));

-- Location: LCCOMB_X108_Y45_N12
\init_population_instance|j[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[6]~44_combout\ = (\init_population_instance|j\(6) & (\init_population_instance|j[5]~43\ $ (GND))) # (!\init_population_instance|j\(6) & (!\init_population_instance|j[5]~43\ & VCC))
-- \init_population_instance|j[6]~45\ = CARRY((\init_population_instance|j\(6) & !\init_population_instance|j[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(6),
	datad => VCC,
	cin => \init_population_instance|j[5]~43\,
	combout => \init_population_instance|j[6]~44_combout\,
	cout => \init_population_instance|j[6]~45\);

-- Location: FF_X108_Y45_N13
\init_population_instance|j[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[6]~44_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(6));

-- Location: LCCOMB_X108_Y45_N14
\init_population_instance|j[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[7]~46_combout\ = (\init_population_instance|j\(7) & (!\init_population_instance|j[6]~45\)) # (!\init_population_instance|j\(7) & ((\init_population_instance|j[6]~45\) # (GND)))
-- \init_population_instance|j[7]~47\ = CARRY((!\init_population_instance|j[6]~45\) # (!\init_population_instance|j\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(7),
	datad => VCC,
	cin => \init_population_instance|j[6]~45\,
	combout => \init_population_instance|j[7]~46_combout\,
	cout => \init_population_instance|j[7]~47\);

-- Location: FF_X108_Y45_N15
\init_population_instance|j[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[7]~46_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(7));

-- Location: LCCOMB_X109_Y45_N12
\init_population_instance|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan2~1_combout\ = (!\init_population_instance|j\(6) & (!\init_population_instance|j\(7) & (!\init_population_instance|j\(4) & !\init_population_instance|j\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(6),
	datab => \init_population_instance|j\(7),
	datac => \init_population_instance|j\(4),
	datad => \init_population_instance|j\(5),
	combout => \init_population_instance|LessThan2~1_combout\);

-- Location: LCCOMB_X108_Y45_N16
\init_population_instance|j[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[8]~48_combout\ = (\init_population_instance|j\(8) & (\init_population_instance|j[7]~47\ $ (GND))) # (!\init_population_instance|j\(8) & (!\init_population_instance|j[7]~47\ & VCC))
-- \init_population_instance|j[8]~49\ = CARRY((\init_population_instance|j\(8) & !\init_population_instance|j[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(8),
	datad => VCC,
	cin => \init_population_instance|j[7]~47\,
	combout => \init_population_instance|j[8]~48_combout\,
	cout => \init_population_instance|j[8]~49\);

-- Location: FF_X108_Y45_N17
\init_population_instance|j[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[8]~48_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(8));

-- Location: LCCOMB_X108_Y45_N18
\init_population_instance|j[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[9]~50_combout\ = (\init_population_instance|j\(9) & (!\init_population_instance|j[8]~49\)) # (!\init_population_instance|j\(9) & ((\init_population_instance|j[8]~49\) # (GND)))
-- \init_population_instance|j[9]~51\ = CARRY((!\init_population_instance|j[8]~49\) # (!\init_population_instance|j\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(9),
	datad => VCC,
	cin => \init_population_instance|j[8]~49\,
	combout => \init_population_instance|j[9]~50_combout\,
	cout => \init_population_instance|j[9]~51\);

-- Location: FF_X108_Y45_N19
\init_population_instance|j[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[9]~50_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(9));

-- Location: LCCOMB_X108_Y45_N20
\init_population_instance|j[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[10]~52_combout\ = (\init_population_instance|j\(10) & (\init_population_instance|j[9]~51\ $ (GND))) # (!\init_population_instance|j\(10) & (!\init_population_instance|j[9]~51\ & VCC))
-- \init_population_instance|j[10]~53\ = CARRY((\init_population_instance|j\(10) & !\init_population_instance|j[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(10),
	datad => VCC,
	cin => \init_population_instance|j[9]~51\,
	combout => \init_population_instance|j[10]~52_combout\,
	cout => \init_population_instance|j[10]~53\);

-- Location: FF_X108_Y45_N21
\init_population_instance|j[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[10]~52_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(10));

-- Location: LCCOMB_X108_Y45_N22
\init_population_instance|j[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[11]~54_combout\ = (\init_population_instance|j\(11) & (!\init_population_instance|j[10]~53\)) # (!\init_population_instance|j\(11) & ((\init_population_instance|j[10]~53\) # (GND)))
-- \init_population_instance|j[11]~55\ = CARRY((!\init_population_instance|j[10]~53\) # (!\init_population_instance|j\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(11),
	datad => VCC,
	cin => \init_population_instance|j[10]~53\,
	combout => \init_population_instance|j[11]~54_combout\,
	cout => \init_population_instance|j[11]~55\);

-- Location: FF_X108_Y45_N23
\init_population_instance|j[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[11]~54_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(11));

-- Location: LCCOMB_X108_Y45_N24
\init_population_instance|j[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[12]~56_combout\ = (\init_population_instance|j\(12) & (\init_population_instance|j[11]~55\ $ (GND))) # (!\init_population_instance|j\(12) & (!\init_population_instance|j[11]~55\ & VCC))
-- \init_population_instance|j[12]~57\ = CARRY((\init_population_instance|j\(12) & !\init_population_instance|j[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(12),
	datad => VCC,
	cin => \init_population_instance|j[11]~55\,
	combout => \init_population_instance|j[12]~56_combout\,
	cout => \init_population_instance|j[12]~57\);

-- Location: FF_X108_Y45_N25
\init_population_instance|j[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[12]~56_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(12));

-- Location: LCCOMB_X108_Y45_N26
\init_population_instance|j[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[13]~58_combout\ = (\init_population_instance|j\(13) & (!\init_population_instance|j[12]~57\)) # (!\init_population_instance|j\(13) & ((\init_population_instance|j[12]~57\) # (GND)))
-- \init_population_instance|j[13]~59\ = CARRY((!\init_population_instance|j[12]~57\) # (!\init_population_instance|j\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(13),
	datad => VCC,
	cin => \init_population_instance|j[12]~57\,
	combout => \init_population_instance|j[13]~58_combout\,
	cout => \init_population_instance|j[13]~59\);

-- Location: FF_X108_Y45_N27
\init_population_instance|j[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[13]~58_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(13));

-- Location: LCCOMB_X108_Y45_N28
\init_population_instance|j[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[14]~60_combout\ = (\init_population_instance|j\(14) & (\init_population_instance|j[13]~59\ $ (GND))) # (!\init_population_instance|j\(14) & (!\init_population_instance|j[13]~59\ & VCC))
-- \init_population_instance|j[14]~61\ = CARRY((\init_population_instance|j\(14) & !\init_population_instance|j[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(14),
	datad => VCC,
	cin => \init_population_instance|j[13]~59\,
	combout => \init_population_instance|j[14]~60_combout\,
	cout => \init_population_instance|j[14]~61\);

-- Location: FF_X108_Y45_N29
\init_population_instance|j[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[14]~60_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(14));

-- Location: LCCOMB_X108_Y45_N30
\init_population_instance|j[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[15]~62_combout\ = (\init_population_instance|j\(15) & (!\init_population_instance|j[14]~61\)) # (!\init_population_instance|j\(15) & ((\init_population_instance|j[14]~61\) # (GND)))
-- \init_population_instance|j[15]~63\ = CARRY((!\init_population_instance|j[14]~61\) # (!\init_population_instance|j\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(15),
	datad => VCC,
	cin => \init_population_instance|j[14]~61\,
	combout => \init_population_instance|j[15]~62_combout\,
	cout => \init_population_instance|j[15]~63\);

-- Location: FF_X108_Y45_N31
\init_population_instance|j[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[15]~62_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(15));

-- Location: LCCOMB_X109_Y45_N8
\init_population_instance|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan2~3_combout\ = (!\init_population_instance|j\(13) & (!\init_population_instance|j\(14) & (!\init_population_instance|j\(15) & !\init_population_instance|j\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(13),
	datab => \init_population_instance|j\(14),
	datac => \init_population_instance|j\(15),
	datad => \init_population_instance|j\(12),
	combout => \init_population_instance|LessThan2~3_combout\);

-- Location: LCCOMB_X109_Y45_N14
\init_population_instance|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan2~2_combout\ = (!\init_population_instance|j\(11) & (!\init_population_instance|j\(10) & (!\init_population_instance|j\(8) & !\init_population_instance|j\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(11),
	datab => \init_population_instance|j\(10),
	datac => \init_population_instance|j\(8),
	datad => \init_population_instance|j\(9),
	combout => \init_population_instance|LessThan2~2_combout\);

-- Location: LCCOMB_X109_Y45_N2
\init_population_instance|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan2~0_combout\ = (!\init_population_instance|j\(3) & (((!\init_population_instance|j\(1)) # (!\init_population_instance|j\(2))) # (!\init_population_instance|j\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(0),
	datab => \init_population_instance|j\(2),
	datac => \init_population_instance|j\(3),
	datad => \init_population_instance|j\(1),
	combout => \init_population_instance|LessThan2~0_combout\);

-- Location: LCCOMB_X109_Y45_N10
\init_population_instance|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan2~4_combout\ = (\init_population_instance|LessThan2~1_combout\ & (\init_population_instance|LessThan2~3_combout\ & (\init_population_instance|LessThan2~2_combout\ & \init_population_instance|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|LessThan2~1_combout\,
	datab => \init_population_instance|LessThan2~3_combout\,
	datac => \init_population_instance|LessThan2~2_combout\,
	datad => \init_population_instance|LessThan2~0_combout\,
	combout => \init_population_instance|LessThan2~4_combout\);

-- Location: LCCOMB_X108_Y44_N0
\init_population_instance|j[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[16]~64_combout\ = (\init_population_instance|j\(16) & (\init_population_instance|j[15]~63\ $ (GND))) # (!\init_population_instance|j\(16) & (!\init_population_instance|j[15]~63\ & VCC))
-- \init_population_instance|j[16]~65\ = CARRY((\init_population_instance|j\(16) & !\init_population_instance|j[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(16),
	datad => VCC,
	cin => \init_population_instance|j[15]~63\,
	combout => \init_population_instance|j[16]~64_combout\,
	cout => \init_population_instance|j[16]~65\);

-- Location: FF_X108_Y44_N1
\init_population_instance|j[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[16]~64_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(16));

-- Location: LCCOMB_X108_Y44_N2
\init_population_instance|j[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[17]~66_combout\ = (\init_population_instance|j\(17) & (!\init_population_instance|j[16]~65\)) # (!\init_population_instance|j\(17) & ((\init_population_instance|j[16]~65\) # (GND)))
-- \init_population_instance|j[17]~67\ = CARRY((!\init_population_instance|j[16]~65\) # (!\init_population_instance|j\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(17),
	datad => VCC,
	cin => \init_population_instance|j[16]~65\,
	combout => \init_population_instance|j[17]~66_combout\,
	cout => \init_population_instance|j[17]~67\);

-- Location: FF_X108_Y44_N3
\init_population_instance|j[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[17]~66_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(17));

-- Location: LCCOMB_X108_Y44_N4
\init_population_instance|j[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[18]~68_combout\ = (\init_population_instance|j\(18) & (\init_population_instance|j[17]~67\ $ (GND))) # (!\init_population_instance|j\(18) & (!\init_population_instance|j[17]~67\ & VCC))
-- \init_population_instance|j[18]~69\ = CARRY((\init_population_instance|j\(18) & !\init_population_instance|j[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(18),
	datad => VCC,
	cin => \init_population_instance|j[17]~67\,
	combout => \init_population_instance|j[18]~68_combout\,
	cout => \init_population_instance|j[18]~69\);

-- Location: FF_X108_Y44_N5
\init_population_instance|j[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[18]~68_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(18));

-- Location: LCCOMB_X108_Y44_N6
\init_population_instance|j[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[19]~70_combout\ = (\init_population_instance|j\(19) & (!\init_population_instance|j[18]~69\)) # (!\init_population_instance|j\(19) & ((\init_population_instance|j[18]~69\) # (GND)))
-- \init_population_instance|j[19]~71\ = CARRY((!\init_population_instance|j[18]~69\) # (!\init_population_instance|j\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(19),
	datad => VCC,
	cin => \init_population_instance|j[18]~69\,
	combout => \init_population_instance|j[19]~70_combout\,
	cout => \init_population_instance|j[19]~71\);

-- Location: FF_X108_Y44_N7
\init_population_instance|j[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[19]~70_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(19));

-- Location: LCCOMB_X108_Y44_N8
\init_population_instance|j[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[20]~72_combout\ = (\init_population_instance|j\(20) & (\init_population_instance|j[19]~71\ $ (GND))) # (!\init_population_instance|j\(20) & (!\init_population_instance|j[19]~71\ & VCC))
-- \init_population_instance|j[20]~73\ = CARRY((\init_population_instance|j\(20) & !\init_population_instance|j[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(20),
	datad => VCC,
	cin => \init_population_instance|j[19]~71\,
	combout => \init_population_instance|j[20]~72_combout\,
	cout => \init_population_instance|j[20]~73\);

-- Location: FF_X108_Y44_N9
\init_population_instance|j[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[20]~72_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(20));

-- Location: LCCOMB_X108_Y44_N10
\init_population_instance|j[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[21]~74_combout\ = (\init_population_instance|j\(21) & (!\init_population_instance|j[20]~73\)) # (!\init_population_instance|j\(21) & ((\init_population_instance|j[20]~73\) # (GND)))
-- \init_population_instance|j[21]~75\ = CARRY((!\init_population_instance|j[20]~73\) # (!\init_population_instance|j\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(21),
	datad => VCC,
	cin => \init_population_instance|j[20]~73\,
	combout => \init_population_instance|j[21]~74_combout\,
	cout => \init_population_instance|j[21]~75\);

-- Location: FF_X108_Y44_N11
\init_population_instance|j[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[21]~74_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(21));

-- Location: LCCOMB_X108_Y44_N12
\init_population_instance|j[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[22]~76_combout\ = (\init_population_instance|j\(22) & (\init_population_instance|j[21]~75\ $ (GND))) # (!\init_population_instance|j\(22) & (!\init_population_instance|j[21]~75\ & VCC))
-- \init_population_instance|j[22]~77\ = CARRY((\init_population_instance|j\(22) & !\init_population_instance|j[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(22),
	datad => VCC,
	cin => \init_population_instance|j[21]~75\,
	combout => \init_population_instance|j[22]~76_combout\,
	cout => \init_population_instance|j[22]~77\);

-- Location: FF_X108_Y44_N13
\init_population_instance|j[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[22]~76_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(22));

-- Location: LCCOMB_X108_Y44_N14
\init_population_instance|j[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[23]~78_combout\ = (\init_population_instance|j\(23) & (!\init_population_instance|j[22]~77\)) # (!\init_population_instance|j\(23) & ((\init_population_instance|j[22]~77\) # (GND)))
-- \init_population_instance|j[23]~79\ = CARRY((!\init_population_instance|j[22]~77\) # (!\init_population_instance|j\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(23),
	datad => VCC,
	cin => \init_population_instance|j[22]~77\,
	combout => \init_population_instance|j[23]~78_combout\,
	cout => \init_population_instance|j[23]~79\);

-- Location: FF_X108_Y44_N15
\init_population_instance|j[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[23]~78_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(23));

-- Location: LCCOMB_X108_Y44_N16
\init_population_instance|j[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[24]~80_combout\ = (\init_population_instance|j\(24) & (\init_population_instance|j[23]~79\ $ (GND))) # (!\init_population_instance|j\(24) & (!\init_population_instance|j[23]~79\ & VCC))
-- \init_population_instance|j[24]~81\ = CARRY((\init_population_instance|j\(24) & !\init_population_instance|j[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(24),
	datad => VCC,
	cin => \init_population_instance|j[23]~79\,
	combout => \init_population_instance|j[24]~80_combout\,
	cout => \init_population_instance|j[24]~81\);

-- Location: FF_X108_Y44_N17
\init_population_instance|j[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[24]~80_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(24));

-- Location: LCCOMB_X108_Y44_N18
\init_population_instance|j[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[25]~82_combout\ = (\init_population_instance|j\(25) & (!\init_population_instance|j[24]~81\)) # (!\init_population_instance|j\(25) & ((\init_population_instance|j[24]~81\) # (GND)))
-- \init_population_instance|j[25]~83\ = CARRY((!\init_population_instance|j[24]~81\) # (!\init_population_instance|j\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(25),
	datad => VCC,
	cin => \init_population_instance|j[24]~81\,
	combout => \init_population_instance|j[25]~82_combout\,
	cout => \init_population_instance|j[25]~83\);

-- Location: FF_X108_Y44_N19
\init_population_instance|j[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[25]~82_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(25));

-- Location: LCCOMB_X108_Y44_N20
\init_population_instance|j[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[26]~84_combout\ = (\init_population_instance|j\(26) & (\init_population_instance|j[25]~83\ $ (GND))) # (!\init_population_instance|j\(26) & (!\init_population_instance|j[25]~83\ & VCC))
-- \init_population_instance|j[26]~85\ = CARRY((\init_population_instance|j\(26) & !\init_population_instance|j[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(26),
	datad => VCC,
	cin => \init_population_instance|j[25]~83\,
	combout => \init_population_instance|j[26]~84_combout\,
	cout => \init_population_instance|j[26]~85\);

-- Location: FF_X108_Y44_N21
\init_population_instance|j[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[26]~84_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(26));

-- Location: LCCOMB_X108_Y44_N22
\init_population_instance|j[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[27]~86_combout\ = (\init_population_instance|j\(27) & (!\init_population_instance|j[26]~85\)) # (!\init_population_instance|j\(27) & ((\init_population_instance|j[26]~85\) # (GND)))
-- \init_population_instance|j[27]~87\ = CARRY((!\init_population_instance|j[26]~85\) # (!\init_population_instance|j\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(27),
	datad => VCC,
	cin => \init_population_instance|j[26]~85\,
	combout => \init_population_instance|j[27]~86_combout\,
	cout => \init_population_instance|j[27]~87\);

-- Location: FF_X108_Y44_N23
\init_population_instance|j[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[27]~86_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(27));

-- Location: LCCOMB_X108_Y44_N24
\init_population_instance|j[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[28]~88_combout\ = (\init_population_instance|j\(28) & (\init_population_instance|j[27]~87\ $ (GND))) # (!\init_population_instance|j\(28) & (!\init_population_instance|j[27]~87\ & VCC))
-- \init_population_instance|j[28]~89\ = CARRY((\init_population_instance|j\(28) & !\init_population_instance|j[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(28),
	datad => VCC,
	cin => \init_population_instance|j[27]~87\,
	combout => \init_population_instance|j[28]~88_combout\,
	cout => \init_population_instance|j[28]~89\);

-- Location: FF_X108_Y44_N25
\init_population_instance|j[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[28]~88_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(28));

-- Location: LCCOMB_X108_Y44_N26
\init_population_instance|j[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[29]~90_combout\ = (\init_population_instance|j\(29) & (!\init_population_instance|j[28]~89\)) # (!\init_population_instance|j\(29) & ((\init_population_instance|j[28]~89\) # (GND)))
-- \init_population_instance|j[29]~91\ = CARRY((!\init_population_instance|j[28]~89\) # (!\init_population_instance|j\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(29),
	datad => VCC,
	cin => \init_population_instance|j[28]~89\,
	combout => \init_population_instance|j[29]~90_combout\,
	cout => \init_population_instance|j[29]~91\);

-- Location: FF_X108_Y44_N27
\init_population_instance|j[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[29]~90_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(29));

-- Location: LCCOMB_X108_Y44_N28
\init_population_instance|j[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[30]~92_combout\ = (\init_population_instance|j\(30) & (\init_population_instance|j[29]~91\ $ (GND))) # (!\init_population_instance|j\(30) & (!\init_population_instance|j[29]~91\ & VCC))
-- \init_population_instance|j[30]~93\ = CARRY((\init_population_instance|j\(30) & !\init_population_instance|j[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(30),
	datad => VCC,
	cin => \init_population_instance|j[29]~91\,
	combout => \init_population_instance|j[30]~92_combout\,
	cout => \init_population_instance|j[30]~93\);

-- Location: FF_X108_Y44_N29
\init_population_instance|j[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[30]~92_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(30));

-- Location: LCCOMB_X108_Y44_N30
\init_population_instance|j[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|j[31]~94_combout\ = \init_population_instance|j\(31) $ (\init_population_instance|j[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(31),
	cin => \init_population_instance|j[30]~93\,
	combout => \init_population_instance|j[31]~94_combout\);

-- Location: FF_X108_Y44_N31
\init_population_instance|j[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|j[31]~94_combout\,
	sclr => \init_population_instance|ALT_INV_state.s_j_loop~q\,
	ena => \init_population_instance|j[31]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|j\(31));

-- Location: LCCOMB_X109_Y44_N8
\init_population_instance|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan2~5_combout\ = (!\init_population_instance|j\(16) & (!\init_population_instance|j\(19) & (!\init_population_instance|j\(18) & !\init_population_instance|j\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(16),
	datab => \init_population_instance|j\(19),
	datac => \init_population_instance|j\(18),
	datad => \init_population_instance|j\(17),
	combout => \init_population_instance|LessThan2~5_combout\);

-- Location: LCCOMB_X109_Y44_N30
\init_population_instance|LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan2~6_combout\ = (!\init_population_instance|j\(21) & !\init_population_instance|j\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(21),
	datad => \init_population_instance|j\(20),
	combout => \init_population_instance|LessThan2~6_combout\);

-- Location: LCCOMB_X109_Y44_N4
\init_population_instance|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan2~7_combout\ = (!\init_population_instance|j\(22) & (\init_population_instance|LessThan2~5_combout\ & (\init_population_instance|LessThan2~6_combout\ & !\init_population_instance|j\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(22),
	datab => \init_population_instance|LessThan2~5_combout\,
	datac => \init_population_instance|LessThan2~6_combout\,
	datad => \init_population_instance|j\(23),
	combout => \init_population_instance|LessThan2~7_combout\);

-- Location: LCCOMB_X109_Y44_N22
\init_population_instance|LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan2~8_combout\ = (!\init_population_instance|j\(24) & (!\init_population_instance|j\(27) & (!\init_population_instance|j\(25) & !\init_population_instance|j\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(24),
	datab => \init_population_instance|j\(27),
	datac => \init_population_instance|j\(25),
	datad => \init_population_instance|j\(26),
	combout => \init_population_instance|LessThan2~8_combout\);

-- Location: LCCOMB_X109_Y44_N0
\init_population_instance|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan2~9_combout\ = (!\init_population_instance|j\(29) & (!\init_population_instance|j\(30) & (\init_population_instance|LessThan2~8_combout\ & !\init_population_instance|j\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(29),
	datab => \init_population_instance|j\(30),
	datac => \init_population_instance|LessThan2~8_combout\,
	datad => \init_population_instance|j\(28),
	combout => \init_population_instance|LessThan2~9_combout\);

-- Location: LCCOMB_X109_Y45_N28
\init_population_instance|LessThan2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|LessThan2~10_combout\ = (\init_population_instance|j\(31)) # ((\init_population_instance|LessThan2~4_combout\ & (\init_population_instance|LessThan2~7_combout\ & \init_population_instance|LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|LessThan2~4_combout\,
	datab => \init_population_instance|j\(31),
	datac => \init_population_instance|LessThan2~7_combout\,
	datad => \init_population_instance|LessThan2~9_combout\,
	combout => \init_population_instance|LessThan2~10_combout\);

-- Location: LCCOMB_X109_Y45_N16
\init_population_instance|Selector98~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Selector98~2_combout\ = (\init_population_instance|Selector98~1_combout\ & ((\init_population_instance|Selector98~0_combout\) # ((!\init_population_instance|LessThan2~10_combout\ & \init_population_instance|state.s_j_loop~q\)))) 
-- # (!\init_population_instance|Selector98~1_combout\ & (!\init_population_instance|LessThan2~10_combout\ & (\init_population_instance|state.s_j_loop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Selector98~1_combout\,
	datab => \init_population_instance|LessThan2~10_combout\,
	datac => \init_population_instance|state.s_j_loop~q\,
	datad => \init_population_instance|Selector98~0_combout\,
	combout => \init_population_instance|Selector98~2_combout\);

-- Location: FF_X109_Y45_N17
\init_population_instance|state.s_i_loop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|Selector98~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|state.s_i_loop~q\);

-- Location: LCCOMB_X109_Y45_N4
\init_population_instance|Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Selector99~0_combout\ = (\init_population_instance|state.s_write_done~q\) # ((\init_population_instance|state.s_i_loop~q\ & \init_population_instance|LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|state.s_i_loop~q\,
	datac => \init_population_instance|state.s_write_done~q\,
	datad => \init_population_instance|LessThan1~10_combout\,
	combout => \init_population_instance|Selector99~0_combout\);

-- Location: FF_X109_Y45_N5
\init_population_instance|state.s_j_loop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|Selector99~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|state.s_j_loop~q\);

-- Location: LCCOMB_X109_Y45_N26
\init_population_instance|datain[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|datain[0]~1_combout\ = (\init_population_instance|state.s_j_loop~q\ & \init_population_instance|LessThan2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init_population_instance|state.s_j_loop~q\,
	datad => \init_population_instance|LessThan2~10_combout\,
	combout => \init_population_instance|datain[0]~1_combout\);

-- Location: FF_X109_Y45_N27
\init_population_instance|state.s_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|datain[0]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|state.s_write~q\);

-- Location: LCCOMB_X109_Y45_N18
\init_population_instance|Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Selector102~0_combout\ = ((\init_population_instance|state.s_p_loop~q\) # (\init_population_instance|state.s_i_loop~q\)) # (!\init_population_instance|state.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|state.s_idle~q\,
	datac => \init_population_instance|state.s_p_loop~q\,
	datad => \init_population_instance|state.s_i_loop~q\,
	combout => \init_population_instance|Selector102~0_combout\);

-- Location: LCCOMB_X109_Y45_N20
\init_population_instance|Selector102~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Selector102~1_combout\ = (\init_population_instance|state.s_write~q\) # ((\init_population_instance|we~q\ & ((\init_population_instance|Selector102~0_combout\) # (\init_population_instance|i[24]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|state.s_write~q\,
	datab => \init_population_instance|Selector102~0_combout\,
	datac => \init_population_instance|we~q\,
	datad => \init_population_instance|i[24]~32_combout\,
	combout => \init_population_instance|Selector102~1_combout\);

-- Location: FF_X109_Y45_N21
\init_population_instance|we\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|Selector102~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|we~q\);

-- Location: LCCOMB_X109_Y45_N24
\init_population_instance|datain[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|datain[0]~0_combout\ = (\init_population_instance|state.s_j_loop~q\ & (!\reset~input_o\ & \init_population_instance|LessThan2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|state.s_j_loop~q\,
	datac => \reset~input_o\,
	datad => \init_population_instance|LessThan2~10_combout\,
	combout => \init_population_instance|datain[0]~0_combout\);

-- Location: FF_X109_Y46_N1
\init_population_instance|datain[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|i\(3),
	sload => VCC,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|datain\(3));

-- Location: LCCOMB_X105_Y46_N10
\state.s_print~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.s_print~0_combout\ = (\state.s_print~q\) # ((!\state.s_init~q\ & \init_population_instance|stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_init~q\,
	datac => \state.s_print~q\,
	datad => \init_population_instance|stop~q\,
	combout => \state.s_print~0_combout\);

-- Location: FF_X105_Y46_N11
\state.s_print\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_print~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_print~q\);

-- Location: LCCOMB_X105_Y46_N6
\sel_address~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_address~feeder_combout\ = \state.s_print~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_print~q\,
	combout => \sel_address~feeder_combout\);

-- Location: FF_X105_Y46_N7
sel_address : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \sel_address~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_address~q\);

-- Location: LCCOMB_X108_Y46_N4
\init_population_instance|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~0_combout\ = (\init_population_instance|j\(0) & (\init_population_instance|i\(0) $ (VCC))) # (!\init_population_instance|j\(0) & (\init_population_instance|i\(0) & VCC))
-- \init_population_instance|Add4~1\ = CARRY((\init_population_instance|j\(0) & \init_population_instance|i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(0),
	datab => \init_population_instance|i\(0),
	datad => VCC,
	combout => \init_population_instance|Add4~0_combout\,
	cout => \init_population_instance|Add4~1\);

-- Location: LCCOMB_X107_Y46_N2
\init_population_instance|address[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[0]~13_combout\ = (\init_population_instance|Add4~0_combout\ & (\init_population_instance|p\(0) $ (VCC))) # (!\init_population_instance|Add4~0_combout\ & (\init_population_instance|p\(0) & VCC))
-- \init_population_instance|address[0]~14\ = CARRY((\init_population_instance|Add4~0_combout\ & \init_population_instance|p\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Add4~0_combout\,
	datab => \init_population_instance|p\(0),
	datad => VCC,
	combout => \init_population_instance|address[0]~13_combout\,
	cout => \init_population_instance|address[0]~14\);

-- Location: FF_X107_Y46_N3
\init_population_instance|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[0]~13_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(0));

-- Location: LCCOMB_X103_Y46_N12
\address[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[0]~0_combout\ = (!\sel_address~q\ & \init_population_instance|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_address~q\,
	datac => \init_population_instance|address\(0),
	combout => \address[0]~0_combout\);

-- Location: LCCOMB_X110_Y46_N2
\init_population_instance|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~1_cout\ = CARRY(!\init_population_instance|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(0),
	datad => VCC,
	cout => \init_population_instance|Add2~1_cout\);

-- Location: LCCOMB_X110_Y46_N4
\init_population_instance|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~2_combout\ = (\init_population_instance|i\(1) & ((\init_population_instance|Add2~1_cout\) # (GND))) # (!\init_population_instance|i\(1) & (!\init_population_instance|Add2~1_cout\))
-- \init_population_instance|Add2~3\ = CARRY((\init_population_instance|i\(1)) # (!\init_population_instance|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(1),
	datad => VCC,
	cin => \init_population_instance|Add2~1_cout\,
	combout => \init_population_instance|Add2~2_combout\,
	cout => \init_population_instance|Add2~3\);

-- Location: LCCOMB_X108_Y46_N6
\init_population_instance|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~2_combout\ = (\init_population_instance|j\(1) & ((\init_population_instance|Add2~2_combout\ & (\init_population_instance|Add4~1\ & VCC)) # (!\init_population_instance|Add2~2_combout\ & (!\init_population_instance|Add4~1\)))) 
-- # (!\init_population_instance|j\(1) & ((\init_population_instance|Add2~2_combout\ & (!\init_population_instance|Add4~1\)) # (!\init_population_instance|Add2~2_combout\ & ((\init_population_instance|Add4~1\) # (GND)))))
-- \init_population_instance|Add4~3\ = CARRY((\init_population_instance|j\(1) & (!\init_population_instance|Add2~2_combout\ & !\init_population_instance|Add4~1\)) # (!\init_population_instance|j\(1) & ((!\init_population_instance|Add4~1\) # 
-- (!\init_population_instance|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(1),
	datab => \init_population_instance|Add2~2_combout\,
	datad => VCC,
	cin => \init_population_instance|Add4~1\,
	combout => \init_population_instance|Add4~2_combout\,
	cout => \init_population_instance|Add4~3\);

-- Location: LCCOMB_X107_Y46_N4
\init_population_instance|address[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[1]~15_combout\ = (\init_population_instance|Add4~2_combout\ & ((\init_population_instance|p\(1) & (\init_population_instance|address[0]~14\ & VCC)) # (!\init_population_instance|p\(1) & 
-- (!\init_population_instance|address[0]~14\)))) # (!\init_population_instance|Add4~2_combout\ & ((\init_population_instance|p\(1) & (!\init_population_instance|address[0]~14\)) # (!\init_population_instance|p\(1) & 
-- ((\init_population_instance|address[0]~14\) # (GND)))))
-- \init_population_instance|address[1]~16\ = CARRY((\init_population_instance|Add4~2_combout\ & (!\init_population_instance|p\(1) & !\init_population_instance|address[0]~14\)) # (!\init_population_instance|Add4~2_combout\ & 
-- ((!\init_population_instance|address[0]~14\) # (!\init_population_instance|p\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Add4~2_combout\,
	datab => \init_population_instance|p\(1),
	datad => VCC,
	cin => \init_population_instance|address[0]~14\,
	combout => \init_population_instance|address[1]~15_combout\,
	cout => \init_population_instance|address[1]~16\);

-- Location: FF_X107_Y46_N5
\init_population_instance|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[1]~15_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(1));

-- Location: LCCOMB_X103_Y46_N14
\address[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[1]~1_combout\ = (!\sel_address~q\ & \init_population_instance|address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_address~q\,
	datac => \init_population_instance|address\(1),
	combout => \address[1]~1_combout\);

-- Location: LCCOMB_X110_Y46_N6
\init_population_instance|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~4_combout\ = (\init_population_instance|i\(2) & (!\init_population_instance|Add2~3\ & VCC)) # (!\init_population_instance|i\(2) & (\init_population_instance|Add2~3\ $ (GND)))
-- \init_population_instance|Add2~5\ = CARRY((!\init_population_instance|i\(2) & !\init_population_instance|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(2),
	datad => VCC,
	cin => \init_population_instance|Add2~3\,
	combout => \init_population_instance|Add2~4_combout\,
	cout => \init_population_instance|Add2~5\);

-- Location: LCCOMB_X108_Y46_N8
\init_population_instance|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~4_combout\ = ((\init_population_instance|Add2~4_combout\ $ (\init_population_instance|j\(2) $ (!\init_population_instance|Add4~3\)))) # (GND)
-- \init_population_instance|Add4~5\ = CARRY((\init_population_instance|Add2~4_combout\ & ((\init_population_instance|j\(2)) # (!\init_population_instance|Add4~3\))) # (!\init_population_instance|Add2~4_combout\ & (\init_population_instance|j\(2) & 
-- !\init_population_instance|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Add2~4_combout\,
	datab => \init_population_instance|j\(2),
	datad => VCC,
	cin => \init_population_instance|Add4~3\,
	combout => \init_population_instance|Add4~4_combout\,
	cout => \init_population_instance|Add4~5\);

-- Location: LCCOMB_X107_Y46_N6
\init_population_instance|address[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[2]~17_combout\ = ((\init_population_instance|p\(2) $ (\init_population_instance|Add4~4_combout\ $ (!\init_population_instance|address[1]~16\)))) # (GND)
-- \init_population_instance|address[2]~18\ = CARRY((\init_population_instance|p\(2) & ((\init_population_instance|Add4~4_combout\) # (!\init_population_instance|address[1]~16\))) # (!\init_population_instance|p\(2) & 
-- (\init_population_instance|Add4~4_combout\ & !\init_population_instance|address[1]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(2),
	datab => \init_population_instance|Add4~4_combout\,
	datad => VCC,
	cin => \init_population_instance|address[1]~16\,
	combout => \init_population_instance|address[2]~17_combout\,
	cout => \init_population_instance|address[2]~18\);

-- Location: FF_X107_Y46_N7
\init_population_instance|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[2]~17_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(2));

-- Location: LCCOMB_X103_Y46_N24
\address[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[2]~2_combout\ = (!\sel_address~q\ & \init_population_instance|address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_address~q\,
	datad => \init_population_instance|address\(2),
	combout => \address[2]~2_combout\);

-- Location: LCCOMB_X110_Y46_N8
\init_population_instance|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~6_combout\ = (\init_population_instance|i\(3) & ((\init_population_instance|Add2~5\) # (GND))) # (!\init_population_instance|i\(3) & (!\init_population_instance|Add2~5\))
-- \init_population_instance|Add2~7\ = CARRY((\init_population_instance|i\(3)) # (!\init_population_instance|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(3),
	datad => VCC,
	cin => \init_population_instance|Add2~5\,
	combout => \init_population_instance|Add2~6_combout\,
	cout => \init_population_instance|Add2~7\);

-- Location: LCCOMB_X109_Y46_N8
\init_population_instance|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add3~0_combout\ = (\init_population_instance|i\(0) & (\init_population_instance|Add2~6_combout\ $ (VCC))) # (!\init_population_instance|i\(0) & (\init_population_instance|Add2~6_combout\ & VCC))
-- \init_population_instance|Add3~1\ = CARRY((\init_population_instance|i\(0) & \init_population_instance|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(0),
	datab => \init_population_instance|Add2~6_combout\,
	datad => VCC,
	combout => \init_population_instance|Add3~0_combout\,
	cout => \init_population_instance|Add3~1\);

-- Location: LCCOMB_X108_Y46_N10
\init_population_instance|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~6_combout\ = (\init_population_instance|j\(3) & ((\init_population_instance|Add3~0_combout\ & (\init_population_instance|Add4~5\ & VCC)) # (!\init_population_instance|Add3~0_combout\ & (!\init_population_instance|Add4~5\)))) 
-- # (!\init_population_instance|j\(3) & ((\init_population_instance|Add3~0_combout\ & (!\init_population_instance|Add4~5\)) # (!\init_population_instance|Add3~0_combout\ & ((\init_population_instance|Add4~5\) # (GND)))))
-- \init_population_instance|Add4~7\ = CARRY((\init_population_instance|j\(3) & (!\init_population_instance|Add3~0_combout\ & !\init_population_instance|Add4~5\)) # (!\init_population_instance|j\(3) & ((!\init_population_instance|Add4~5\) # 
-- (!\init_population_instance|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(3),
	datab => \init_population_instance|Add3~0_combout\,
	datad => VCC,
	cin => \init_population_instance|Add4~5\,
	combout => \init_population_instance|Add4~6_combout\,
	cout => \init_population_instance|Add4~7\);

-- Location: LCCOMB_X107_Y46_N8
\init_population_instance|address[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[3]~19_combout\ = (\init_population_instance|p\(3) & ((\init_population_instance|Add4~6_combout\ & (\init_population_instance|address[2]~18\ & VCC)) # (!\init_population_instance|Add4~6_combout\ & 
-- (!\init_population_instance|address[2]~18\)))) # (!\init_population_instance|p\(3) & ((\init_population_instance|Add4~6_combout\ & (!\init_population_instance|address[2]~18\)) # (!\init_population_instance|Add4~6_combout\ & 
-- ((\init_population_instance|address[2]~18\) # (GND)))))
-- \init_population_instance|address[3]~20\ = CARRY((\init_population_instance|p\(3) & (!\init_population_instance|Add4~6_combout\ & !\init_population_instance|address[2]~18\)) # (!\init_population_instance|p\(3) & 
-- ((!\init_population_instance|address[2]~18\) # (!\init_population_instance|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(3),
	datab => \init_population_instance|Add4~6_combout\,
	datad => VCC,
	cin => \init_population_instance|address[2]~18\,
	combout => \init_population_instance|address[3]~19_combout\,
	cout => \init_population_instance|address[3]~20\);

-- Location: FF_X107_Y46_N9
\init_population_instance|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[3]~19_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(3));

-- Location: LCCOMB_X103_Y46_N26
\address[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[3]~3_combout\ = (!\sel_address~q\ & \init_population_instance|address\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_address~q\,
	datad => \init_population_instance|address\(3),
	combout => \address[3]~3_combout\);

-- Location: LCCOMB_X106_Y46_N4
\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\init_population_instance|p\(0) & (\init_population_instance|p\(4) $ (VCC))) # (!\init_population_instance|p\(0) & (\init_population_instance|p\(4) & VCC))
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\init_population_instance|p\(0) & \init_population_instance|p\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(0),
	datab => \init_population_instance|p\(4),
	datad => VCC,
	combout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X110_Y46_N10
\init_population_instance|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~8_combout\ = (\init_population_instance|i\(4) & (!\init_population_instance|Add2~7\ & VCC)) # (!\init_population_instance|i\(4) & (\init_population_instance|Add2~7\ $ (GND)))
-- \init_population_instance|Add2~9\ = CARRY((!\init_population_instance|i\(4) & !\init_population_instance|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(4),
	datad => VCC,
	cin => \init_population_instance|Add2~7\,
	combout => \init_population_instance|Add2~8_combout\,
	cout => \init_population_instance|Add2~9\);

-- Location: LCCOMB_X109_Y46_N10
\init_population_instance|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add3~2_combout\ = (\init_population_instance|i\(1) & ((\init_population_instance|Add2~8_combout\ & (\init_population_instance|Add3~1\ & VCC)) # (!\init_population_instance|Add2~8_combout\ & (!\init_population_instance|Add3~1\)))) 
-- # (!\init_population_instance|i\(1) & ((\init_population_instance|Add2~8_combout\ & (!\init_population_instance|Add3~1\)) # (!\init_population_instance|Add2~8_combout\ & ((\init_population_instance|Add3~1\) # (GND)))))
-- \init_population_instance|Add3~3\ = CARRY((\init_population_instance|i\(1) & (!\init_population_instance|Add2~8_combout\ & !\init_population_instance|Add3~1\)) # (!\init_population_instance|i\(1) & ((!\init_population_instance|Add3~1\) # 
-- (!\init_population_instance|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(1),
	datab => \init_population_instance|Add2~8_combout\,
	datad => VCC,
	cin => \init_population_instance|Add3~1\,
	combout => \init_population_instance|Add3~2_combout\,
	cout => \init_population_instance|Add3~3\);

-- Location: LCCOMB_X108_Y46_N12
\init_population_instance|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~8_combout\ = ((\init_population_instance|j\(4) $ (\init_population_instance|Add3~2_combout\ $ (!\init_population_instance|Add4~7\)))) # (GND)
-- \init_population_instance|Add4~9\ = CARRY((\init_population_instance|j\(4) & ((\init_population_instance|Add3~2_combout\) # (!\init_population_instance|Add4~7\))) # (!\init_population_instance|j\(4) & (\init_population_instance|Add3~2_combout\ & 
-- !\init_population_instance|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(4),
	datab => \init_population_instance|Add3~2_combout\,
	datad => VCC,
	cin => \init_population_instance|Add4~7\,
	combout => \init_population_instance|Add4~8_combout\,
	cout => \init_population_instance|Add4~9\);

-- Location: LCCOMB_X107_Y46_N10
\init_population_instance|address[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[4]~21_combout\ = ((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (\init_population_instance|Add4~8_combout\ $ (!\init_population_instance|address[3]~20\)))) # (GND)
-- \init_population_instance|address[4]~22\ = CARRY((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\init_population_instance|Add4~8_combout\) # (!\init_population_instance|address[3]~20\))) # 
-- (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (\init_population_instance|Add4~8_combout\ & !\init_population_instance|address[3]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \init_population_instance|Add4~8_combout\,
	datad => VCC,
	cin => \init_population_instance|address[3]~20\,
	combout => \init_population_instance|address[4]~21_combout\,
	cout => \init_population_instance|address[4]~22\);

-- Location: FF_X107_Y46_N11
\init_population_instance|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[4]~21_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(4));

-- Location: LCCOMB_X103_Y46_N0
\address[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[4]~4_combout\ = (!\sel_address~q\ & \init_population_instance|address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_address~q\,
	datad => \init_population_instance|address\(4),
	combout => \address[4]~4_combout\);

-- Location: LCCOMB_X106_Y46_N0
\init_population_instance|Mult0|mult_core|romout[0][5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|romout[0][5]~0_combout\ = \init_population_instance|p\(1) $ (\init_population_instance|p\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(1),
	datac => \init_population_instance|p\(0),
	combout => \init_population_instance|Mult0|mult_core|romout[0][5]~0_combout\);

-- Location: LCCOMB_X106_Y46_N6
\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\init_population_instance|p\(5) & ((\init_population_instance|Mult0|mult_core|romout[0][5]~0_combout\ & 
-- (\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\init_population_instance|Mult0|mult_core|romout[0][5]~0_combout\ & (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\init_population_instance|p\(5) & ((\init_population_instance|Mult0|mult_core|romout[0][5]~0_combout\ & (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\init_population_instance|Mult0|mult_core|romout[0][5]~0_combout\ & ((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\init_population_instance|p\(5) & (!\init_population_instance|Mult0|mult_core|romout[0][5]~0_combout\ & 
-- !\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\init_population_instance|p\(5) & ((!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (!\init_population_instance|Mult0|mult_core|romout[0][5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(5),
	datab => \init_population_instance|Mult0|mult_core|romout[0][5]~0_combout\,
	datad => VCC,
	cin => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X110_Y46_N12
\init_population_instance|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~10_combout\ = (\init_population_instance|i\(5) & ((\init_population_instance|Add2~9\) # (GND))) # (!\init_population_instance|i\(5) & (!\init_population_instance|Add2~9\))
-- \init_population_instance|Add2~11\ = CARRY((\init_population_instance|i\(5)) # (!\init_population_instance|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(5),
	datad => VCC,
	cin => \init_population_instance|Add2~9\,
	combout => \init_population_instance|Add2~10_combout\,
	cout => \init_population_instance|Add2~11\);

-- Location: LCCOMB_X109_Y46_N12
\init_population_instance|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add3~4_combout\ = ((\init_population_instance|i\(2) $ (\init_population_instance|Add2~10_combout\ $ (!\init_population_instance|Add3~3\)))) # (GND)
-- \init_population_instance|Add3~5\ = CARRY((\init_population_instance|i\(2) & ((\init_population_instance|Add2~10_combout\) # (!\init_population_instance|Add3~3\))) # (!\init_population_instance|i\(2) & (\init_population_instance|Add2~10_combout\ & 
-- !\init_population_instance|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(2),
	datab => \init_population_instance|Add2~10_combout\,
	datad => VCC,
	cin => \init_population_instance|Add3~3\,
	combout => \init_population_instance|Add3~4_combout\,
	cout => \init_population_instance|Add3~5\);

-- Location: LCCOMB_X108_Y46_N14
\init_population_instance|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~10_combout\ = (\init_population_instance|j\(5) & ((\init_population_instance|Add3~4_combout\ & (\init_population_instance|Add4~9\ & VCC)) # (!\init_population_instance|Add3~4_combout\ & 
-- (!\init_population_instance|Add4~9\)))) # (!\init_population_instance|j\(5) & ((\init_population_instance|Add3~4_combout\ & (!\init_population_instance|Add4~9\)) # (!\init_population_instance|Add3~4_combout\ & ((\init_population_instance|Add4~9\) # 
-- (GND)))))
-- \init_population_instance|Add4~11\ = CARRY((\init_population_instance|j\(5) & (!\init_population_instance|Add3~4_combout\ & !\init_population_instance|Add4~9\)) # (!\init_population_instance|j\(5) & ((!\init_population_instance|Add4~9\) # 
-- (!\init_population_instance|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(5),
	datab => \init_population_instance|Add3~4_combout\,
	datad => VCC,
	cin => \init_population_instance|Add4~9\,
	combout => \init_population_instance|Add4~10_combout\,
	cout => \init_population_instance|Add4~11\);

-- Location: LCCOMB_X107_Y46_N12
\init_population_instance|address[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[5]~23_combout\ = (\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\init_population_instance|Add4~10_combout\ & (\init_population_instance|address[4]~22\ & VCC)) # 
-- (!\init_population_instance|Add4~10_combout\ & (!\init_population_instance|address[4]~22\)))) # (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\init_population_instance|Add4~10_combout\ & 
-- (!\init_population_instance|address[4]~22\)) # (!\init_population_instance|Add4~10_combout\ & ((\init_population_instance|address[4]~22\) # (GND)))))
-- \init_population_instance|address[5]~24\ = CARRY((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\init_population_instance|Add4~10_combout\ & !\init_population_instance|address[4]~22\)) # 
-- (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((!\init_population_instance|address[4]~22\) # (!\init_population_instance|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \init_population_instance|Add4~10_combout\,
	datad => VCC,
	cin => \init_population_instance|address[4]~22\,
	combout => \init_population_instance|address[5]~23_combout\,
	cout => \init_population_instance|address[5]~24\);

-- Location: FF_X107_Y46_N13
\init_population_instance|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[5]~23_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(5));

-- Location: LCCOMB_X103_Y46_N6
\address[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[5]~5_combout\ = (\init_population_instance|address\(5) & !\sel_address~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|address\(5),
	datac => \sel_address~q\,
	combout => \address[5]~5_combout\);

-- Location: LCCOMB_X106_Y45_N10
\init_population_instance|Mult0|mult_core|romout[0][6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|romout[0][6]~1_combout\ = \init_population_instance|p\(2) $ (((\init_population_instance|p\(1) & !\init_population_instance|p\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(1),
	datac => \init_population_instance|p\(0),
	datad => \init_population_instance|p\(2),
	combout => \init_population_instance|Mult0|mult_core|romout[0][6]~1_combout\);

-- Location: LCCOMB_X106_Y46_N8
\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\init_population_instance|Mult0|mult_core|romout[0][6]~1_combout\ $ (\init_population_instance|p\(6) $ 
-- (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\init_population_instance|Mult0|mult_core|romout[0][6]~1_combout\ & ((\init_population_instance|p\(6)) # 
-- (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # (!\init_population_instance|Mult0|mult_core|romout[0][6]~1_combout\ & (\init_population_instance|p\(6) & 
-- !\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Mult0|mult_core|romout[0][6]~1_combout\,
	datab => \init_population_instance|p\(6),
	datad => VCC,
	cin => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X110_Y46_N14
\init_population_instance|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~12_combout\ = (\init_population_instance|i\(6) & (!\init_population_instance|Add2~11\ & VCC)) # (!\init_population_instance|i\(6) & (\init_population_instance|Add2~11\ $ (GND)))
-- \init_population_instance|Add2~13\ = CARRY((!\init_population_instance|i\(6) & !\init_population_instance|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(6),
	datad => VCC,
	cin => \init_population_instance|Add2~11\,
	combout => \init_population_instance|Add2~12_combout\,
	cout => \init_population_instance|Add2~13\);

-- Location: LCCOMB_X109_Y46_N14
\init_population_instance|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add3~6_combout\ = (\init_population_instance|i\(3) & ((\init_population_instance|Add2~12_combout\ & (\init_population_instance|Add3~5\ & VCC)) # (!\init_population_instance|Add2~12_combout\ & 
-- (!\init_population_instance|Add3~5\)))) # (!\init_population_instance|i\(3) & ((\init_population_instance|Add2~12_combout\ & (!\init_population_instance|Add3~5\)) # (!\init_population_instance|Add2~12_combout\ & ((\init_population_instance|Add3~5\) # 
-- (GND)))))
-- \init_population_instance|Add3~7\ = CARRY((\init_population_instance|i\(3) & (!\init_population_instance|Add2~12_combout\ & !\init_population_instance|Add3~5\)) # (!\init_population_instance|i\(3) & ((!\init_population_instance|Add3~5\) # 
-- (!\init_population_instance|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(3),
	datab => \init_population_instance|Add2~12_combout\,
	datad => VCC,
	cin => \init_population_instance|Add3~5\,
	combout => \init_population_instance|Add3~6_combout\,
	cout => \init_population_instance|Add3~7\);

-- Location: LCCOMB_X108_Y46_N16
\init_population_instance|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~12_combout\ = ((\init_population_instance|j\(6) $ (\init_population_instance|Add3~6_combout\ $ (!\init_population_instance|Add4~11\)))) # (GND)
-- \init_population_instance|Add4~13\ = CARRY((\init_population_instance|j\(6) & ((\init_population_instance|Add3~6_combout\) # (!\init_population_instance|Add4~11\))) # (!\init_population_instance|j\(6) & (\init_population_instance|Add3~6_combout\ & 
-- !\init_population_instance|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(6),
	datab => \init_population_instance|Add3~6_combout\,
	datad => VCC,
	cin => \init_population_instance|Add4~11\,
	combout => \init_population_instance|Add4~12_combout\,
	cout => \init_population_instance|Add4~13\);

-- Location: LCCOMB_X107_Y46_N14
\init_population_instance|address[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[6]~25_combout\ = ((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (\init_population_instance|Add4~12_combout\ $ (!\init_population_instance|address[5]~24\)))) # (GND)
-- \init_population_instance|address[6]~26\ = CARRY((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\init_population_instance|Add4~12_combout\) # (!\init_population_instance|address[5]~24\))) # 
-- (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\init_population_instance|Add4~12_combout\ & !\init_population_instance|address[5]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \init_population_instance|Add4~12_combout\,
	datad => VCC,
	cin => \init_population_instance|address[5]~24\,
	combout => \init_population_instance|address[6]~25_combout\,
	cout => \init_population_instance|address[6]~26\);

-- Location: FF_X107_Y46_N15
\init_population_instance|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[6]~25_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(6));

-- Location: LCCOMB_X103_Y46_N28
\address[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[6]~6_combout\ = (!\sel_address~q\ & \init_population_instance|address\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_address~q\,
	datad => \init_population_instance|address\(6),
	combout => \address[6]~6_combout\);

-- Location: LCCOMB_X106_Y45_N0
\init_population_instance|Mult0|mult_core|romout[0][7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|romout[0][7]~2_combout\ = \init_population_instance|p\(3) $ (((\init_population_instance|p\(1) & (\init_population_instance|p\(0) & !\init_population_instance|p\(2))) # (!\init_population_instance|p\(1) & 
-- ((\init_population_instance|p\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(3),
	datab => \init_population_instance|p\(0),
	datac => \init_population_instance|p\(1),
	datad => \init_population_instance|p\(2),
	combout => \init_population_instance|Mult0|mult_core|romout[0][7]~2_combout\);

-- Location: LCCOMB_X106_Y46_N10
\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\init_population_instance|p\(7) & ((\init_population_instance|Mult0|mult_core|romout[0][7]~2_combout\ & 
-- (\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\init_population_instance|Mult0|mult_core|romout[0][7]~2_combout\ & (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\init_population_instance|p\(7) & ((\init_population_instance|Mult0|mult_core|romout[0][7]~2_combout\ & (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\init_population_instance|Mult0|mult_core|romout[0][7]~2_combout\ & ((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\init_population_instance|p\(7) & (!\init_population_instance|Mult0|mult_core|romout[0][7]~2_combout\ & 
-- !\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\init_population_instance|p\(7) & ((!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # 
-- (!\init_population_instance|Mult0|mult_core|romout[0][7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(7),
	datab => \init_population_instance|Mult0|mult_core|romout[0][7]~2_combout\,
	datad => VCC,
	cin => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X110_Y46_N16
\init_population_instance|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~14_combout\ = (\init_population_instance|i\(7) & ((\init_population_instance|Add2~13\) # (GND))) # (!\init_population_instance|i\(7) & (!\init_population_instance|Add2~13\))
-- \init_population_instance|Add2~15\ = CARRY((\init_population_instance|i\(7)) # (!\init_population_instance|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(7),
	datad => VCC,
	cin => \init_population_instance|Add2~13\,
	combout => \init_population_instance|Add2~14_combout\,
	cout => \init_population_instance|Add2~15\);

-- Location: LCCOMB_X109_Y46_N16
\init_population_instance|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add3~8_combout\ = ((\init_population_instance|i\(4) $ (\init_population_instance|Add2~14_combout\ $ (!\init_population_instance|Add3~7\)))) # (GND)
-- \init_population_instance|Add3~9\ = CARRY((\init_population_instance|i\(4) & ((\init_population_instance|Add2~14_combout\) # (!\init_population_instance|Add3~7\))) # (!\init_population_instance|i\(4) & (\init_population_instance|Add2~14_combout\ & 
-- !\init_population_instance|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(4),
	datab => \init_population_instance|Add2~14_combout\,
	datad => VCC,
	cin => \init_population_instance|Add3~7\,
	combout => \init_population_instance|Add3~8_combout\,
	cout => \init_population_instance|Add3~9\);

-- Location: LCCOMB_X108_Y46_N18
\init_population_instance|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~14_combout\ = (\init_population_instance|j\(7) & ((\init_population_instance|Add3~8_combout\ & (\init_population_instance|Add4~13\ & VCC)) # (!\init_population_instance|Add3~8_combout\ & 
-- (!\init_population_instance|Add4~13\)))) # (!\init_population_instance|j\(7) & ((\init_population_instance|Add3~8_combout\ & (!\init_population_instance|Add4~13\)) # (!\init_population_instance|Add3~8_combout\ & ((\init_population_instance|Add4~13\) # 
-- (GND)))))
-- \init_population_instance|Add4~15\ = CARRY((\init_population_instance|j\(7) & (!\init_population_instance|Add3~8_combout\ & !\init_population_instance|Add4~13\)) # (!\init_population_instance|j\(7) & ((!\init_population_instance|Add4~13\) # 
-- (!\init_population_instance|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(7),
	datab => \init_population_instance|Add3~8_combout\,
	datad => VCC,
	cin => \init_population_instance|Add4~13\,
	combout => \init_population_instance|Add4~14_combout\,
	cout => \init_population_instance|Add4~15\);

-- Location: LCCOMB_X107_Y46_N16
\init_population_instance|address[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[7]~27_combout\ = (\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\init_population_instance|Add4~14_combout\ & (\init_population_instance|address[6]~26\ & VCC)) # 
-- (!\init_population_instance|Add4~14_combout\ & (!\init_population_instance|address[6]~26\)))) # (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\init_population_instance|Add4~14_combout\ & 
-- (!\init_population_instance|address[6]~26\)) # (!\init_population_instance|Add4~14_combout\ & ((\init_population_instance|address[6]~26\) # (GND)))))
-- \init_population_instance|address[7]~28\ = CARRY((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\init_population_instance|Add4~14_combout\ & !\init_population_instance|address[6]~26\)) # 
-- (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((!\init_population_instance|address[6]~26\) # (!\init_population_instance|Add4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \init_population_instance|Add4~14_combout\,
	datad => VCC,
	cin => \init_population_instance|address[6]~26\,
	combout => \init_population_instance|address[7]~27_combout\,
	cout => \init_population_instance|address[7]~28\);

-- Location: FF_X107_Y46_N17
\init_population_instance|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[7]~27_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(7));

-- Location: LCCOMB_X103_Y46_N18
\address[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[7]~7_combout\ = (!\sel_address~q\ & \init_population_instance|address\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_address~q\,
	datad => \init_population_instance|address\(7),
	combout => \address[7]~7_combout\);

-- Location: LCCOMB_X110_Y46_N18
\init_population_instance|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~16_combout\ = (\init_population_instance|i\(8) & (!\init_population_instance|Add2~15\ & VCC)) # (!\init_population_instance|i\(8) & (\init_population_instance|Add2~15\ $ (GND)))
-- \init_population_instance|Add2~17\ = CARRY((!\init_population_instance|i\(8) & !\init_population_instance|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(8),
	datad => VCC,
	cin => \init_population_instance|Add2~15\,
	combout => \init_population_instance|Add2~16_combout\,
	cout => \init_population_instance|Add2~17\);

-- Location: LCCOMB_X109_Y46_N18
\init_population_instance|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add3~10_combout\ = (\init_population_instance|i\(5) & ((\init_population_instance|Add2~16_combout\ & (\init_population_instance|Add3~9\ & VCC)) # (!\init_population_instance|Add2~16_combout\ & 
-- (!\init_population_instance|Add3~9\)))) # (!\init_population_instance|i\(5) & ((\init_population_instance|Add2~16_combout\ & (!\init_population_instance|Add3~9\)) # (!\init_population_instance|Add2~16_combout\ & ((\init_population_instance|Add3~9\) # 
-- (GND)))))
-- \init_population_instance|Add3~11\ = CARRY((\init_population_instance|i\(5) & (!\init_population_instance|Add2~16_combout\ & !\init_population_instance|Add3~9\)) # (!\init_population_instance|i\(5) & ((!\init_population_instance|Add3~9\) # 
-- (!\init_population_instance|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(5),
	datab => \init_population_instance|Add2~16_combout\,
	datad => VCC,
	cin => \init_population_instance|Add3~9\,
	combout => \init_population_instance|Add3~10_combout\,
	cout => \init_population_instance|Add3~11\);

-- Location: LCCOMB_X108_Y46_N20
\init_population_instance|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~16_combout\ = ((\init_population_instance|j\(8) $ (\init_population_instance|Add3~10_combout\ $ (!\init_population_instance|Add4~15\)))) # (GND)
-- \init_population_instance|Add4~17\ = CARRY((\init_population_instance|j\(8) & ((\init_population_instance|Add3~10_combout\) # (!\init_population_instance|Add4~15\))) # (!\init_population_instance|j\(8) & (\init_population_instance|Add3~10_combout\ & 
-- !\init_population_instance|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(8),
	datab => \init_population_instance|Add3~10_combout\,
	datad => VCC,
	cin => \init_population_instance|Add4~15\,
	combout => \init_population_instance|Add4~16_combout\,
	cout => \init_population_instance|Add4~17\);

-- Location: LCCOMB_X106_Y45_N22
\init_population_instance|Mult0|mult_core|romout[0][8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|romout[0][8]~3_combout\ = (\init_population_instance|p\(2) & (((\init_population_instance|p\(1) & !\init_population_instance|p\(3))))) # (!\init_population_instance|p\(2) & (\init_population_instance|p\(3) & 
-- ((!\init_population_instance|p\(1)) # (!\init_population_instance|p\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(2),
	datab => \init_population_instance|p\(0),
	datac => \init_population_instance|p\(1),
	datad => \init_population_instance|p\(3),
	combout => \init_population_instance|Mult0|mult_core|romout[0][8]~3_combout\);

-- Location: LCCOMB_X106_Y46_N12
\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\init_population_instance|Mult0|mult_core|romout[0][8]~3_combout\ $ (\init_population_instance|p\(4) $ 
-- (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\init_population_instance|Mult0|mult_core|romout[0][8]~3_combout\ & ((\init_population_instance|p\(4)) # 
-- (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # (!\init_population_instance|Mult0|mult_core|romout[0][8]~3_combout\ & (\init_population_instance|p\(4) & 
-- !\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Mult0|mult_core|romout[0][8]~3_combout\,
	datab => \init_population_instance|p\(4),
	datad => VCC,
	cin => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X106_Y46_N22
\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\init_population_instance|p\(8) $ (VCC))) # 
-- (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\init_population_instance|p\(8) & VCC))
-- \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \init_population_instance|p\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \init_population_instance|p\(8),
	datad => VCC,
	combout => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X107_Y46_N18
\init_population_instance|address[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[8]~29_combout\ = ((\init_population_instance|Add4~16_combout\ $ (\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (!\init_population_instance|address[7]~28\)))) # 
-- (GND)
-- \init_population_instance|address[8]~30\ = CARRY((\init_population_instance|Add4~16_combout\ & ((\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\) # (!\init_population_instance|address[7]~28\))) # 
-- (!\init_population_instance|Add4~16_combout\ & (\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & !\init_population_instance|address[7]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Add4~16_combout\,
	datab => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \init_population_instance|address[7]~28\,
	combout => \init_population_instance|address[8]~29_combout\,
	cout => \init_population_instance|address[8]~30\);

-- Location: FF_X107_Y46_N19
\init_population_instance|address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[8]~29_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(8));

-- Location: LCCOMB_X103_Y46_N16
\address[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[8]~8_combout\ = (!\sel_address~q\ & \init_population_instance|address\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_address~q\,
	datad => \init_population_instance|address\(8),
	combout => \address[8]~8_combout\);

-- Location: LCCOMB_X106_Y45_N4
\init_population_instance|Mult0|mult_core|romout[0][9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|romout[0][9]~5_combout\ = (\init_population_instance|p\(3) & ((\init_population_instance|p\(2)) # ((\init_population_instance|p\(0) & \init_population_instance|p\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(2),
	datab => \init_population_instance|p\(0),
	datac => \init_population_instance|p\(1),
	datad => \init_population_instance|p\(3),
	combout => \init_population_instance|Mult0|mult_core|romout[0][9]~5_combout\);

-- Location: LCCOMB_X106_Y46_N2
\init_population_instance|Mult0|mult_core|romout[1][5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|romout[1][5]~4_combout\ = \init_population_instance|p\(4) $ (\init_population_instance|p\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init_population_instance|p\(4),
	datad => \init_population_instance|p\(5),
	combout => \init_population_instance|Mult0|mult_core|romout[1][5]~4_combout\);

-- Location: LCCOMB_X106_Y46_N14
\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\init_population_instance|Mult0|mult_core|romout[0][9]~5_combout\ & ((\init_population_instance|Mult0|mult_core|romout[1][5]~4_combout\ & 
-- (\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\init_population_instance|Mult0|mult_core|romout[1][5]~4_combout\ & (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\init_population_instance|Mult0|mult_core|romout[0][9]~5_combout\ & ((\init_population_instance|Mult0|mult_core|romout[1][5]~4_combout\ & (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\init_population_instance|Mult0|mult_core|romout[1][5]~4_combout\ & ((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\init_population_instance|Mult0|mult_core|romout[0][9]~5_combout\ & (!\init_population_instance|Mult0|mult_core|romout[1][5]~4_combout\ & 
-- !\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\init_population_instance|Mult0|mult_core|romout[0][9]~5_combout\ & ((!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # 
-- (!\init_population_instance|Mult0|mult_core|romout[1][5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Mult0|mult_core|romout[0][9]~5_combout\,
	datab => \init_population_instance|Mult0|mult_core|romout[1][5]~4_combout\,
	datad => VCC,
	cin => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X106_Y46_N24
\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\init_population_instance|p\(9) & ((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # (!\init_population_instance|p\(9) & ((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- ((\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\init_population_instance|p\(9) & (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- !\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\init_population_instance|p\(9) & ((!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(9),
	datab => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X110_Y46_N20
\init_population_instance|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~18_combout\ = (\init_population_instance|i\(9) & ((\init_population_instance|Add2~17\) # (GND))) # (!\init_population_instance|i\(9) & (!\init_population_instance|Add2~17\))
-- \init_population_instance|Add2~19\ = CARRY((\init_population_instance|i\(9)) # (!\init_population_instance|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(9),
	datad => VCC,
	cin => \init_population_instance|Add2~17\,
	combout => \init_population_instance|Add2~18_combout\,
	cout => \init_population_instance|Add2~19\);

-- Location: LCCOMB_X109_Y46_N20
\init_population_instance|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add3~12_combout\ = ((\init_population_instance|Add2~18_combout\ $ (\init_population_instance|i\(6) $ (!\init_population_instance|Add3~11\)))) # (GND)
-- \init_population_instance|Add3~13\ = CARRY((\init_population_instance|Add2~18_combout\ & ((\init_population_instance|i\(6)) # (!\init_population_instance|Add3~11\))) # (!\init_population_instance|Add2~18_combout\ & (\init_population_instance|i\(6) & 
-- !\init_population_instance|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Add2~18_combout\,
	datab => \init_population_instance|i\(6),
	datad => VCC,
	cin => \init_population_instance|Add3~11\,
	combout => \init_population_instance|Add3~12_combout\,
	cout => \init_population_instance|Add3~13\);

-- Location: LCCOMB_X108_Y46_N22
\init_population_instance|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~18_combout\ = (\init_population_instance|Add3~12_combout\ & ((\init_population_instance|j\(9) & (\init_population_instance|Add4~17\ & VCC)) # (!\init_population_instance|j\(9) & (!\init_population_instance|Add4~17\)))) # 
-- (!\init_population_instance|Add3~12_combout\ & ((\init_population_instance|j\(9) & (!\init_population_instance|Add4~17\)) # (!\init_population_instance|j\(9) & ((\init_population_instance|Add4~17\) # (GND)))))
-- \init_population_instance|Add4~19\ = CARRY((\init_population_instance|Add3~12_combout\ & (!\init_population_instance|j\(9) & !\init_population_instance|Add4~17\)) # (!\init_population_instance|Add3~12_combout\ & ((!\init_population_instance|Add4~17\) # 
-- (!\init_population_instance|j\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Add3~12_combout\,
	datab => \init_population_instance|j\(9),
	datad => VCC,
	cin => \init_population_instance|Add4~17\,
	combout => \init_population_instance|Add4~18_combout\,
	cout => \init_population_instance|Add4~19\);

-- Location: LCCOMB_X107_Y46_N20
\init_population_instance|address[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[9]~31_combout\ = (\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((\init_population_instance|Add4~18_combout\ & (\init_population_instance|address[8]~30\ & VCC)) # 
-- (!\init_population_instance|Add4~18_combout\ & (!\init_population_instance|address[8]~30\)))) # (!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((\init_population_instance|Add4~18_combout\ & 
-- (!\init_population_instance|address[8]~30\)) # (!\init_population_instance|Add4~18_combout\ & ((\init_population_instance|address[8]~30\) # (GND)))))
-- \init_population_instance|address[9]~32\ = CARRY((\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\init_population_instance|Add4~18_combout\ & !\init_population_instance|address[8]~30\)) # 
-- (!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & ((!\init_population_instance|address[8]~30\) # (!\init_population_instance|Add4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datab => \init_population_instance|Add4~18_combout\,
	datad => VCC,
	cin => \init_population_instance|address[8]~30\,
	combout => \init_population_instance|address[9]~31_combout\,
	cout => \init_population_instance|address[9]~32\);

-- Location: FF_X107_Y46_N21
\init_population_instance|address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[9]~31_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(9));

-- Location: LCCOMB_X103_Y46_N10
\address[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[9]~9_combout\ = (!\sel_address~q\ & \init_population_instance|address\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_address~q\,
	datad => \init_population_instance|address\(9),
	combout => \address[9]~9_combout\);

-- Location: LCCOMB_X107_Y46_N0
\init_population_instance|Mult0|mult_core|romout[1][6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|romout[1][6]~6_combout\ = \init_population_instance|p\(6) $ (((!\init_population_instance|p\(4) & \init_population_instance|p\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(4),
	datac => \init_population_instance|p\(5),
	datad => \init_population_instance|p\(6),
	combout => \init_population_instance|Mult0|mult_core|romout[1][6]~6_combout\);

-- Location: LCCOMB_X106_Y46_N16
\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\init_population_instance|Mult0|mult_core|romout[1][6]~6_combout\ & (\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (GND))) # 
-- (!\init_population_instance|Mult0|mult_core|romout[1][6]~6_combout\ & (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & VCC))
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\init_population_instance|Mult0|mult_core|romout[1][6]~6_combout\ & !\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|Mult0|mult_core|romout[1][6]~6_combout\,
	datad => VCC,
	cin => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X106_Y46_N26
\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\init_population_instance|p\(10) $ (\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ 
-- (!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\init_population_instance|p\(10) & ((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\) # 
-- (!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\init_population_instance|p\(10) & (\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- !\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(10),
	datab => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X110_Y46_N22
\init_population_instance|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~20_combout\ = (\init_population_instance|i\(10) & (!\init_population_instance|Add2~19\ & VCC)) # (!\init_population_instance|i\(10) & (\init_population_instance|Add2~19\ $ (GND)))
-- \init_population_instance|Add2~21\ = CARRY((!\init_population_instance|i\(10) & !\init_population_instance|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(10),
	datad => VCC,
	cin => \init_population_instance|Add2~19\,
	combout => \init_population_instance|Add2~20_combout\,
	cout => \init_population_instance|Add2~21\);

-- Location: LCCOMB_X109_Y46_N22
\init_population_instance|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add3~14_combout\ = (\init_population_instance|i\(7) & ((\init_population_instance|Add2~20_combout\ & (\init_population_instance|Add3~13\ & VCC)) # (!\init_population_instance|Add2~20_combout\ & 
-- (!\init_population_instance|Add3~13\)))) # (!\init_population_instance|i\(7) & ((\init_population_instance|Add2~20_combout\ & (!\init_population_instance|Add3~13\)) # (!\init_population_instance|Add2~20_combout\ & ((\init_population_instance|Add3~13\) # 
-- (GND)))))
-- \init_population_instance|Add3~15\ = CARRY((\init_population_instance|i\(7) & (!\init_population_instance|Add2~20_combout\ & !\init_population_instance|Add3~13\)) # (!\init_population_instance|i\(7) & ((!\init_population_instance|Add3~13\) # 
-- (!\init_population_instance|Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(7),
	datab => \init_population_instance|Add2~20_combout\,
	datad => VCC,
	cin => \init_population_instance|Add3~13\,
	combout => \init_population_instance|Add3~14_combout\,
	cout => \init_population_instance|Add3~15\);

-- Location: LCCOMB_X108_Y46_N24
\init_population_instance|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~20_combout\ = ((\init_population_instance|j\(10) $ (\init_population_instance|Add3~14_combout\ $ (!\init_population_instance|Add4~19\)))) # (GND)
-- \init_population_instance|Add4~21\ = CARRY((\init_population_instance|j\(10) & ((\init_population_instance|Add3~14_combout\) # (!\init_population_instance|Add4~19\))) # (!\init_population_instance|j\(10) & (\init_population_instance|Add3~14_combout\ & 
-- !\init_population_instance|Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(10),
	datab => \init_population_instance|Add3~14_combout\,
	datad => VCC,
	cin => \init_population_instance|Add4~19\,
	combout => \init_population_instance|Add4~20_combout\,
	cout => \init_population_instance|Add4~21\);

-- Location: LCCOMB_X107_Y46_N22
\init_population_instance|address[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[10]~33_combout\ = ((\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (\init_population_instance|Add4~20_combout\ $ (!\init_population_instance|address[9]~32\)))) # 
-- (GND)
-- \init_population_instance|address[10]~34\ = CARRY((\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & ((\init_population_instance|Add4~20_combout\) # (!\init_population_instance|address[9]~32\))) # 
-- (!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (\init_population_instance|Add4~20_combout\ & !\init_population_instance|address[9]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datab => \init_population_instance|Add4~20_combout\,
	datad => VCC,
	cin => \init_population_instance|address[9]~32\,
	combout => \init_population_instance|address[10]~33_combout\,
	cout => \init_population_instance|address[10]~34\);

-- Location: FF_X107_Y46_N23
\init_population_instance|address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[10]~33_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(10));

-- Location: LCCOMB_X103_Y46_N20
\address[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[10]~10_combout\ = (!\sel_address~q\ & \init_population_instance|address\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_address~q\,
	datad => \init_population_instance|address\(10),
	combout => \address[10]~10_combout\);

-- Location: LCCOMB_X107_Y46_N28
\init_population_instance|Mult0|mult_core|romout[1][7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|romout[1][7]~7_combout\ = \init_population_instance|p\(7) $ (((\init_population_instance|p\(6) & (!\init_population_instance|p\(5))) # (!\init_population_instance|p\(6) & (\init_population_instance|p\(5) & 
-- \init_population_instance|p\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(6),
	datab => \init_population_instance|p\(5),
	datac => \init_population_instance|p\(4),
	datad => \init_population_instance|p\(7),
	combout => \init_population_instance|Mult0|mult_core|romout[1][7]~7_combout\);

-- Location: LCCOMB_X106_Y46_N18
\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\init_population_instance|Mult0|mult_core|romout[1][7]~7_combout\ & (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\init_population_instance|Mult0|mult_core|romout[1][7]~7_combout\ & ((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\init_population_instance|Mult0|mult_core|romout[1][7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|Mult0|mult_core|romout[1][7]~7_combout\,
	datad => VCC,
	cin => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X106_Y46_N28
\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\init_population_instance|p\(11) & ((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- (\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- (!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # (!\init_population_instance|p\(11) & ((\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- (!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- ((\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\init_population_instance|p\(11) & (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- !\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\init_population_instance|p\(11) & ((!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(11),
	datab => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X110_Y46_N24
\init_population_instance|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~22_combout\ = (\init_population_instance|i\(11) & ((\init_population_instance|Add2~21\) # (GND))) # (!\init_population_instance|i\(11) & (!\init_population_instance|Add2~21\))
-- \init_population_instance|Add2~23\ = CARRY((\init_population_instance|i\(11)) # (!\init_population_instance|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|i\(11),
	datad => VCC,
	cin => \init_population_instance|Add2~21\,
	combout => \init_population_instance|Add2~22_combout\,
	cout => \init_population_instance|Add2~23\);

-- Location: LCCOMB_X109_Y46_N24
\init_population_instance|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add3~16_combout\ = ((\init_population_instance|i\(8) $ (\init_population_instance|Add2~22_combout\ $ (!\init_population_instance|Add3~15\)))) # (GND)
-- \init_population_instance|Add3~17\ = CARRY((\init_population_instance|i\(8) & ((\init_population_instance|Add2~22_combout\) # (!\init_population_instance|Add3~15\))) # (!\init_population_instance|i\(8) & (\init_population_instance|Add2~22_combout\ & 
-- !\init_population_instance|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(8),
	datab => \init_population_instance|Add2~22_combout\,
	datad => VCC,
	cin => \init_population_instance|Add3~15\,
	combout => \init_population_instance|Add3~16_combout\,
	cout => \init_population_instance|Add3~17\);

-- Location: LCCOMB_X108_Y46_N26
\init_population_instance|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~22_combout\ = (\init_population_instance|j\(11) & ((\init_population_instance|Add3~16_combout\ & (\init_population_instance|Add4~21\ & VCC)) # (!\init_population_instance|Add3~16_combout\ & 
-- (!\init_population_instance|Add4~21\)))) # (!\init_population_instance|j\(11) & ((\init_population_instance|Add3~16_combout\ & (!\init_population_instance|Add4~21\)) # (!\init_population_instance|Add3~16_combout\ & ((\init_population_instance|Add4~21\) # 
-- (GND)))))
-- \init_population_instance|Add4~23\ = CARRY((\init_population_instance|j\(11) & (!\init_population_instance|Add3~16_combout\ & !\init_population_instance|Add4~21\)) # (!\init_population_instance|j\(11) & ((!\init_population_instance|Add4~21\) # 
-- (!\init_population_instance|Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|j\(11),
	datab => \init_population_instance|Add3~16_combout\,
	datad => VCC,
	cin => \init_population_instance|Add4~21\,
	combout => \init_population_instance|Add4~22_combout\,
	cout => \init_population_instance|Add4~23\);

-- Location: LCCOMB_X107_Y46_N24
\init_population_instance|address[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[11]~35_combout\ = (\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & ((\init_population_instance|Add4~22_combout\ & (\init_population_instance|address[10]~34\ & VCC)) # 
-- (!\init_population_instance|Add4~22_combout\ & (!\init_population_instance|address[10]~34\)))) # (!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & ((\init_population_instance|Add4~22_combout\ & 
-- (!\init_population_instance|address[10]~34\)) # (!\init_population_instance|Add4~22_combout\ & ((\init_population_instance|address[10]~34\) # (GND)))))
-- \init_population_instance|address[11]~36\ = CARRY((\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\init_population_instance|Add4~22_combout\ & !\init_population_instance|address[10]~34\)) # 
-- (!\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & ((!\init_population_instance|address[10]~34\) # (!\init_population_instance|Add4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datab => \init_population_instance|Add4~22_combout\,
	datad => VCC,
	cin => \init_population_instance|address[10]~34\,
	combout => \init_population_instance|address[11]~35_combout\,
	cout => \init_population_instance|address[11]~36\);

-- Location: FF_X107_Y46_N25
\init_population_instance|address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[11]~35_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(11));

-- Location: LCCOMB_X103_Y46_N22
\address[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[11]~11_combout\ = (!\sel_address~q\ & \init_population_instance|address\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_address~q\,
	datac => \init_population_instance|address\(11),
	combout => \address[11]~11_combout\);

-- Location: LCCOMB_X106_Y45_N18
\init_population_instance|Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ = \init_population_instance|p\(12) $ (\init_population_instance|p\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|p\(12),
	datad => \init_population_instance|p\(8),
	combout => \init_population_instance|Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X105_Y46_N24
\init_population_instance|Mult0|mult_core|romout[1][8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|romout[1][8]~8_combout\ = (\init_population_instance|p\(6) & (\init_population_instance|p\(5) & ((!\init_population_instance|p\(7))))) # (!\init_population_instance|p\(6) & (\init_population_instance|p\(7) & 
-- ((!\init_population_instance|p\(4)) # (!\init_population_instance|p\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|p\(5),
	datab => \init_population_instance|p\(4),
	datac => \init_population_instance|p\(6),
	datad => \init_population_instance|p\(7),
	combout => \init_population_instance|Mult0|mult_core|romout[1][8]~8_combout\);

-- Location: LCCOMB_X106_Y46_N20
\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (!\init_population_instance|Mult0|mult_core|romout[1][8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \init_population_instance|Mult0|mult_core|romout[1][8]~8_combout\,
	cin => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X106_Y46_N30
\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = \init_population_instance|Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ $ 
-- (\init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ $ (!\init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	datad => \init_population_instance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cin => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X110_Y46_N26
\init_population_instance|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add2~24_combout\ = \init_population_instance|Add2~23\ $ (\init_population_instance|i\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \init_population_instance|i\(12),
	cin => \init_population_instance|Add2~23\,
	combout => \init_population_instance|Add2~24_combout\);

-- Location: LCCOMB_X109_Y46_N26
\init_population_instance|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add3~18_combout\ = \init_population_instance|i\(9) $ (\init_population_instance|Add3~17\ $ (\init_population_instance|Add2~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \init_population_instance|i\(9),
	datad => \init_population_instance|Add2~24_combout\,
	cin => \init_population_instance|Add3~17\,
	combout => \init_population_instance|Add3~18_combout\);

-- Location: LCCOMB_X108_Y46_N28
\init_population_instance|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|Add4~24_combout\ = \init_population_instance|j\(12) $ (\init_population_instance|Add4~23\ $ (!\init_population_instance|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|j\(12),
	datad => \init_population_instance|Add3~18_combout\,
	cin => \init_population_instance|Add4~23\,
	combout => \init_population_instance|Add4~24_combout\);

-- Location: LCCOMB_X107_Y46_N26
\init_population_instance|address[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|address[12]~37_combout\ = \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ $ (\init_population_instance|address[11]~36\ $ (!\init_population_instance|Add4~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \init_population_instance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => \init_population_instance|Add4~24_combout\,
	cin => \init_population_instance|address[11]~36\,
	combout => \init_population_instance|address[12]~37_combout\);

-- Location: FF_X107_Y46_N27
\init_population_instance|address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|address[12]~37_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|address\(12));

-- Location: LCCOMB_X103_Y46_N4
\address[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[12]~12_combout\ = (!\sel_address~q\ & \init_population_instance|address\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_address~q\,
	datad => \init_population_instance|address\(12),
	combout => \address[12]~12_combout\);

-- Location: M9K_X104_Y47_N0
\ram_instance|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sync_ram:ram_instance|altsyncram:ram_rtl_0|altsyncram_ug41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \init_population_instance|we~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \ram_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_instance|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X105_Y50_N12
\print_data_instance|bcd_i[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \print_data_instance|bcd_i[3]~2_combout\ = !\ram_instance|ram_rtl_0|auto_generated|ram_block1a3~portadataout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_instance|ram_rtl_0|auto_generated|ram_block1a3~portadataout\,
	combout => \print_data_instance|bcd_i[3]~2_combout\);

-- Location: LCCOMB_X105_Y46_N2
\init_print~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_print~0_combout\ = (\init_print~q\) # (\state.s_print~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \init_print~q\,
	datad => \state.s_print~q\,
	combout => \init_print~0_combout\);

-- Location: FF_X105_Y46_N3
init_print : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_print~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_print~q\);

-- Location: LCCOMB_X105_Y46_N12
\print_data_instance|state.s_idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print_data_instance|state.s_idle~0_combout\ = (\print_data_instance|state.s_idle~q\) # (\init_print~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \print_data_instance|state.s_idle~q\,
	datad => \init_print~q\,
	combout => \print_data_instance|state.s_idle~0_combout\);

-- Location: FF_X105_Y46_N13
\print_data_instance|state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \print_data_instance|state.s_idle~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \print_data_instance|state.s_idle~q\);

-- Location: LCCOMB_X105_Y46_N4
\print_data_instance|state.s_write~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \print_data_instance|state.s_write~feeder_combout\ = \print_data_instance|state.s_idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \print_data_instance|state.s_idle~q\,
	combout => \print_data_instance|state.s_write~feeder_combout\);

-- Location: FF_X105_Y46_N5
\print_data_instance|state.s_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \print_data_instance|state.s_write~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \print_data_instance|state.s_write~q\);

-- Location: FF_X105_Y50_N13
\print_data_instance|bcd_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \print_data_instance|bcd_i[3]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \print_data_instance|state.s_write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \print_data_instance|bcd_i\(3));

-- Location: LCCOMB_X109_Y46_N6
\init_population_instance|datain[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|datain[2]~feeder_combout\ = \init_population_instance|i\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init_population_instance|i\(2),
	combout => \init_population_instance|datain[2]~feeder_combout\);

-- Location: FF_X109_Y46_N7
\init_population_instance|datain[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|datain[2]~feeder_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|datain\(2));

-- Location: M9K_X104_Y48_N0
\ram_instance|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sync_ram:ram_instance|altsyncram:ram_rtl_0|altsyncram_ug41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \init_population_instance|we~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \ram_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_instance|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X105_Y50_N18
\print_data_instance|bcd_i[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \print_data_instance|bcd_i[2]~1_combout\ = !\ram_instance|ram_rtl_0|auto_generated|ram_block1a2~portadataout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_instance|ram_rtl_0|auto_generated|ram_block1a2~portadataout\,
	combout => \print_data_instance|bcd_i[2]~1_combout\);

-- Location: FF_X105_Y50_N19
\print_data_instance|bcd_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \print_data_instance|bcd_i[2]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \print_data_instance|state.s_write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \print_data_instance|bcd_i\(2));

-- Location: LCCOMB_X108_Y46_N0
\init_population_instance|datain[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_population_instance|datain[0]~feeder_combout\ = \init_population_instance|i\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \init_population_instance|i\(0),
	combout => \init_population_instance|datain[0]~feeder_combout\);

-- Location: FF_X108_Y46_N1
\init_population_instance|datain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \init_population_instance|datain[0]~feeder_combout\,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|datain\(0));

-- Location: M9K_X104_Y46_N0
\ram_instance|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sync_ram:ram_instance|altsyncram:ram_rtl_0|altsyncram_ug41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \init_population_instance|we~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_instance|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X105_Y50_N26
\print_data_instance|bcd_i[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \print_data_instance|bcd_i[0]~feeder_combout\ = \ram_instance|ram_rtl_0|auto_generated|ram_block1a0~portadataout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_instance|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \print_data_instance|bcd_i[0]~feeder_combout\);

-- Location: FF_X105_Y50_N27
\print_data_instance|bcd_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \print_data_instance|bcd_i[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \print_data_instance|state.s_write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \print_data_instance|bcd_i\(0));

-- Location: FF_X109_Y46_N5
\init_population_instance|datain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \init_population_instance|i\(1),
	sload => VCC,
	ena => \init_population_instance|datain[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_population_instance|datain\(1));

-- Location: M9K_X104_Y45_N0
\ram_instance|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sync_ram:ram_instance|altsyncram:ram_rtl_0|altsyncram_ug41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \init_population_instance|we~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \ram_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram_instance|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X105_Y50_N8
\print_data_instance|bcd_i[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \print_data_instance|bcd_i[1]~0_combout\ = !\ram_instance|ram_rtl_0|auto_generated|ram_block1a1~portadataout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_instance|ram_rtl_0|auto_generated|ram_block1a1~portadataout\,
	combout => \print_data_instance|bcd_i[1]~0_combout\);

-- Location: FF_X105_Y50_N9
\print_data_instance|bcd_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \print_data_instance|bcd_i[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \print_data_instance|state.s_write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \print_data_instance|bcd_i\(1));

-- Location: LCCOMB_X105_Y50_N28
\bcd_seven_instance|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_seven_instance|Mux6~0_combout\ = (\print_data_instance|bcd_i\(2) & (\print_data_instance|bcd_i\(3) & ((\print_data_instance|bcd_i\(1))))) # (!\print_data_instance|bcd_i\(2) & ((\print_data_instance|bcd_i\(0) & ((!\print_data_instance|bcd_i\(1)))) # 
-- (!\print_data_instance|bcd_i\(0) & (!\print_data_instance|bcd_i\(3) & \print_data_instance|bcd_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \print_data_instance|bcd_i\(3),
	datab => \print_data_instance|bcd_i\(2),
	datac => \print_data_instance|bcd_i\(0),
	datad => \print_data_instance|bcd_i\(1),
	combout => \bcd_seven_instance|Mux6~0_combout\);

-- Location: FF_X105_Y50_N29
\bcd_seven_instance|seven_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bcd_seven_instance|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_seven_instance|seven_o\(0));

-- Location: LCCOMB_X105_Y50_N30
\bcd_seven_instance|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_seven_instance|Mux5~0_combout\ = (\print_data_instance|bcd_i\(0) & (\print_data_instance|bcd_i\(3) $ (((!\print_data_instance|bcd_i\(2) & \print_data_instance|bcd_i\(1)))))) # (!\print_data_instance|bcd_i\(0) & (((\print_data_instance|bcd_i\(2) & 
-- !\print_data_instance|bcd_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \print_data_instance|bcd_i\(3),
	datab => \print_data_instance|bcd_i\(2),
	datac => \print_data_instance|bcd_i\(0),
	datad => \print_data_instance|bcd_i\(1),
	combout => \bcd_seven_instance|Mux5~0_combout\);

-- Location: FF_X105_Y50_N31
\bcd_seven_instance|seven_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bcd_seven_instance|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_seven_instance|seven_o\(1));

-- Location: LCCOMB_X105_Y50_N0
\bcd_seven_instance|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_seven_instance|Mux4~0_combout\ = (\print_data_instance|bcd_i\(1) & ((\print_data_instance|bcd_i\(2) & ((\print_data_instance|bcd_i\(0)))) # (!\print_data_instance|bcd_i\(2) & (\print_data_instance|bcd_i\(3))))) # (!\print_data_instance|bcd_i\(1) & 
-- (\print_data_instance|bcd_i\(3) & ((\print_data_instance|bcd_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \print_data_instance|bcd_i\(3),
	datab => \print_data_instance|bcd_i\(2),
	datac => \print_data_instance|bcd_i\(0),
	datad => \print_data_instance|bcd_i\(1),
	combout => \bcd_seven_instance|Mux4~0_combout\);

-- Location: FF_X105_Y50_N1
\bcd_seven_instance|seven_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bcd_seven_instance|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_seven_instance|seven_o\(2));

-- Location: LCCOMB_X105_Y50_N2
\bcd_seven_instance|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_seven_instance|Mux3~0_combout\ = (\print_data_instance|bcd_i\(3) & ((\print_data_instance|bcd_i\(2) & (\print_data_instance|bcd_i\(0) & \print_data_instance|bcd_i\(1))) # (!\print_data_instance|bcd_i\(2) & (\print_data_instance|bcd_i\(0) $ 
-- (\print_data_instance|bcd_i\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \print_data_instance|bcd_i\(3),
	datab => \print_data_instance|bcd_i\(2),
	datac => \print_data_instance|bcd_i\(0),
	datad => \print_data_instance|bcd_i\(1),
	combout => \bcd_seven_instance|Mux3~0_combout\);

-- Location: FF_X105_Y50_N3
\bcd_seven_instance|seven_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bcd_seven_instance|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_seven_instance|seven_o\(3));

-- Location: LCCOMB_X105_Y50_N24
\bcd_seven_instance|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_seven_instance|Mux2~0_combout\ = (!\print_data_instance|bcd_i\(0) & ((\print_data_instance|bcd_i\(3) & (\print_data_instance|bcd_i\(2) & !\print_data_instance|bcd_i\(1))) # (!\print_data_instance|bcd_i\(3) & (!\print_data_instance|bcd_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \print_data_instance|bcd_i\(3),
	datab => \print_data_instance|bcd_i\(2),
	datac => \print_data_instance|bcd_i\(0),
	datad => \print_data_instance|bcd_i\(1),
	combout => \bcd_seven_instance|Mux2~0_combout\);

-- Location: FF_X105_Y50_N25
\bcd_seven_instance|seven_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bcd_seven_instance|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_seven_instance|seven_o\(4));

-- Location: LCCOMB_X105_Y50_N22
\bcd_seven_instance|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_seven_instance|Mux1~0_combout\ = (\print_data_instance|bcd_i\(2) & (!\print_data_instance|bcd_i\(3) & (\print_data_instance|bcd_i\(0) & !\print_data_instance|bcd_i\(1)))) # (!\print_data_instance|bcd_i\(2) & (\print_data_instance|bcd_i\(0) $ 
-- (((!\print_data_instance|bcd_i\(1)) # (!\print_data_instance|bcd_i\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \print_data_instance|bcd_i\(3),
	datab => \print_data_instance|bcd_i\(2),
	datac => \print_data_instance|bcd_i\(0),
	datad => \print_data_instance|bcd_i\(1),
	combout => \bcd_seven_instance|Mux1~0_combout\);

-- Location: FF_X105_Y50_N23
\bcd_seven_instance|seven_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bcd_seven_instance|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_seven_instance|seven_o\(5));

-- Location: LCCOMB_X105_Y50_N16
\bcd_seven_instance|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_seven_instance|Mux0~0_combout\ = (\print_data_instance|bcd_i\(3) & (\print_data_instance|bcd_i\(1) & (\print_data_instance|bcd_i\(2) $ (!\print_data_instance|bcd_i\(0))))) # (!\print_data_instance|bcd_i\(3) & (\print_data_instance|bcd_i\(0) & 
-- (\print_data_instance|bcd_i\(2) $ (\print_data_instance|bcd_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \print_data_instance|bcd_i\(3),
	datab => \print_data_instance|bcd_i\(2),
	datac => \print_data_instance|bcd_i\(0),
	datad => \print_data_instance|bcd_i\(1),
	combout => \bcd_seven_instance|Mux0~0_combout\);

-- Location: FF_X105_Y50_N17
\bcd_seven_instance|seven_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bcd_seven_instance|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_seven_instance|seven_o\(6));

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;
END structure;


