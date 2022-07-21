-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/03/2022 12:34:27"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	datapath IS
    PORT (
	op_code : OUT std_logic_vector(3 DOWNTO 0);
	condition : OUT std_logic_vector(1 DOWNTO 0);
	clock : IN std_logic;
	reset : IN std_logic;
	RX : IN std_logic;
	start : IN std_logic;
	finish : OUT std_logic;
	T : IN std_logic_vector(29 DOWNTO 0);
	S : OUT std_logic_vector(5 DOWNTO 0);
	P0 : OUT std_logic_vector(15 DOWNTO 0)
	);
END datapath;

-- Design Ports Information


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_op_code : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_condition : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_RX : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_finish : std_logic;
SIGNAL ww_T : std_logic_vector(29 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_P0 : std_logic_vector(15 DOWNTO 0);
SIGNAL \memory1|RAM~98_regout\ : std_logic;
SIGNAL \memory1|RAM~114_regout\ : std_logic;
SIGNAL \memory1|RAM~50_regout\ : std_logic;
SIGNAL \memory1|RAM~66_regout\ : std_logic;
SIGNAL \memory1|RAM~115_regout\ : std_logic;
SIGNAL \memory1|RAM~67_regout\ : std_logic;
SIGNAL \memory1|RAM~51_regout\ : std_logic;
SIGNAL \memory1|RAM~100_regout\ : std_logic;
SIGNAL \memory1|RAM~116_regout\ : std_logic;
SIGNAL \memory1|RAM~36_regout\ : std_logic;
SIGNAL \memory1|RAM~84_regout\ : std_logic;
SIGNAL \memory1|RAM~117_regout\ : std_logic;
SIGNAL \memory1|RAM~69_regout\ : std_logic;
SIGNAL \memory1|RAM~53_regout\ : std_logic;
SIGNAL \memory1|RAM~438_regout\ : std_logic;
SIGNAL \memory1|RAM~374_regout\ : std_logic;
SIGNAL \memory1|RAM~358_regout\ : std_logic;
SIGNAL \memory1|RAM~422_regout\ : std_logic;
SIGNAL \memory1|RAM~406_regout\ : std_logic;
SIGNAL \memory1|RAM~342_regout\ : std_logic;
SIGNAL \memory1|RAM~390_regout\ : std_logic;
SIGNAL \memory1|RAM~454_regout\ : std_logic;
SIGNAL \memory1|RAM~166_regout\ : std_logic;
SIGNAL \memory1|RAM~182_regout\ : std_logic;
SIGNAL \memory1|RAM~86_regout\ : std_logic;
SIGNAL \memory1|RAM~70_regout\ : std_logic;
SIGNAL \memory1|RAM~246_regout\ : std_logic;
SIGNAL \memory1|RAM~230_regout\ : std_logic;
SIGNAL \memory1|RAM~423_regout\ : std_logic;
SIGNAL \memory1|RAM~359_regout\ : std_logic;
SIGNAL \memory1|RAM~375_regout\ : std_logic;
SIGNAL \memory1|RAM~439_regout\ : std_logic;
SIGNAL \memory1|RAM~343_regout\ : std_logic;
SIGNAL \memory1|RAM~407_regout\ : std_logic;
SIGNAL \memory1|RAM~455_regout\ : std_logic;
SIGNAL \memory1|RAM~391_regout\ : std_logic;
SIGNAL \memory1|RAM~103_regout\ : std_logic;
SIGNAL \memory1|RAM~183_regout\ : std_logic;
SIGNAL \memory1|RAM~167_regout\ : std_logic;
SIGNAL \memory1|RAM~39_regout\ : std_logic;
SIGNAL \memory1|RAM~231_regout\ : std_logic;
SIGNAL \memory1|RAM~247_regout\ : std_logic;
SIGNAL \memory1|RAM~440_regout\ : std_logic;
SIGNAL \memory1|RAM~376_regout\ : std_logic;
SIGNAL \memory1|RAM~360_regout\ : std_logic;
SIGNAL \memory1|RAM~424_regout\ : std_logic;
SIGNAL \memory1|RAM~408_regout\ : std_logic;
SIGNAL \memory1|RAM~344_regout\ : std_logic;
SIGNAL \memory1|RAM~392_regout\ : std_logic;
SIGNAL \memory1|RAM~456_regout\ : std_logic;
SIGNAL \memory1|RAM~168_regout\ : std_logic;
SIGNAL \memory1|RAM~184_regout\ : std_logic;
SIGNAL \memory1|RAM~88_regout\ : std_logic;
SIGNAL \memory1|RAM~104_regout\ : std_logic;
SIGNAL \memory1|RAM~72_regout\ : std_logic;
SIGNAL \memory1|RAM~248_regout\ : std_logic;
SIGNAL \memory1|RAM~232_regout\ : std_logic;
SIGNAL \memory1|RAM~425_regout\ : std_logic;
SIGNAL \memory1|RAM~361_regout\ : std_logic;
SIGNAL \memory1|RAM~377_regout\ : std_logic;
SIGNAL \memory1|RAM~441_regout\ : std_logic;
SIGNAL \memory1|RAM~345_regout\ : std_logic;
SIGNAL \memory1|RAM~409_regout\ : std_logic;
SIGNAL \memory1|RAM~457_regout\ : std_logic;
SIGNAL \memory1|RAM~393_regout\ : std_logic;
SIGNAL \memory1|RAM~105_regout\ : std_logic;
SIGNAL \memory1|RAM~185_regout\ : std_logic;
SIGNAL \memory1|RAM~169_regout\ : std_logic;
SIGNAL \memory1|RAM~57_regout\ : std_logic;
SIGNAL \memory1|RAM~41_regout\ : std_logic;
SIGNAL \memory1|RAM~233_regout\ : std_logic;
SIGNAL \memory1|RAM~249_regout\ : std_logic;
SIGNAL \memory1|RAM~442_regout\ : std_logic;
SIGNAL \memory1|RAM~378_regout\ : std_logic;
SIGNAL \memory1|RAM~362_regout\ : std_logic;
SIGNAL \memory1|RAM~426_regout\ : std_logic;
SIGNAL \memory1|RAM~410_regout\ : std_logic;
SIGNAL \memory1|RAM~346_regout\ : std_logic;
SIGNAL \memory1|RAM~394_regout\ : std_logic;
SIGNAL \memory1|RAM~458_regout\ : std_logic;
SIGNAL \memory1|RAM~170_regout\ : std_logic;
SIGNAL \memory1|RAM~186_regout\ : std_logic;
SIGNAL \memory1|RAM~90_regout\ : std_logic;
SIGNAL \memory1|RAM~106_regout\ : std_logic;
SIGNAL \memory1|RAM~42_regout\ : std_logic;
SIGNAL \memory1|RAM~58_regout\ : std_logic;
SIGNAL \memory1|RAM~250_regout\ : std_logic;
SIGNAL \memory1|RAM~234_regout\ : std_logic;
SIGNAL \memory1|RAM~443_regout\ : std_logic;
SIGNAL \memory1|RAM~379_regout\ : std_logic;
SIGNAL \memory1|RAM~363_regout\ : std_logic;
SIGNAL \memory1|RAM~427_regout\ : std_logic;
SIGNAL \memory1|RAM~411_regout\ : std_logic;
SIGNAL \memory1|RAM~347_regout\ : std_logic;
SIGNAL \memory1|RAM~395_regout\ : std_logic;
SIGNAL \memory1|RAM~459_regout\ : std_logic;
SIGNAL \memory1|RAM~171_regout\ : std_logic;
SIGNAL \memory1|RAM~187_regout\ : std_logic;
SIGNAL \memory1|RAM~107_regout\ : std_logic;
SIGNAL \memory1|RAM~43_regout\ : std_logic;
SIGNAL \memory1|RAM~59_regout\ : std_logic;
SIGNAL \memory1|RAM~251_regout\ : std_logic;
SIGNAL \memory1|RAM~235_regout\ : std_logic;
SIGNAL \memory1|RAM~446_regout\ : std_logic;
SIGNAL \memory1|RAM~382_regout\ : std_logic;
SIGNAL \memory1|RAM~366_regout\ : std_logic;
SIGNAL \memory1|RAM~430_regout\ : std_logic;
SIGNAL \memory1|RAM~414_regout\ : std_logic;
SIGNAL \memory1|RAM~350_regout\ : std_logic;
SIGNAL \memory1|RAM~398_regout\ : std_logic;
SIGNAL \memory1|RAM~462_regout\ : std_logic;
SIGNAL \memory1|RAM~174_regout\ : std_logic;
SIGNAL \memory1|RAM~190_regout\ : std_logic;
SIGNAL \memory1|RAM~94_regout\ : std_logic;
SIGNAL \memory1|RAM~110_regout\ : std_logic;
SIGNAL \memory1|RAM~46_regout\ : std_logic;
SIGNAL \memory1|RAM~62_regout\ : std_logic;
SIGNAL \memory1|RAM~254_regout\ : std_logic;
SIGNAL \memory1|RAM~238_regout\ : std_logic;
SIGNAL \memory1|RAM~429_regout\ : std_logic;
SIGNAL \memory1|RAM~365_regout\ : std_logic;
SIGNAL \memory1|RAM~381_regout\ : std_logic;
SIGNAL \memory1|RAM~445_regout\ : std_logic;
SIGNAL \memory1|RAM~349_regout\ : std_logic;
SIGNAL \memory1|RAM~413_regout\ : std_logic;
SIGNAL \memory1|RAM~461_regout\ : std_logic;
SIGNAL \memory1|RAM~397_regout\ : std_logic;
SIGNAL \memory1|RAM~109_regout\ : std_logic;
SIGNAL \memory1|RAM~189_regout\ : std_logic;
SIGNAL \memory1|RAM~173_regout\ : std_logic;
SIGNAL \memory1|RAM~61_regout\ : std_logic;
SIGNAL \memory1|RAM~45_regout\ : std_logic;
SIGNAL \memory1|RAM~237_regout\ : std_logic;
SIGNAL \memory1|RAM~253_regout\ : std_logic;
SIGNAL \memory1|RAM~428_regout\ : std_logic;
SIGNAL \memory1|RAM~364_regout\ : std_logic;
SIGNAL \memory1|RAM~380_regout\ : std_logic;
SIGNAL \memory1|RAM~444_regout\ : std_logic;
SIGNAL \memory1|RAM~348_regout\ : std_logic;
SIGNAL \memory1|RAM~412_regout\ : std_logic;
SIGNAL \memory1|RAM~460_regout\ : std_logic;
SIGNAL \memory1|RAM~396_regout\ : std_logic;
SIGNAL \memory1|RAM~108_regout\ : std_logic;
SIGNAL \memory1|RAM~188_regout\ : std_logic;
SIGNAL \memory1|RAM~172_regout\ : std_logic;
SIGNAL \memory1|RAM~60_regout\ : std_logic;
SIGNAL \memory1|RAM~44_regout\ : std_logic;
SIGNAL \memory1|RAM~236_regout\ : std_logic;
SIGNAL \memory1|RAM~252_regout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \mux8_2|Mux14~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux9~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \PC|q[9]~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux9~1_combout\ : std_logic;
SIGNAL \mux8_1|Mux9~2_combout\ : std_logic;
SIGNAL \mux8_1|Mux14~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux14\ : std_logic;
SIGNAL \mux8_1|Mux15~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux15\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:1:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|add1|ist_add:1:F1|cout~0_combout\ : std_logic;
SIGNAL \alu1|Mux13~0_combout\ : std_logic;
SIGNAL \mux8|Y[2]~6\ : std_logic;
SIGNAL \memory1|RAM~690_combout\ : std_logic;
SIGNAL \memory1|RAM~707_combout\ : std_logic;
SIGNAL \memory1|RAM~264_regout\ : std_logic;
SIGNAL \memory1|RAM~682_combout\ : std_logic;
SIGNAL \memory1|RAM~706_combout\ : std_logic;
SIGNAL \memory1|RAM~216_regout\ : std_logic;
SIGNAL \memory1|RAM~666_combout\ : std_logic;
SIGNAL \memory1|RAM~705_combout\ : std_logic;
SIGNAL \memory1|RAM~725\ : std_logic;
SIGNAL \memory1|RAM~674_combout\ : std_logic;
SIGNAL \memory1|RAM~704_combout\ : std_logic;
SIGNAL \memory1|RAM~726\ : std_logic;
SIGNAL \memory1|RAM~684_combout\ : std_logic;
SIGNAL \memory1|RAM~695_combout\ : std_logic;
SIGNAL \memory1|RAM~200_regout\ : std_logic;
SIGNAL \memory1|RAM~678_combout\ : std_logic;
SIGNAL \memory1|RAM~694_combout\ : std_logic;
SIGNAL \memory1|RAM~152_regout\ : std_logic;
SIGNAL \memory1|RAM~668_combout\ : std_logic;
SIGNAL \memory1|RAM~693_combout\ : std_logic;
SIGNAL \memory1|RAM~718\ : std_logic;
SIGNAL \memory1|RAM~662_combout\ : std_logic;
SIGNAL \memory1|RAM~692_combout\ : std_logic;
SIGNAL \memory1|RAM~719\ : std_logic;
SIGNAL \memory1|RAM~700_combout\ : std_logic;
SIGNAL \memory1|RAM~56_regout\ : std_logic;
SIGNAL \memory1|RAM~701_combout\ : std_logic;
SIGNAL \memory1|RAM~40_regout\ : std_logic;
SIGNAL \memory1|RAM~680_combout\ : std_logic;
SIGNAL \memory1|RAM~702_combout\ : std_logic;
SIGNAL \memory1|RAM~24_regout\ : std_logic;
SIGNAL \memory1|RAM~722_combout\ : std_logic;
SIGNAL \memory1|RAM~688_combout\ : std_logic;
SIGNAL \memory1|RAM~703_combout\ : std_logic;
SIGNAL \memory1|RAM~723\ : std_logic;
SIGNAL \memory1|RAM~686_combout\ : std_logic;
SIGNAL \memory1|RAM~699_combout\ : std_logic;
SIGNAL \memory1|RAM~136_regout\ : std_logic;
SIGNAL \memory1|RAM~660_combout\ : std_logic;
SIGNAL \memory1|RAM~697_combout\ : std_logic;
SIGNAL \memory1|RAM~120_regout\ : std_logic;
SIGNAL \memory1|RAM~676_combout\ : std_logic;
SIGNAL \memory1|RAM~698_combout\ : std_logic;
SIGNAL \memory1|RAM~720\ : std_logic;
SIGNAL \memory1|RAM~670_combout\ : std_logic;
SIGNAL \memory1|RAM~696_combout\ : std_logic;
SIGNAL \memory1|RAM~721\ : std_logic;
SIGNAL \memory1|RAM~724_combout\ : std_logic;
SIGNAL \memory1|RAM~727_combout\ : std_logic;
SIGNAL \memory1|RAM~691_combout\ : std_logic;
SIGNAL \memory1|RAM~520_regout\ : std_logic;
SIGNAL \memory1|RAM~689_combout\ : std_logic;
SIGNAL \memory1|RAM~328_regout\ : std_logic;
SIGNAL \memory1|RAM~687_combout\ : std_logic;
SIGNAL \memory1|RAM~715\ : std_logic;
SIGNAL \memory1|RAM~685_combout\ : std_logic;
SIGNAL \memory1|RAM~716\ : std_logic;
SIGNAL \memory1|RAM~667_combout\ : std_logic;
SIGNAL \memory1|RAM~504_regout\ : std_logic;
SIGNAL \memory1|RAM~312_regout\ : std_logic;
SIGNAL \memory1|RAM~663_combout\ : std_logic;
SIGNAL \memory1|RAM~708\ : std_logic;
SIGNAL \memory1|RAM~661_combout\ : std_logic;
SIGNAL \memory1|RAM~709\ : std_logic;
SIGNAL \memory1|RAM~675_combout\ : std_logic;
SIGNAL \memory1|RAM~488_regout\ : std_logic;
SIGNAL \memory1|RAM~296_regout\ : std_logic;
SIGNAL \memory1|RAM~671_combout\ : std_logic;
SIGNAL \memory1|RAM~710\ : std_logic;
SIGNAL \memory1|RAM~669_combout\ : std_logic;
SIGNAL \memory1|RAM~711\ : std_logic;
SIGNAL \memory1|RAM~683_combout\ : std_logic;
SIGNAL \memory1|RAM~472_regout\ : std_logic;
SIGNAL \memory1|RAM~681_combout\ : std_logic;
SIGNAL \memory1|RAM~280_regout\ : std_logic;
SIGNAL \memory1|RAM~679_combout\ : std_logic;
SIGNAL \memory1|RAM~712\ : std_logic;
SIGNAL \memory1|RAM~677_combout\ : std_logic;
SIGNAL \memory1|RAM~713\ : std_logic;
SIGNAL \memory1|RAM~714_combout\ : std_logic;
SIGNAL \memory1|RAM~717_combout\ : std_logic;
SIGNAL \memory1|RAM~728_combout\ : std_logic;
SIGNAL \mux8_2|Mux13~0\ : std_logic;
SIGNAL \mux8_1|Mux13~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux13\ : std_logic;
SIGNAL \alu1|Mux13~1_combout\ : std_logic;
SIGNAL \mux4_1|Mux13~0\ : std_logic;
SIGNAL \mux4_1|Mux13~1_combout\ : std_logic;
SIGNAL \memory1|RAM~672_combout\ : std_logic;
SIGNAL \memory1|RAM~673_combout\ : std_logic;
SIGNAL \mux8|Y[3]~7\ : std_logic;
SIGNAL \memory1|RAM~489_regout\ : std_logic;
SIGNAL \memory1|RAM~297_regout\ : std_logic;
SIGNAL \memory1|RAM~729\ : std_logic;
SIGNAL \memory1|RAM~730\ : std_logic;
SIGNAL \memory1|RAM~521_regout\ : std_logic;
SIGNAL \memory1|RAM~329_regout\ : std_logic;
SIGNAL \memory1|RAM~736\ : std_logic;
SIGNAL \memory1|RAM~737\ : std_logic;
SIGNAL \memory1|RAM~505_regout\ : std_logic;
SIGNAL \memory1|RAM~313_regout\ : std_logic;
SIGNAL \memory1|RAM~731\ : std_logic;
SIGNAL \memory1|RAM~732\ : std_logic;
SIGNAL \memory1|RAM~473_regout\ : std_logic;
SIGNAL \memory1|RAM~281_regout\ : std_logic;
SIGNAL \memory1|RAM~733\ : std_logic;
SIGNAL \memory1|RAM~734\ : std_logic;
SIGNAL \memory1|RAM~735_combout\ : std_logic;
SIGNAL \memory1|RAM~738_combout\ : std_logic;
SIGNAL \memory1|RAM~121_regout\ : std_logic;
SIGNAL \memory1|RAM~137_regout\ : std_logic;
SIGNAL \memory1|RAM~89_regout\ : std_logic;
SIGNAL \memory1|RAM~739\ : std_logic;
SIGNAL \memory1|RAM~740_combout\ : std_logic;
SIGNAL \memory1|RAM~265_regout\ : std_logic;
SIGNAL \memory1|RAM~217_regout\ : std_logic;
SIGNAL \memory1|RAM~746\ : std_logic;
SIGNAL \memory1|RAM~747\ : std_logic;
SIGNAL \memory1|RAM~201_regout\ : std_logic;
SIGNAL \memory1|RAM~153_regout\ : std_logic;
SIGNAL \memory1|RAM~741\ : std_logic;
SIGNAL \memory1|RAM~742\ : std_logic;
SIGNAL \memory1|RAM~73_regout\ : std_logic;
SIGNAL \memory1|RAM~25_regout\ : std_logic;
SIGNAL \memory1|RAM~743\ : std_logic;
SIGNAL \memory1|RAM~744\ : std_logic;
SIGNAL \memory1|RAM~745_combout\ : std_logic;
SIGNAL \memory1|RAM~748_combout\ : std_logic;
SIGNAL \memory1|RAM~749_combout\ : std_logic;
SIGNAL \mux8_2|Mux12~0\ : std_logic;
SIGNAL \mux8_1|Mux12~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux12\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:2:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|add1|ist_add:2:F1|cout~0_combout\ : std_logic;
SIGNAL \alu1|Mux12~0_combout\ : std_logic;
SIGNAL \alu1|Mux12~1_combout\ : std_logic;
SIGNAL \mux4_1|Mux12~0\ : std_logic;
SIGNAL \mux4_1|Mux12~1_combout\ : std_logic;
SIGNAL \memory1|RAM~664_combout\ : std_logic;
SIGNAL \memory1|RAM~665_combout\ : std_logic;
SIGNAL \mux8|Y[0]~4\ : std_logic;
SIGNAL \memory1|RAM~502_regout\ : std_logic;
SIGNAL \memory1|RAM~310_regout\ : std_logic;
SIGNAL \memory1|RAM~618\ : std_logic;
SIGNAL \memory1|RAM~619\ : std_logic;
SIGNAL \memory1|RAM~518_regout\ : std_logic;
SIGNAL \memory1|RAM~326_regout\ : std_logic;
SIGNAL \memory1|RAM~625\ : std_logic;
SIGNAL \memory1|RAM~626\ : std_logic;
SIGNAL \memory1|RAM~470_regout\ : std_logic;
SIGNAL \memory1|RAM~278_regout\ : std_logic;
SIGNAL \memory1|RAM~622\ : std_logic;
SIGNAL \memory1|RAM~623\ : std_logic;
SIGNAL \memory1|RAM~486_regout\ : std_logic;
SIGNAL \memory1|RAM~294_regout\ : std_logic;
SIGNAL \memory1|RAM~620\ : std_logic;
SIGNAL \memory1|RAM~621\ : std_logic;
SIGNAL \memory1|RAM~624_combout\ : std_logic;
SIGNAL \memory1|RAM~627_combout\ : std_logic;
SIGNAL \memory1|RAM~262_regout\ : std_logic;
SIGNAL \memory1|RAM~214_regout\ : std_logic;
SIGNAL \memory1|RAM~635\ : std_logic;
SIGNAL \memory1|RAM~636\ : std_logic;
SIGNAL \memory1|RAM~198_regout\ : std_logic;
SIGNAL \memory1|RAM~150_regout\ : std_logic;
SIGNAL \memory1|RAM~628\ : std_logic;
SIGNAL \memory1|RAM~629\ : std_logic;
SIGNAL \memory1|RAM~54_regout\ : std_logic;
SIGNAL \memory1|RAM~38_regout\ : std_logic;
SIGNAL \memory1|RAM~22_regout\ : std_logic;
SIGNAL \memory1|RAM~632_combout\ : std_logic;
SIGNAL \memory1|RAM~633\ : std_logic;
SIGNAL \memory1|RAM~102_regout\ : std_logic;
SIGNAL \memory1|RAM~134_regout\ : std_logic;
SIGNAL \memory1|RAM~118_regout\ : std_logic;
SIGNAL \memory1|RAM~630\ : std_logic;
SIGNAL \memory1|RAM~631_combout\ : std_logic;
SIGNAL \memory1|RAM~634_combout\ : std_logic;
SIGNAL \memory1|RAM~637_combout\ : std_logic;
SIGNAL \memory1|RAM~638_combout\ : std_logic;
SIGNAL \mux8_2|Mux15~0\ : std_logic;
SIGNAL \mux8_2|Mux15~1_combout\ : std_logic;
SIGNAL \alu1|Mux15~0_combout\ : std_logic;
SIGNAL \mux4_1|Mux15~0\ : std_logic;
SIGNAL \mux4_1|Mux15~1_combout\ : std_logic;
SIGNAL \mux8|Y[1]~5\ : std_logic;
SIGNAL \memory1|RAM~519_regout\ : std_logic;
SIGNAL \memory1|RAM~327_regout\ : std_logic;
SIGNAL \memory1|RAM~646\ : std_logic;
SIGNAL \memory1|RAM~647\ : std_logic;
SIGNAL \memory1|RAM~487_regout\ : std_logic;
SIGNAL \memory1|RAM~295_regout\ : std_logic;
SIGNAL \memory1|RAM~639\ : std_logic;
SIGNAL \memory1|RAM~640\ : std_logic;
SIGNAL \memory1|RAM~471_regout\ : std_logic;
SIGNAL \memory1|RAM~279_regout\ : std_logic;
SIGNAL \memory1|RAM~643\ : std_logic;
SIGNAL \memory1|RAM~644\ : std_logic;
SIGNAL \memory1|RAM~503_regout\ : std_logic;
SIGNAL \memory1|RAM~311_regout\ : std_logic;
SIGNAL \memory1|RAM~641\ : std_logic;
SIGNAL \memory1|RAM~642\ : std_logic;
SIGNAL \memory1|RAM~645_combout\ : std_logic;
SIGNAL \memory1|RAM~648_combout\ : std_logic;
SIGNAL \memory1|RAM~119_regout\ : std_logic;
SIGNAL \memory1|RAM~135_regout\ : std_logic;
SIGNAL \memory1|RAM~87_regout\ : std_logic;
SIGNAL \memory1|RAM~649\ : std_logic;
SIGNAL \memory1|RAM~650_combout\ : std_logic;
SIGNAL \memory1|RAM~263_regout\ : std_logic;
SIGNAL \memory1|RAM~215_regout\ : std_logic;
SIGNAL \memory1|RAM~656\ : std_logic;
SIGNAL \memory1|RAM~657\ : std_logic;
SIGNAL \memory1|RAM~71_regout\ : std_logic;
SIGNAL \memory1|RAM~23_regout\ : std_logic;
SIGNAL \memory1|RAM~55_regout\ : std_logic;
SIGNAL \memory1|RAM~653_combout\ : std_logic;
SIGNAL \memory1|RAM~654\ : std_logic;
SIGNAL \memory1|RAM~199_regout\ : std_logic;
SIGNAL \memory1|RAM~151_regout\ : std_logic;
SIGNAL \memory1|RAM~651\ : std_logic;
SIGNAL \memory1|RAM~652\ : std_logic;
SIGNAL \memory1|RAM~655_combout\ : std_logic;
SIGNAL \memory1|RAM~658_combout\ : std_logic;
SIGNAL \memory1|RAM~659_combout\ : std_logic;
SIGNAL \mux8_2|Mux14~1\ : std_logic;
SIGNAL \alu1|Mux14~0_combout\ : std_logic;
SIGNAL \alu1|Mux14~1_combout\ : std_logic;
SIGNAL \mux4_1|Mux14~0\ : std_logic;
SIGNAL \mux4_1|Mux14~1_combout\ : std_logic;
SIGNAL \mux8|Y[4]~8\ : std_logic;
SIGNAL \memory1|RAM~506_regout\ : std_logic;
SIGNAL \memory1|RAM~314_regout\ : std_logic;
SIGNAL \memory1|RAM~750\ : std_logic;
SIGNAL \memory1|RAM~751\ : std_logic;
SIGNAL \memory1|RAM~522_regout\ : std_logic;
SIGNAL \memory1|RAM~330_regout\ : std_logic;
SIGNAL \memory1|RAM~757\ : std_logic;
SIGNAL \memory1|RAM~758\ : std_logic;
SIGNAL \memory1|RAM~490_regout\ : std_logic;
SIGNAL \memory1|RAM~298_regout\ : std_logic;
SIGNAL \memory1|RAM~752\ : std_logic;
SIGNAL \memory1|RAM~753\ : std_logic;
SIGNAL \memory1|RAM~474_regout\ : std_logic;
SIGNAL \memory1|RAM~282_regout\ : std_logic;
SIGNAL \memory1|RAM~754\ : std_logic;
SIGNAL \memory1|RAM~755\ : std_logic;
SIGNAL \memory1|RAM~756_combout\ : std_logic;
SIGNAL \memory1|RAM~759_combout\ : std_logic;
SIGNAL \memory1|RAM~266_regout\ : std_logic;
SIGNAL \memory1|RAM~218_regout\ : std_logic;
SIGNAL \memory1|RAM~767\ : std_logic;
SIGNAL \memory1|RAM~768\ : std_logic;
SIGNAL \memory1|RAM~202_regout\ : std_logic;
SIGNAL \memory1|RAM~154_regout\ : std_logic;
SIGNAL \memory1|RAM~760\ : std_logic;
SIGNAL \memory1|RAM~761\ : std_logic;
SIGNAL \memory1|RAM~138_regout\ : std_logic;
SIGNAL \memory1|RAM~122_regout\ : std_logic;
SIGNAL \memory1|RAM~762\ : std_logic;
SIGNAL \memory1|RAM~763\ : std_logic;
SIGNAL \memory1|RAM~74_regout\ : std_logic;
SIGNAL \memory1|RAM~26_regout\ : std_logic;
SIGNAL \memory1|RAM~764\ : std_logic;
SIGNAL \memory1|RAM~765\ : std_logic;
SIGNAL \memory1|RAM~766_combout\ : std_logic;
SIGNAL \memory1|RAM~769_combout\ : std_logic;
SIGNAL \memory1|RAM~770_combout\ : std_logic;
SIGNAL \mux8_2|Mux11~0\ : std_logic;
SIGNAL \mux8_1|Mux11~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux11\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:3:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|add1|ist_add:3:F1|cout~0_combout\ : std_logic;
SIGNAL \alu1|Mux11~0_combout\ : std_logic;
SIGNAL \alu1|Mux11~1_combout\ : std_logic;
SIGNAL \mux4_1|Mux11~0\ : std_logic;
SIGNAL \mux4_1|Mux11~1_combout\ : std_logic;
SIGNAL \mux8_2|Mux3~0_combout\ : std_logic;
SIGNAL \mux8_2|Mux10~0\ : std_logic;
SIGNAL \alu1|add1|ist_add:4:F1|cout~0_combout\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:4:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|Mux10~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux10~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux10\ : std_logic;
SIGNAL \alu1|Mux10~1\ : std_logic;
SIGNAL \mux8|Y[5]~9\ : std_logic;
SIGNAL \memory1|RAM~267_regout\ : std_logic;
SIGNAL \memory1|RAM~219_regout\ : std_logic;
SIGNAL \memory1|RAM~788\ : std_logic;
SIGNAL \memory1|RAM~789\ : std_logic;
SIGNAL \memory1|RAM~203_regout\ : std_logic;
SIGNAL \memory1|RAM~155_regout\ : std_logic;
SIGNAL \memory1|RAM~781\ : std_logic;
SIGNAL \memory1|RAM~782\ : std_logic;
SIGNAL \memory1|RAM~139_regout\ : std_logic;
SIGNAL \memory1|RAM~91_regout\ : std_logic;
SIGNAL \memory1|RAM~123_regout\ : std_logic;
SIGNAL \memory1|RAM~783_combout\ : std_logic;
SIGNAL \memory1|RAM~784\ : std_logic;
SIGNAL \memory1|RAM~75_regout\ : std_logic;
SIGNAL \memory1|RAM~27_regout\ : std_logic;
SIGNAL \memory1|RAM~785\ : std_logic;
SIGNAL \memory1|RAM~786\ : std_logic;
SIGNAL \memory1|RAM~787_combout\ : std_logic;
SIGNAL \memory1|RAM~790_combout\ : std_logic;
SIGNAL \memory1|RAM~523_regout\ : std_logic;
SIGNAL \memory1|RAM~331_regout\ : std_logic;
SIGNAL \memory1|RAM~778\ : std_logic;
SIGNAL \memory1|RAM~779\ : std_logic;
SIGNAL \memory1|RAM~475_regout\ : std_logic;
SIGNAL \memory1|RAM~283_regout\ : std_logic;
SIGNAL \memory1|RAM~775\ : std_logic;
SIGNAL \memory1|RAM~776\ : std_logic;
SIGNAL \memory1|RAM~491_regout\ : std_logic;
SIGNAL \memory1|RAM~299_regout\ : std_logic;
SIGNAL \memory1|RAM~773\ : std_logic;
SIGNAL \memory1|RAM~774\ : std_logic;
SIGNAL \memory1|RAM~777_combout\ : std_logic;
SIGNAL \memory1|RAM~507_regout\ : std_logic;
SIGNAL \memory1|RAM~315_regout\ : std_logic;
SIGNAL \memory1|RAM~771\ : std_logic;
SIGNAL \memory1|RAM~772\ : std_logic;
SIGNAL \memory1|RAM~780_combout\ : std_logic;
SIGNAL \memory1|RAM~791_combout\ : std_logic;
SIGNAL \mux8_2|Mux3~1_combout\ : std_logic;
SIGNAL \mux8_1|Mux1~1_combout\ : std_logic;
SIGNAL \mux8_2|Mux7~1_combout\ : std_logic;
SIGNAL \mux8_1|Mux7~2_combout\ : std_logic;
SIGNAL \alu1|Mux7~0_combout\ : std_logic;
SIGNAL \alu1|add1|ist_add:5:F1|cout~0_combout\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:5:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|Mux9~0_combout\ : std_logic;
SIGNAL \mux8|Y[6]~12\ : std_logic;
SIGNAL \memory1|RAM~492_regout\ : std_logic;
SIGNAL \memory1|RAM~300_regout\ : std_logic;
SIGNAL \memory1|RAM~834\ : std_logic;
SIGNAL \memory1|RAM~835\ : std_logic;
SIGNAL \memory1|RAM~524_regout\ : std_logic;
SIGNAL \memory1|RAM~332_regout\ : std_logic;
SIGNAL \memory1|RAM~841\ : std_logic;
SIGNAL \memory1|RAM~842\ : std_logic;
SIGNAL \memory1|RAM~508_regout\ : std_logic;
SIGNAL \memory1|RAM~316_regout\ : std_logic;
SIGNAL \memory1|RAM~836\ : std_logic;
SIGNAL \memory1|RAM~837\ : std_logic;
SIGNAL \memory1|RAM~476_regout\ : std_logic;
SIGNAL \memory1|RAM~284_regout\ : std_logic;
SIGNAL \memory1|RAM~838\ : std_logic;
SIGNAL \memory1|RAM~839\ : std_logic;
SIGNAL \memory1|RAM~840_combout\ : std_logic;
SIGNAL \memory1|RAM~843_combout\ : std_logic;
SIGNAL \memory1|RAM~268_regout\ : std_logic;
SIGNAL \memory1|RAM~220_regout\ : std_logic;
SIGNAL \memory1|RAM~851\ : std_logic;
SIGNAL \memory1|RAM~852\ : std_logic;
SIGNAL \memory1|RAM~124_regout\ : std_logic;
SIGNAL \memory1|RAM~140_regout\ : std_logic;
SIGNAL \memory1|RAM~92_regout\ : std_logic;
SIGNAL \memory1|RAM~844\ : std_logic;
SIGNAL \memory1|RAM~845_combout\ : std_logic;
SIGNAL \memory1|RAM~76_regout\ : std_logic;
SIGNAL \memory1|RAM~28_regout\ : std_logic;
SIGNAL \memory1|RAM~848\ : std_logic;
SIGNAL \memory1|RAM~849\ : std_logic;
SIGNAL \memory1|RAM~204_regout\ : std_logic;
SIGNAL \memory1|RAM~156_regout\ : std_logic;
SIGNAL \memory1|RAM~846\ : std_logic;
SIGNAL \memory1|RAM~847\ : std_logic;
SIGNAL \memory1|RAM~850_combout\ : std_logic;
SIGNAL \memory1|RAM~853_combout\ : std_logic;
SIGNAL \memory1|RAM~854_combout\ : std_logic;
SIGNAL \mux8_2|Mux9~2\ : std_logic;
SIGNAL \mux8_2|Mux9~3_combout\ : std_logic;
SIGNAL \alu1|Mux9~1\ : std_logic;
SIGNAL \mux8_1|Mux9~3_combout\ : std_logic;
SIGNAL \mux8_1|Mux9\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:6:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|add1|ist_add:6:F1|cout~0_combout\ : std_logic;
SIGNAL \alu1|Mux8~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux1~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux8~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux8~1\ : std_logic;
SIGNAL \mux8_1|Mux8~2_combout\ : std_logic;
SIGNAL \alu1|Mux8~1\ : std_logic;
SIGNAL \mux8|Y[7]~11\ : std_logic;
SIGNAL \memory1|RAM~493_regout\ : std_logic;
SIGNAL \memory1|RAM~301_regout\ : std_logic;
SIGNAL \memory1|RAM~813\ : std_logic;
SIGNAL \memory1|RAM~814\ : std_logic;
SIGNAL \memory1|RAM~525_regout\ : std_logic;
SIGNAL \memory1|RAM~333_regout\ : std_logic;
SIGNAL \memory1|RAM~820\ : std_logic;
SIGNAL \memory1|RAM~821\ : std_logic;
SIGNAL \memory1|RAM~509_regout\ : std_logic;
SIGNAL \memory1|RAM~317_regout\ : std_logic;
SIGNAL \memory1|RAM~815\ : std_logic;
SIGNAL \memory1|RAM~816\ : std_logic;
SIGNAL \memory1|RAM~477_regout\ : std_logic;
SIGNAL \memory1|RAM~285_regout\ : std_logic;
SIGNAL \memory1|RAM~817\ : std_logic;
SIGNAL \memory1|RAM~818\ : std_logic;
SIGNAL \memory1|RAM~819_combout\ : std_logic;
SIGNAL \memory1|RAM~822_combout\ : std_logic;
SIGNAL \memory1|RAM~141_regout\ : std_logic;
SIGNAL \memory1|RAM~93_regout\ : std_logic;
SIGNAL \memory1|RAM~823\ : std_logic;
SIGNAL \memory1|RAM~125_regout\ : std_logic;
SIGNAL \memory1|RAM~824_combout\ : std_logic;
SIGNAL \memory1|RAM~269_regout\ : std_logic;
SIGNAL \memory1|RAM~221_regout\ : std_logic;
SIGNAL \memory1|RAM~830\ : std_logic;
SIGNAL \memory1|RAM~831\ : std_logic;
SIGNAL \memory1|RAM~77_regout\ : std_logic;
SIGNAL \memory1|RAM~29_regout\ : std_logic;
SIGNAL \memory1|RAM~827\ : std_logic;
SIGNAL \memory1|RAM~828\ : std_logic;
SIGNAL \memory1|RAM~205_regout\ : std_logic;
SIGNAL \memory1|RAM~157_regout\ : std_logic;
SIGNAL \memory1|RAM~825\ : std_logic;
SIGNAL \memory1|RAM~826\ : std_logic;
SIGNAL \memory1|RAM~829_combout\ : std_logic;
SIGNAL \memory1|RAM~832_combout\ : std_logic;
SIGNAL \memory1|RAM~833_combout\ : std_logic;
SIGNAL \mux8_2|Mux8~0_combout\ : std_logic;
SIGNAL \mux8_2|Mux8~1\ : std_logic;
SIGNAL \alu1|Mux7~1_combout\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:7:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|Mux7~2_combout\ : std_logic;
SIGNAL \alu1|Mux7~3\ : std_logic;
SIGNAL \mux8_1|Mux7~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux7~1\ : std_logic;
SIGNAL \alu1|nand1|s0~0_combout\ : std_logic;
SIGNAL \mux8|Y[8]~10\ : std_logic;
SIGNAL \memory1|RAM~270_regout\ : std_logic;
SIGNAL \memory1|RAM~222_regout\ : std_logic;
SIGNAL \memory1|RAM~809\ : std_logic;
SIGNAL \memory1|RAM~810\ : std_logic;
SIGNAL \memory1|RAM~206_regout\ : std_logic;
SIGNAL \memory1|RAM~158_regout\ : std_logic;
SIGNAL \memory1|RAM~802\ : std_logic;
SIGNAL \memory1|RAM~803\ : std_logic;
SIGNAL \memory1|RAM~142_regout\ : std_logic;
SIGNAL \memory1|RAM~126_regout\ : std_logic;
SIGNAL \memory1|RAM~804\ : std_logic;
SIGNAL \memory1|RAM~805\ : std_logic;
SIGNAL \memory1|RAM~78_regout\ : std_logic;
SIGNAL \memory1|RAM~30_regout\ : std_logic;
SIGNAL \memory1|RAM~806\ : std_logic;
SIGNAL \memory1|RAM~807\ : std_logic;
SIGNAL \memory1|RAM~808_combout\ : std_logic;
SIGNAL \memory1|RAM~811_combout\ : std_logic;
SIGNAL \memory1|RAM~526_regout\ : std_logic;
SIGNAL \memory1|RAM~334_regout\ : std_logic;
SIGNAL \memory1|RAM~799\ : std_logic;
SIGNAL \memory1|RAM~800\ : std_logic;
SIGNAL \memory1|RAM~510_regout\ : std_logic;
SIGNAL \memory1|RAM~318_regout\ : std_logic;
SIGNAL \memory1|RAM~792\ : std_logic;
SIGNAL \memory1|RAM~793\ : std_logic;
SIGNAL \memory1|RAM~478_regout\ : std_logic;
SIGNAL \memory1|RAM~286_regout\ : std_logic;
SIGNAL \memory1|RAM~796\ : std_logic;
SIGNAL \memory1|RAM~797\ : std_logic;
SIGNAL \memory1|RAM~494_regout\ : std_logic;
SIGNAL \memory1|RAM~302_regout\ : std_logic;
SIGNAL \memory1|RAM~794\ : std_logic;
SIGNAL \memory1|RAM~795\ : std_logic;
SIGNAL \memory1|RAM~798_combout\ : std_logic;
SIGNAL \memory1|RAM~801_combout\ : std_logic;
SIGNAL \memory1|RAM~812_combout\ : std_logic;
SIGNAL \mux8_2|Mux7~0_combout\ : std_logic;
SIGNAL \mux8_2|Mux7~2\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:8:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|add1|ist_add:8:F1|cout~0_combout\ : std_logic;
SIGNAL \alu1|Mux6~0_combout\ : std_logic;
SIGNAL \alu1|Mux6~1_combout\ : std_logic;
SIGNAL \mux8_1|Mux6~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux6~1\ : std_logic;
SIGNAL \mux8_1|Mux6~2_combout\ : std_logic;
SIGNAL \alu1|Mux6~2\ : std_logic;
SIGNAL \mux8_2|Mux6~0_combout\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:9:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|add1|ist_add:9:F1|cout~0_combout\ : std_logic;
SIGNAL \alu1|Mux5~2_combout\ : std_logic;
SIGNAL \mux8_1|Mux5~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux5~1\ : std_logic;
SIGNAL \mux8_1|Mux5~2_combout\ : std_logic;
SIGNAL \alu1|Mux5~0_combout\ : std_logic;
SIGNAL \alu1|Mux5~1_combout\ : std_logic;
SIGNAL \alu1|Mux5~3\ : std_logic;
SIGNAL \mux8_2|Mux5~0_combout\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:10:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|add1|ist_add:10:F1|cout~0_combout\ : std_logic;
SIGNAL \alu1|Mux4~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux4~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux4~1\ : std_logic;
SIGNAL \mux8_1|Mux4~2_combout\ : std_logic;
SIGNAL \alu1|Mux4~1\ : std_logic;
SIGNAL \mux8_2|Mux4~0_combout\ : std_logic;
SIGNAL \alu1|add1|ist_add:11:F1|cout~0_combout\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:11:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|Mux3~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux3~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux3~1\ : std_logic;
SIGNAL \mux8_1|Mux3~2_combout\ : std_logic;
SIGNAL \alu1|Mux3~1\ : std_logic;
SIGNAL \mux8|Y[12]~0\ : std_logic;
SIGNAL \memory1|RAM~466_regout\ : std_logic;
SIGNAL \memory1|RAM~530_regout\ : std_logic;
SIGNAL \memory1|RAM~338_regout\ : std_logic;
SIGNAL \memory1|RAM~402_regout\ : std_logic;
SIGNAL \memory1|RAM~541_combout\ : std_logic;
SIGNAL \memory1|RAM~542_combout\ : std_logic;
SIGNAL \memory1|RAM~514_regout\ : std_logic;
SIGNAL \memory1|RAM~386_regout\ : std_logic;
SIGNAL \memory1|RAM~322_regout\ : std_logic;
SIGNAL \memory1|RAM~450_regout\ : std_logic;
SIGNAL \memory1|RAM~534_combout\ : std_logic;
SIGNAL \memory1|RAM~535_combout\ : std_logic;
SIGNAL \memory1|RAM~482_regout\ : std_logic;
SIGNAL \memory1|RAM~354_regout\ : std_logic;
SIGNAL \memory1|RAM~418_regout\ : std_logic;
SIGNAL \memory1|RAM~290_regout\ : std_logic;
SIGNAL \memory1|RAM~538_combout\ : std_logic;
SIGNAL \memory1|RAM~539_combout\ : std_logic;
SIGNAL \memory1|RAM~434_regout\ : std_logic;
SIGNAL \memory1|RAM~498_regout\ : std_logic;
SIGNAL \memory1|RAM~306_regout\ : std_logic;
SIGNAL \memory1|RAM~370_regout\ : std_logic;
SIGNAL \memory1|RAM~536_combout\ : std_logic;
SIGNAL \memory1|RAM~537_combout\ : std_logic;
SIGNAL \memory1|RAM~540_combout\ : std_logic;
SIGNAL \memory1|RAM~543_combout\ : std_logic;
SIGNAL \memory1|RAM~242_regout\ : std_logic;
SIGNAL \memory1|RAM~274_regout\ : std_logic;
SIGNAL \memory1|RAM~258_regout\ : std_logic;
SIGNAL \memory1|RAM~226_regout\ : std_logic;
SIGNAL \memory1|RAM~551_combout\ : std_logic;
SIGNAL \memory1|RAM~552_combout\ : std_logic;
SIGNAL \memory1|RAM~210_regout\ : std_logic;
SIGNAL \memory1|RAM~194_regout\ : std_logic;
SIGNAL \memory1|RAM~178_regout\ : std_logic;
SIGNAL \memory1|RAM~162_regout\ : std_logic;
SIGNAL \memory1|RAM~544_combout\ : std_logic;
SIGNAL \memory1|RAM~545_combout\ : std_logic;
SIGNAL \memory1|RAM~146_regout\ : std_logic;
SIGNAL \memory1|RAM~130_regout\ : std_logic;
SIGNAL \memory1|RAM~546\ : std_logic;
SIGNAL \memory1|RAM~547\ : std_logic;
SIGNAL \memory1|RAM~82_regout\ : std_logic;
SIGNAL \memory1|RAM~34_regout\ : std_logic;
SIGNAL \memory1|RAM~548\ : std_logic;
SIGNAL \memory1|RAM~549\ : std_logic;
SIGNAL \memory1|RAM~550_combout\ : std_logic;
SIGNAL \memory1|RAM~553_combout\ : std_logic;
SIGNAL \memory1|RAM~554_combout\ : std_logic;
SIGNAL \mux8_1|Mux2~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux2~1\ : std_logic;
SIGNAL \alu1|Mux2~0_combout\ : std_logic;
SIGNAL \alu1|add1|ist_add:12:F1|cout~0_combout\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:12:F1|Borrow~0_combout\ : std_logic;
SIGNAL \alu1|Mux2~2_combout\ : std_logic;
SIGNAL \alu1|Mux2~3\ : std_logic;
SIGNAL \mux8_2|Mux2~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux2~2_combout\ : std_logic;
SIGNAL \alu1|Mux2~1_combout\ : std_logic;
SIGNAL \mux8|Y[13]~1\ : std_logic;
SIGNAL \memory1|RAM~371_regout\ : std_logic;
SIGNAL \memory1|RAM~499_regout\ : std_logic;
SIGNAL \memory1|RAM~435_regout\ : std_logic;
SIGNAL \memory1|RAM~307_regout\ : std_logic;
SIGNAL \memory1|RAM~555_combout\ : std_logic;
SIGNAL \memory1|RAM~556_combout\ : std_logic;
SIGNAL \memory1|RAM~531_regout\ : std_logic;
SIGNAL \memory1|RAM~403_regout\ : std_logic;
SIGNAL \memory1|RAM~339_regout\ : std_logic;
SIGNAL \memory1|RAM~467_regout\ : std_logic;
SIGNAL \memory1|RAM~562_combout\ : std_logic;
SIGNAL \memory1|RAM~563_combout\ : std_logic;
SIGNAL \memory1|RAM~419_regout\ : std_logic;
SIGNAL \memory1|RAM~483_regout\ : std_logic;
SIGNAL \memory1|RAM~355_regout\ : std_logic;
SIGNAL \memory1|RAM~291_regout\ : std_logic;
SIGNAL \memory1|RAM~559_combout\ : std_logic;
SIGNAL \memory1|RAM~560_combout\ : std_logic;
SIGNAL \memory1|RAM~515_regout\ : std_logic;
SIGNAL \memory1|RAM~451_regout\ : std_logic;
SIGNAL \memory1|RAM~387_regout\ : std_logic;
SIGNAL \memory1|RAM~323_regout\ : std_logic;
SIGNAL \memory1|RAM~557_combout\ : std_logic;
SIGNAL \memory1|RAM~558_combout\ : std_logic;
SIGNAL \memory1|RAM~561_combout\ : std_logic;
SIGNAL \memory1|RAM~564_combout\ : std_logic;
SIGNAL \memory1|RAM~275_regout\ : std_logic;
SIGNAL \memory1|RAM~259_regout\ : std_logic;
SIGNAL \memory1|RAM~227_regout\ : std_logic;
SIGNAL \memory1|RAM~243_regout\ : std_logic;
SIGNAL \memory1|RAM~572_combout\ : std_logic;
SIGNAL \memory1|RAM~573_combout\ : std_logic;
SIGNAL \memory1|RAM~131_regout\ : std_logic;
SIGNAL \memory1|RAM~147_regout\ : std_logic;
SIGNAL \memory1|RAM~99_regout\ : std_logic;
SIGNAL \memory1|RAM~565\ : std_logic;
SIGNAL \memory1|RAM~566_combout\ : std_logic;
SIGNAL \memory1|RAM~83_regout\ : std_logic;
SIGNAL \memory1|RAM~35_regout\ : std_logic;
SIGNAL \memory1|RAM~569\ : std_logic;
SIGNAL \memory1|RAM~570\ : std_logic;
SIGNAL \memory1|RAM~179_regout\ : std_logic;
SIGNAL \memory1|RAM~211_regout\ : std_logic;
SIGNAL \memory1|RAM~195_regout\ : std_logic;
SIGNAL \memory1|RAM~163_regout\ : std_logic;
SIGNAL \memory1|RAM~567_combout\ : std_logic;
SIGNAL \memory1|RAM~568_combout\ : std_logic;
SIGNAL \memory1|RAM~571_combout\ : std_logic;
SIGNAL \memory1|RAM~574_combout\ : std_logic;
SIGNAL \memory1|RAM~575_combout\ : std_logic;
SIGNAL \mux8_2|Mux1~0_combout\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:14:F1|DIFF~0_combout\ : std_logic;
SIGNAL \alu1|add1|ist_add:14:F1|s0~combout\ : std_logic;
SIGNAL \alu1|sub1|ist_sub:14:F1|DIFF~combout\ : std_logic;
SIGNAL \alu1|Mux1~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux1~2_combout\ : std_logic;
SIGNAL \mux8_1|Mux1~3\ : std_logic;
SIGNAL \mux8_1|Mux1~4_combout\ : std_logic;
SIGNAL \alu1|Mux1~1\ : std_logic;
SIGNAL \mux8|Y[14]~2_combout\ : std_logic;
SIGNAL \memory1|RAM~388_regout\ : std_logic;
SIGNAL \memory1|RAM~516_regout\ : std_logic;
SIGNAL \memory1|RAM~324_regout\ : std_logic;
SIGNAL \memory1|RAM~452_regout\ : std_logic;
SIGNAL \memory1|RAM~576_combout\ : std_logic;
SIGNAL \memory1|RAM~577_combout\ : std_logic;
SIGNAL \memory1|RAM~468_regout\ : std_logic;
SIGNAL \memory1|RAM~532_regout\ : std_logic;
SIGNAL \memory1|RAM~340_regout\ : std_logic;
SIGNAL \memory1|RAM~404_regout\ : std_logic;
SIGNAL \memory1|RAM~583_combout\ : std_logic;
SIGNAL \memory1|RAM~584_combout\ : std_logic;
SIGNAL \memory1|RAM~500_regout\ : std_logic;
SIGNAL \memory1|RAM~436_regout\ : std_logic;
SIGNAL \memory1|RAM~308_regout\ : std_logic;
SIGNAL \memory1|RAM~372_regout\ : std_logic;
SIGNAL \memory1|RAM~578_combout\ : std_logic;
SIGNAL \memory1|RAM~579_combout\ : std_logic;
SIGNAL \memory1|RAM~484_regout\ : std_logic;
SIGNAL \memory1|RAM~356_regout\ : std_logic;
SIGNAL \memory1|RAM~292_regout\ : std_logic;
SIGNAL \memory1|RAM~420_regout\ : std_logic;
SIGNAL \memory1|RAM~580_combout\ : std_logic;
SIGNAL \memory1|RAM~581_combout\ : std_logic;
SIGNAL \memory1|RAM~582_combout\ : std_logic;
SIGNAL \memory1|RAM~585_combout\ : std_logic;
SIGNAL \memory1|RAM~276_regout\ : std_logic;
SIGNAL \memory1|RAM~244_regout\ : std_logic;
SIGNAL \memory1|RAM~260_regout\ : std_logic;
SIGNAL \memory1|RAM~228_regout\ : std_logic;
SIGNAL \memory1|RAM~593_combout\ : std_logic;
SIGNAL \memory1|RAM~594_combout\ : std_logic;
SIGNAL \memory1|RAM~212_regout\ : std_logic;
SIGNAL \memory1|RAM~196_regout\ : std_logic;
SIGNAL \memory1|RAM~164_regout\ : std_logic;
SIGNAL \memory1|RAM~180_regout\ : std_logic;
SIGNAL \memory1|RAM~586_combout\ : std_logic;
SIGNAL \memory1|RAM~587_combout\ : std_logic;
SIGNAL \memory1|RAM~148_regout\ : std_logic;
SIGNAL \memory1|RAM~132_regout\ : std_logic;
SIGNAL \memory1|RAM~588\ : std_logic;
SIGNAL \memory1|RAM~589\ : std_logic;
SIGNAL \memory1|RAM~68_regout\ : std_logic;
SIGNAL \memory1|RAM~52_regout\ : std_logic;
SIGNAL \memory1|RAM~590\ : std_logic;
SIGNAL \memory1|RAM~591\ : std_logic;
SIGNAL \memory1|RAM~592_combout\ : std_logic;
SIGNAL \memory1|RAM~595_combout\ : std_logic;
SIGNAL \memory1|RAM~596_combout\ : std_logic;
SIGNAL \mux8_2|Mux0~0_combout\ : std_logic;
SIGNAL \alu1|Mux0~1_combout\ : std_logic;
SIGNAL \alu1|Mux0~4_combout\ : std_logic;
SIGNAL \alu1|Mux0~5_combout\ : std_logic;
SIGNAL \alu1|Mux0~2_combout\ : std_logic;
SIGNAL \alu1|Mux0~3\ : std_logic;
SIGNAL \mux8_1|Mux0~0_combout\ : std_logic;
SIGNAL \mux8_1|Mux0~1\ : std_logic;
SIGNAL \alu1|Mux0~0_combout\ : std_logic;
SIGNAL \mux8|Y[15]~3\ : std_logic;
SIGNAL \memory1|RAM~149_regout\ : std_logic;
SIGNAL \memory1|RAM~133_regout\ : std_logic;
SIGNAL \memory1|RAM~101_regout\ : std_logic;
SIGNAL \memory1|RAM~607\ : std_logic;
SIGNAL \memory1|RAM~608_combout\ : std_logic;
SIGNAL \memory1|RAM~277_regout\ : std_logic;
SIGNAL \memory1|RAM~261_regout\ : std_logic;
SIGNAL \memory1|RAM~245_regout\ : std_logic;
SIGNAL \memory1|RAM~229_regout\ : std_logic;
SIGNAL \memory1|RAM~614_combout\ : std_logic;
SIGNAL \memory1|RAM~615_combout\ : std_logic;
SIGNAL \memory1|RAM~85_regout\ : std_logic;
SIGNAL \memory1|RAM~37_regout\ : std_logic;
SIGNAL \memory1|RAM~611\ : std_logic;
SIGNAL \memory1|RAM~612\ : std_logic;
SIGNAL \memory1|RAM~181_regout\ : std_logic;
SIGNAL \memory1|RAM~213_regout\ : std_logic;
SIGNAL \memory1|RAM~165_regout\ : std_logic;
SIGNAL \memory1|RAM~197_regout\ : std_logic;
SIGNAL \memory1|RAM~609_combout\ : std_logic;
SIGNAL \memory1|RAM~610_combout\ : std_logic;
SIGNAL \memory1|RAM~613_combout\ : std_logic;
SIGNAL \memory1|RAM~616_combout\ : std_logic;
SIGNAL \memory1|RAM~501_regout\ : std_logic;
SIGNAL \memory1|RAM~373_regout\ : std_logic;
SIGNAL \memory1|RAM~437_regout\ : std_logic;
SIGNAL \memory1|RAM~309_regout\ : std_logic;
SIGNAL \memory1|RAM~597_combout\ : std_logic;
SIGNAL \memory1|RAM~598_combout\ : std_logic;
SIGNAL \memory1|RAM~405_regout\ : std_logic;
SIGNAL \memory1|RAM~533_regout\ : std_logic;
SIGNAL \memory1|RAM~469_regout\ : std_logic;
SIGNAL \memory1|RAM~341_regout\ : std_logic;
SIGNAL \memory1|RAM~604_combout\ : std_logic;
SIGNAL \memory1|RAM~605_combout\ : std_logic;
SIGNAL \memory1|RAM~485_regout\ : std_logic;
SIGNAL \memory1|RAM~421_regout\ : std_logic;
SIGNAL \memory1|RAM~293_regout\ : std_logic;
SIGNAL \memory1|RAM~357_regout\ : std_logic;
SIGNAL \memory1|RAM~601_combout\ : std_logic;
SIGNAL \memory1|RAM~602_combout\ : std_logic;
SIGNAL \memory1|RAM~517_regout\ : std_logic;
SIGNAL \memory1|RAM~389_regout\ : std_logic;
SIGNAL \memory1|RAM~325_regout\ : std_logic;
SIGNAL \memory1|RAM~599_combout\ : std_logic;
SIGNAL \memory1|RAM~453_regout\ : std_logic;
SIGNAL \memory1|RAM~600_combout\ : std_logic;
SIGNAL \memory1|RAM~603_combout\ : std_logic;
SIGNAL \memory1|RAM~606_combout\ : std_logic;
SIGNAL \memory1|RAM~617_combout\ : std_logic;
SIGNAL \t2|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \instruction_register|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memory1|memout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \t3|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \T~combout\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \PC|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \t1|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PC1|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \alu1|or1|s0_or\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_T~combout\ : std_logic_vector(23 DOWNTO 2);

BEGIN

op_code <= ww_op_code;
condition <= ww_condition;
ww_clock <= clock;
ww_reset <= reset;
ww_RX <= RX;
ww_start <= start;
finish <= ww_finish;
ww_T <= T;
S <= ww_S;
P0 <= ww_P0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_T~combout\(23) <= NOT \T~combout\(23);
\ALT_INV_T~combout\(2) <= NOT \T~combout\(2);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(20),
	combout => \T~combout\(20));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(27),
	combout => \T~combout\(27));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(15),
	combout => \T~combout\(15));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(13),
	combout => \T~combout\(13));

-- Location: LC_X5_Y6_N1
\mux8_2|Mux14~0\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux14~0_combout\ = (!\T~combout\(15) & (((!\T~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(15),
	datad => \T~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux14~0_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(14),
	combout => \T~combout\(14));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(19),
	combout => \T~combout\(19));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(16),
	combout => \T~combout\(16));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(10),
	combout => \T~combout\(10));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(11),
	combout => \T~combout\(11));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(12),
	combout => \T~combout\(12));

-- Location: LC_X10_Y8_N8
\mux8_1|Mux9~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux9~0_combout\ = ((!\T~combout\(12) & (\T~combout\(10) $ (\T~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(10),
	datac => \T~combout\(11),
	datad => \T~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux9~0_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(17),
	combout => \T~combout\(17));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(18),
	combout => \T~combout\(18));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X4_Y6_N1
\t2|q[1]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(1) = DFFEAS(((!\T~combout\(17) & (!\T~combout\(18) & \alu1|Mux14~1_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(17),
	datac => \T~combout\(18),
	datad => \alu1|Mux14~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(1));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(21),
	combout => \T~combout\(21));

-- Location: LC_X8_Y6_N3
\t3|q[1]\ : maxv_lcell
-- Equation(s):
-- \mux4_1|Mux14~0\ = (\T~combout\(20) & (((D11_q[1])))) # (!\T~combout\(20) & (((\PC|q\(1)))))
-- \t3|q\(1) = DFFEAS(\mux4_1|Mux14~0\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \alu1|Mux14~1_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(20),
	datac => \alu1|Mux14~1_combout\,
	datad => \PC|q\(1),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux4_1|Mux14~0\,
	regout => \t3|q\(1));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(22),
	combout => \T~combout\(22));

-- Location: LC_X9_Y6_N9
\PC|q[9]~0\ : maxv_lcell
-- Equation(s):
-- \PC|q[9]~0_combout\ = ((\T~combout\(21) & ((\T~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \T~combout\(21),
	datad => \T~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PC|q[9]~0_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(6),
	combout => \T~combout\(6));

-- Location: LC_X9_Y6_N7
\PC|q[1]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(1) = DFFEAS((\T~combout\(21) & (((\alu1|Mux14~1_combout\)))) # (!\T~combout\(21) & (\t2|q\(1))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(1), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t2|q\(1),
	datab => \T~combout\(21),
	datac => \t3|q\(1),
	datad => \alu1|Mux14~1_combout\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(1));

-- Location: LC_X10_Y8_N3
\mux8_1|Mux9~1\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux9~1_combout\ = (\T~combout\(10) & (((\T~combout\(11) & !\T~combout\(12))))) # (!\T~combout\(10) & (((!\T~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(10),
	datac => \T~combout\(11),
	datad => \T~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux9~1_combout\);

-- Location: LC_X10_Y8_N6
\mux8_1|Mux9~2\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux9~2_combout\ = ((\T~combout\(12)) # ((!\T~combout\(10) & \T~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(10),
	datac => \T~combout\(11),
	datad => \T~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux9~2_combout\);

-- Location: LC_X4_Y6_N2
\mux8_1|Mux14~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux14~0_combout\ = (\mux8_1|Mux9~1_combout\ & ((\mux8_1|Mux9~2_combout\ & (\t2|q\(1))) # (!\mux8_1|Mux9~2_combout\ & ((\PC|q\(1)))))) # (!\mux8_1|Mux9~1_combout\ & (((!\mux8_1|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f85",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux9~1_combout\,
	datab => \t2|q\(1),
	datac => \mux8_1|Mux9~2_combout\,
	datad => \PC|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux14~0_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(7),
	combout => \T~combout\(7));

-- Location: LC_X4_Y6_N3
\PC1|q[1]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux14\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux14~0_combout\ & (\t1|q\(1))) # (!\mux8_1|Mux14~0_combout\ & ((K2_q[1]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(1),
	datac => \PC|q\(1),
	datad => \mux8_1|Mux14~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux14\,
	regout => \PC1|q\(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(26),
	combout => \T~combout\(26));

-- Location: LC_X5_Y6_N4
\t2|q[0]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(0) = DFFEAS((!\T~combout\(17) & ((\T~combout\(18)) # ((\alu1|Mux15~0_combout\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5544",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(17),
	datab => \T~combout\(18),
	datad => \alu1|Mux15~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(0));

-- Location: LC_X9_Y6_N8
\PC|q[0]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(0) = DFFEAS(((\T~combout\(21) & ((\alu1|Mux15~0_combout\))) # (!\T~combout\(21) & (\t2|q\(0)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(0), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t2|q\(0),
	datab => \alu1|Mux15~0_combout\,
	datac => \t3|q\(0),
	datad => \T~combout\(21),
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(0));

-- Location: LC_X8_Y6_N5
\t3|q[0]\ : maxv_lcell
-- Equation(s):
-- \mux4_1|Mux15~0\ = (\T~combout\(20) & (((D11_q[0])))) # (!\T~combout\(20) & (((\PC|q\(0)))))
-- \t3|q\(0) = DFFEAS(\mux4_1|Mux15~0\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \alu1|Mux15~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(20),
	datac => \alu1|Mux15~0_combout\,
	datad => \PC|q\(0),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux4_1|Mux15~0\,
	regout => \t3|q\(0));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(25),
	combout => \T~combout\(25));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(23),
	combout => \T~combout\(23));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(2),
	combout => \T~combout\(2));

-- Location: LC_X6_Y6_N5
\t2|q[3]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(3) = DFFEAS(((!\T~combout\(18) & (!\T~combout\(17) & \alu1|Mux12~1_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(18),
	datac => \T~combout\(17),
	datad => \alu1|Mux12~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(3));

-- Location: LC_X9_Y6_N0
\PC|q[3]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(3) = DFFEAS(((\T~combout\(21) & ((\alu1|Mux12~1_combout\))) # (!\T~combout\(21) & (\t2|q\(3)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(3), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t2|q\(3),
	datab => \alu1|Mux12~1_combout\,
	datac => \t3|q\(3),
	datad => \T~combout\(21),
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(3));

-- Location: LC_X10_Y6_N7
\t3|q[3]\ : maxv_lcell
-- Equation(s):
-- \mux4_1|Mux12~0\ = ((\T~combout\(20) & (D11_q[3])) # (!\T~combout\(20) & ((\PC|q\(3)))))
-- \t3|q\(3) = DFFEAS(\mux4_1|Mux12~0\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \alu1|Mux12~1_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(20),
	datac => \alu1|Mux12~1_combout\,
	datad => \PC|q\(3),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux4_1|Mux12~0\,
	regout => \t3|q\(3));

-- Location: LC_X4_Y6_N5
\mux8_1|Mux15~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux15~0_combout\ = (\mux8_1|Mux9~1_combout\ & ((\mux8_1|Mux9~2_combout\ & ((\t2|q\(0)))) # (!\mux8_1|Mux9~2_combout\ & (\PC|q\(0))))) # (!\mux8_1|Mux9~1_combout\ & (!\mux8_1|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b931",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux9~1_combout\,
	datab => \mux8_1|Mux9~2_combout\,
	datac => \PC|q\(0),
	datad => \t2|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux15~0_combout\);

-- Location: LC_X4_Y6_N6
\PC1|q[0]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux15\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux15~0_combout\ & (\t1|q\(0))) # (!\mux8_1|Mux15~0_combout\ & ((K2_q[0]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(0),
	datac => \PC|q\(0),
	datad => \mux8_1|Mux15~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux15\,
	regout => \PC1|q\(0));

-- Location: LC_X4_Y6_N0
\alu1|sub1|ist_sub:1:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:1:F1|Borrow~0_combout\ = (\mux8_2|Mux14~1\ & (((\mux8_2|Mux15~1_combout\ & !\mux8_1|Mux15\)) # (!\mux8_1|Mux14\))) # (!\mux8_2|Mux14~1\ & (\mux8_2|Mux15~1_combout\ & (!\mux8_1|Mux15\ & !\mux8_1|Mux14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08ce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux15~1_combout\,
	datab => \mux8_2|Mux14~1\,
	datac => \mux8_1|Mux15\,
	datad => \mux8_1|Mux14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:1:F1|Borrow~0_combout\);

-- Location: LC_X4_Y6_N4
\alu1|add1|ist_add:1:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:1:F1|cout~0_combout\ = (\mux8_2|Mux14~1\ & ((\mux8_1|Mux14\) # ((\mux8_2|Mux15~1_combout\ & \mux8_1|Mux15\)))) # (!\mux8_2|Mux14~1\ & (\mux8_2|Mux15~1_combout\ & (\mux8_1|Mux15\ & \mux8_1|Mux14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux15~1_combout\,
	datab => \mux8_2|Mux14~1\,
	datac => \mux8_1|Mux15\,
	datad => \mux8_1|Mux14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:1:F1|cout~0_combout\);

-- Location: LC_X4_Y7_N8
\alu1|Mux13~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux13~0_combout\ = (\T~combout\(26) & ((\alu1|sub1|ist_sub:1:F1|Borrow~0_combout\) # ((\T~combout\(27))))) # (!\T~combout\(26) & (((!\T~combout\(27) & \alu1|add1|ist_add:1:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|sub1|ist_sub:1:F1|Borrow~0_combout\,
	datab => \T~combout\(26),
	datac => \T~combout\(27),
	datad => \alu1|add1|ist_add:1:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux13~0_combout\);

-- Location: LC_X6_Y6_N2
\t2|q[2]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(2) = DFFEAS(((!\T~combout\(18) & (!\T~combout\(17) & \alu1|Mux13~1_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(18),
	datac => \T~combout\(17),
	datad => \alu1|Mux13~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(2));

-- Location: LC_X9_Y6_N5
\PC|q[2]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(2) = DFFEAS((\T~combout\(21) & (((\alu1|Mux13~1_combout\)))) # (!\T~combout\(21) & (\t2|q\(2))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(2), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t2|q\(2),
	datab => \T~combout\(21),
	datac => \t3|q\(2),
	datad => \alu1|Mux13~1_combout\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(2));

-- Location: LC_X10_Y6_N4
\t3|q[2]\ : maxv_lcell
-- Equation(s):
-- \mux4_1|Mux13~0\ = ((\T~combout\(20) & (D11_q[2])) # (!\T~combout\(20) & ((\PC|q\(2)))))
-- \t3|q\(2) = DFFEAS(\mux4_1|Mux13~0\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \alu1|Mux13~1_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(20),
	datac => \alu1|Mux13~1_combout\,
	datad => \PC|q\(2),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux4_1|Mux13~0\,
	regout => \t3|q\(2));

-- Location: LC_X10_Y9_N5
\memory1|RAM~312\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[2]~6\ = ((\T~combout\(25) & (\t3|q\(2))) # (!\T~combout\(25) & ((\t1|q\(2)))))
-- \memory1|RAM~312_regout\ = DFFEAS(\mux8|Y[2]~6\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t3|q\(2),
	datac => \T~combout\(25),
	datad => \t1|q\(2),
	aclr => GND,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[2]~6\,
	regout => \memory1|RAM~312_regout\);

-- Location: LC_X15_Y4_N5
\memory1|RAM~690\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~690_combout\ = (\mux4_1|Mux12~1_combout\ & (\mux4_1|Mux14~1_combout\ & (\mux4_1|Mux15~1_combout\ & \mux4_1|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~690_combout\);

-- Location: LC_X15_Y4_N6
\memory1|RAM~707\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~707_combout\ = (\T~combout\(23) & (!\mux4_1|Mux11~1_combout\ & (!\T~combout\(2) & \memory1|RAM~690_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \mux4_1|Mux11~1_combout\,
	datac => \T~combout\(2),
	datad => \memory1|RAM~690_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~707_combout\);

-- Location: LC_X14_Y4_N9
\memory1|RAM~264\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~264_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, \mux8|Y[2]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[2]~6\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~264_regout\);

-- Location: LC_X14_Y9_N7
\memory1|RAM~682\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~682_combout\ = (!\mux4_1|Mux14~1_combout\ & (!\mux4_1|Mux15~1_combout\ & (\mux4_1|Mux12~1_combout\ & \mux4_1|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~682_combout\);

-- Location: LC_X14_Y9_N8
\memory1|RAM~706\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~706_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (!\mux4_1|Mux11~1_combout\ & \memory1|RAM~682_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \mux4_1|Mux11~1_combout\,
	datad => \memory1|RAM~682_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~706_combout\);

-- Location: LC_X12_Y3_N8
\memory1|RAM~216\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~216_regout\ = DFFEAS((((\mux8|Y[2]~6\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[2]~6\,
	aclr => GND,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~216_regout\);

-- Location: LC_X15_Y8_N7
\memory1|RAM~666\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~666_combout\ = (!\mux4_1|Mux15~1_combout\ & (\mux4_1|Mux14~1_combout\ & (\mux4_1|Mux13~1_combout\ & \mux4_1|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \mux4_1|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~666_combout\);

-- Location: LC_X15_Y8_N8
\memory1|RAM~705\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~705_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (!\mux4_1|Mux11~1_combout\ & \memory1|RAM~666_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \mux4_1|Mux11~1_combout\,
	datad => \memory1|RAM~666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~705_combout\);

-- Location: LC_X9_Y4_N8
\memory1|RAM~248\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~725\ = (\mux4_1|Mux14~1_combout\ & (((E1L199Q) # (\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~216_regout\ & ((!\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~216_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[2]~6\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~725\,
	regout => \memory1|RAM~248_regout\);

-- Location: LC_X15_Y4_N0
\memory1|RAM~674\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~674_combout\ = (\mux4_1|Mux12~1_combout\ & (!\mux4_1|Mux14~1_combout\ & (\mux4_1|Mux15~1_combout\ & \mux4_1|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~674_combout\);

-- Location: LC_X15_Y4_N1
\memory1|RAM~704\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~704_combout\ = (\T~combout\(23) & (!\mux4_1|Mux11~1_combout\ & (!\T~combout\(2) & \memory1|RAM~674_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \mux4_1|Mux11~1_combout\,
	datac => \T~combout\(2),
	datad => \memory1|RAM~674_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~704_combout\);

-- Location: LC_X9_Y4_N9
\memory1|RAM~232\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~726\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~725\ & (\memory1|RAM~264_regout\)) # (!\memory1|RAM~725\ & ((E1L186Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~725\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~264_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[2]~6\,
	datad => \memory1|RAM~725\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~726\,
	regout => \memory1|RAM~232_regout\);

-- Location: LC_X14_Y9_N2
\memory1|RAM~684\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~684_combout\ = (\mux4_1|Mux14~1_combout\ & (\mux4_1|Mux15~1_combout\ & (\mux4_1|Mux12~1_combout\ & !\mux4_1|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~684_combout\);

-- Location: LC_X14_Y9_N3
\memory1|RAM~695\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~695_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (!\mux4_1|Mux11~1_combout\ & \memory1|RAM~684_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \mux4_1|Mux11~1_combout\,
	datad => \memory1|RAM~684_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~695_combout\);

-- Location: LC_X14_Y4_N8
\memory1|RAM~200\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~200_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, \mux8|Y[2]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[2]~6\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~200_regout\);

-- Location: LC_X13_Y10_N7
\memory1|RAM~678\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~678_combout\ = (!\mux4_1|Mux15~1_combout\ & (!\mux4_1|Mux13~1_combout\ & (\mux4_1|Mux12~1_combout\ & !\mux4_1|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~678_combout\);

-- Location: LC_X14_Y10_N7
\memory1|RAM~694\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~694_combout\ = (\T~combout\(23) & (!\mux4_1|Mux11~1_combout\ & (!\T~combout\(2) & \memory1|RAM~678_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \mux4_1|Mux11~1_combout\,
	datac => \T~combout\(2),
	datad => \memory1|RAM~678_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~694_combout\);

-- Location: LC_X12_Y6_N1
\memory1|RAM~152\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~152_regout\ = DFFEAS((((\mux8|Y[2]~6\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[2]~6\,
	aclr => GND,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~152_regout\);

-- Location: LC_X10_Y5_N1
\memory1|RAM~668\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~668_combout\ = (!\mux4_1|Mux14~1_combout\ & (\mux4_1|Mux12~1_combout\ & (!\mux4_1|Mux13~1_combout\ & \mux4_1|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \mux4_1|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~668_combout\);

-- Location: LC_X10_Y5_N7
\memory1|RAM~693\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~693_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (!\mux4_1|Mux11~1_combout\ & \memory1|RAM~668_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \mux4_1|Mux11~1_combout\,
	datad => \memory1|RAM~668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~693_combout\);

-- Location: LC_X13_Y4_N8
\memory1|RAM~168\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~718\ = (\mux4_1|Mux15~1_combout\ & (((E1L134Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~152_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~152_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[2]~6\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~718\,
	regout => \memory1|RAM~168_regout\);

-- Location: LC_X13_Y10_N1
\memory1|RAM~662\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~662_combout\ = (!\mux4_1|Mux15~1_combout\ & (!\mux4_1|Mux13~1_combout\ & (\mux4_1|Mux12~1_combout\ & \mux4_1|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~662_combout\);

-- Location: LC_X13_Y10_N3
\memory1|RAM~692\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~692_combout\ = (\T~combout\(23) & (!\mux4_1|Mux11~1_combout\ & (!\T~combout\(2) & \memory1|RAM~662_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \mux4_1|Mux11~1_combout\,
	datac => \T~combout\(2),
	datad => \memory1|RAM~662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~692_combout\);

-- Location: LC_X13_Y4_N0
\memory1|RAM~184\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~719\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~718\ & (\memory1|RAM~200_regout\)) # (!\memory1|RAM~718\ & ((E1L147Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~718\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~200_regout\,
	datac => \mux8|Y[2]~6\,
	datad => \memory1|RAM~718\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~719\,
	regout => \memory1|RAM~184_regout\);

-- Location: LC_X12_Y4_N2
\memory1|RAM~700\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~700_combout\ = (\memory1|RAM~664_combout\ & (!\T~combout\(2) & (\T~combout\(23) & !\mux4_1|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~664_combout\,
	datab => \T~combout\(2),
	datac => \T~combout\(23),
	datad => \mux4_1|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~700_combout\);

-- Location: LC_X9_Y7_N7
\memory1|RAM~56\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~56_regout\ = DFFEAS((((!\mux8|Y[2]~6\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~700_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[2]~6\,
	aclr => GND,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~56_regout\);

-- Location: LC_X15_Y4_N3
\memory1|RAM~701\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~701_combout\ = (\T~combout\(23) & (!\mux4_1|Mux11~1_combout\ & (!\T~combout\(2) & \memory1|RAM~672_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \mux4_1|Mux11~1_combout\,
	datac => \T~combout\(2),
	datad => \memory1|RAM~672_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~701_combout\);

-- Location: LC_X8_Y8_N2
\memory1|RAM~40\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~40_regout\ = DFFEAS((((!\mux8|Y[2]~6\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~701_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[2]~6\,
	aclr => GND,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~40_regout\);

-- Location: LC_X15_Y8_N0
\memory1|RAM~680\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~680_combout\ = (!\mux4_1|Mux15~1_combout\ & (!\mux4_1|Mux14~1_combout\ & (!\mux4_1|Mux13~1_combout\ & !\mux4_1|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \mux4_1|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~680_combout\);

-- Location: LC_X15_Y8_N1
\memory1|RAM~702\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~702_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (!\mux4_1|Mux11~1_combout\ & \memory1|RAM~680_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \mux4_1|Mux11~1_combout\,
	datad => \memory1|RAM~680_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~702_combout\);

-- Location: LC_X16_Y7_N8
\memory1|RAM~24\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~24_regout\ = DFFEAS((((!\mux8|Y[2]~6\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[2]~6\,
	aclr => GND,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~24_regout\);

-- Location: LC_X9_Y7_N3
\memory1|RAM~722\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~722_combout\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & (!\memory1|RAM~40_regout\)) # (!\mux4_1|Mux15~1_combout\ & ((!\memory1|RAM~24_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~40_regout\,
	datab => \memory1|RAM~24_regout\,
	datac => \mux4_1|Mux14~1_combout\,
	datad => \mux4_1|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~722_combout\);

-- Location: LC_X14_Y9_N6
\memory1|RAM~688\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~688_combout\ = (\mux4_1|Mux14~1_combout\ & (\mux4_1|Mux15~1_combout\ & (!\mux4_1|Mux12~1_combout\ & !\mux4_1|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~688_combout\);

-- Location: LC_X14_Y9_N4
\memory1|RAM~703\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~703_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (\memory1|RAM~688_combout\ & !\mux4_1|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \memory1|RAM~688_combout\,
	datad => \mux4_1|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~703_combout\);

-- Location: LC_X9_Y7_N8
\memory1|RAM~72\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~723\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~722_combout\ & ((E1L56Q))) # (!\memory1|RAM~722_combout\ & (!\memory1|RAM~56_regout\)))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~722_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f522",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~56_regout\,
	datac => \mux8|Y[2]~6\,
	datad => \memory1|RAM~722_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~723\,
	regout => \memory1|RAM~72_regout\);

-- Location: LC_X13_Y10_N2
\memory1|RAM~686\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~686_combout\ = (\mux4_1|Mux15~1_combout\ & (\mux4_1|Mux13~1_combout\ & (!\mux4_1|Mux12~1_combout\ & \mux4_1|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~686_combout\);

-- Location: LC_X13_Y10_N0
\memory1|RAM~699\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~699_combout\ = (\T~combout\(23) & (\memory1|RAM~686_combout\ & (!\T~combout\(2) & !\mux4_1|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \memory1|RAM~686_combout\,
	datac => \T~combout\(2),
	datad => \mux4_1|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~699_combout\);

-- Location: LC_X6_Y10_N6
\memory1|RAM~136\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~136_regout\ = DFFEAS((((!\mux8|Y[2]~6\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[2]~6\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~136_regout\);

-- Location: LC_X13_Y10_N8
\memory1|RAM~660\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~660_combout\ = (!\mux4_1|Mux15~1_combout\ & (\mux4_1|Mux13~1_combout\ & (!\mux4_1|Mux12~1_combout\ & \mux4_1|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~660_combout\);

-- Location: LC_X13_Y10_N9
\memory1|RAM~697\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~697_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (!\mux4_1|Mux11~1_combout\ & \memory1|RAM~660_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \mux4_1|Mux11~1_combout\,
	datad => \memory1|RAM~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~697_combout\);

-- Location: LC_X6_Y10_N9
\memory1|RAM~120\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~120_regout\ = DFFEAS((((!\mux8|Y[2]~6\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[2]~6\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~120_regout\);

-- Location: LC_X8_Y9_N9
\memory1|RAM~676\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~676_combout\ = (!\mux4_1|Mux15~1_combout\ & (!\mux4_1|Mux14~1_combout\ & (\mux4_1|Mux13~1_combout\ & !\mux4_1|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \mux4_1|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~676_combout\);

-- Location: LC_X8_Y9_N8
\memory1|RAM~698\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~698_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (!\mux4_1|Mux11~1_combout\ & \memory1|RAM~676_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \mux4_1|Mux11~1_combout\,
	datad => \memory1|RAM~676_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~698_combout\);

-- Location: LC_X10_Y7_N3
\memory1|RAM~88\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~720\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)) # (!\memory1|RAM~120_regout\))) # (!\mux4_1|Mux14~1_combout\ & (((E1L69Q & !\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~120_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[2]~6\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~720\,
	regout => \memory1|RAM~88_regout\);

-- Location: LC_X13_Y7_N0
\memory1|RAM~670\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~670_combout\ = (!\mux4_1|Mux12~1_combout\ & (!\mux4_1|Mux14~1_combout\ & (\mux4_1|Mux15~1_combout\ & \mux4_1|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~670_combout\);

-- Location: LC_X13_Y7_N1
\memory1|RAM~696\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~696_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (!\mux4_1|Mux11~1_combout\ & \memory1|RAM~670_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \mux4_1|Mux11~1_combout\,
	datad => \memory1|RAM~670_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~696_combout\);

-- Location: LC_X10_Y7_N2
\memory1|RAM~104\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~721\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~720\ & (!\memory1|RAM~136_regout\)) # (!\memory1|RAM~720\ & ((E1L82Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~720\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~136_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[2]~6\,
	datad => \memory1|RAM~720\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~721\,
	regout => \memory1|RAM~104_regout\);

-- Location: LC_X13_Y7_N3
\memory1|RAM~724\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~724_combout\ = (\mux4_1|Mux12~1_combout\ & (\mux4_1|Mux13~1_combout\)) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~721\))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~723\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \memory1|RAM~723\,
	datad => \memory1|RAM~721\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~724_combout\);

-- Location: LC_X13_Y7_N4
\memory1|RAM~727\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~727_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~724_combout\ & (\memory1|RAM~726\)) # (!\memory1|RAM~724_combout\ & ((\memory1|RAM~719\))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~724_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~726\,
	datac => \memory1|RAM~719\,
	datad => \memory1|RAM~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~727_combout\);

-- Location: LC_X15_Y4_N7
\memory1|RAM~691\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~691_combout\ = (\memory1|RAM~690_combout\ & (!\T~combout\(2) & (\T~combout\(23) & \mux4_1|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~690_combout\,
	datab => \T~combout\(2),
	datac => \T~combout\(23),
	datad => \mux4_1|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~691_combout\);

-- Location: LC_X16_Y6_N3
\memory1|RAM~520\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~520_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, \mux8|Y[2]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[2]~6\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~520_regout\);

-- Location: LC_X14_Y9_N5
\memory1|RAM~689\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~689_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (\memory1|RAM~688_combout\ & \mux4_1|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \memory1|RAM~688_combout\,
	datad => \mux4_1|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~689_combout\);

-- Location: LC_X14_Y8_N5
\memory1|RAM~328\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~328_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, \mux8|Y[2]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[2]~6\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~328_regout\);

-- Location: LC_X13_Y10_N5
\memory1|RAM~687\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~687_combout\ = (\T~combout\(23) & (\mux4_1|Mux11~1_combout\ & (!\T~combout\(2) & \memory1|RAM~686_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \mux4_1|Mux11~1_combout\,
	datac => \T~combout\(2),
	datad => \memory1|RAM~686_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~687_combout\);

-- Location: LC_X14_Y6_N6
\memory1|RAM~392\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~715\ = (\mux4_1|Mux13~1_combout\ & (((E1L316Q) # (\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~328_regout\ & ((!\mux4_1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~328_regout\,
	datac => \mux8|Y[2]~6\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~715\,
	regout => \memory1|RAM~392_regout\);

-- Location: LC_X14_Y9_N0
\memory1|RAM~685\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~685_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (\mux4_1|Mux11~1_combout\ & \memory1|RAM~684_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \mux4_1|Mux11~1_combout\,
	datad => \memory1|RAM~684_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~685_combout\);

-- Location: LC_X14_Y6_N7
\memory1|RAM~456\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~716\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~715\ & (\memory1|RAM~520_regout\)) # (!\memory1|RAM~715\ & ((E1L368Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~715\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~520_regout\,
	datac => \mux8|Y[2]~6\,
	datad => \memory1|RAM~715\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~716\,
	regout => \memory1|RAM~456_regout\);

-- Location: LC_X15_Y8_N6
\memory1|RAM~667\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~667_combout\ = (\T~combout\(23) & (\memory1|RAM~666_combout\ & (\mux4_1|Mux11~1_combout\ & !\T~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \memory1|RAM~666_combout\,
	datac => \mux4_1|Mux11~1_combout\,
	datad => \T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~667_combout\);

-- Location: LC_X12_Y10_N2
\memory1|RAM~504\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~504_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, \mux8|Y[2]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[2]~6\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~504_regout\);

-- Location: LC_X13_Y10_N4
\memory1|RAM~663\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~663_combout\ = (\T~combout\(23) & (\mux4_1|Mux11~1_combout\ & (!\T~combout\(2) & \memory1|RAM~662_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \mux4_1|Mux11~1_combout\,
	datac => \T~combout\(2),
	datad => \memory1|RAM~662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~663_combout\);

-- Location: LC_X9_Y8_N3
\memory1|RAM~440\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~708\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((E1L355Q))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~312_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~312_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[2]~6\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~708\,
	regout => \memory1|RAM~440_regout\);

-- Location: LC_X13_Y10_N6
\memory1|RAM~661\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~661_combout\ = (\T~combout\(23) & (\mux4_1|Mux11~1_combout\ & (!\T~combout\(2) & \memory1|RAM~660_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \mux4_1|Mux11~1_combout\,
	datac => \T~combout\(2),
	datad => \memory1|RAM~660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~661_combout\);

-- Location: LC_X9_Y8_N4
\memory1|RAM~376\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~709\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~708\ & (\memory1|RAM~504_regout\)) # (!\memory1|RAM~708\ & ((E1L303Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~708\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~504_regout\,
	datac => \mux8|Y[2]~6\,
	datad => \memory1|RAM~708\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~709\,
	regout => \memory1|RAM~376_regout\);

-- Location: LC_X15_Y4_N4
\memory1|RAM~675\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~675_combout\ = (\T~combout\(23) & (\mux4_1|Mux11~1_combout\ & (\memory1|RAM~674_combout\ & !\T~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~674_combout\,
	datad => \T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~675_combout\);

-- Location: LC_X15_Y9_N5
\memory1|RAM~488\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~488_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, \mux8|Y[2]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[2]~6\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~488_regout\);

-- Location: LC_X10_Y9_N7
\memory1|RAM~296\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~296_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, \mux8|Y[2]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[2]~6\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~296_regout\);

-- Location: LC_X13_Y7_N9
\memory1|RAM~671\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~671_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (\memory1|RAM~670_combout\ & \mux4_1|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \memory1|RAM~670_combout\,
	datad => \mux4_1|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~671_combout\);

-- Location: LC_X10_Y6_N9
\memory1|RAM~360\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~710\ = (\mux4_1|Mux13~1_combout\ & (((E1L290Q) # (\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~296_regout\ & ((!\mux4_1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~296_regout\,
	datac => \mux8|Y[2]~6\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~710\,
	regout => \memory1|RAM~360_regout\);

-- Location: LC_X10_Y5_N2
\memory1|RAM~669\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~669_combout\ = (\T~combout\(23) & (\memory1|RAM~668_combout\ & (\mux4_1|Mux11~1_combout\ & !\T~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \memory1|RAM~668_combout\,
	datac => \mux4_1|Mux11~1_combout\,
	datad => \T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~669_combout\);

-- Location: LC_X13_Y7_N2
\memory1|RAM~424\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~711\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~710\ & (\memory1|RAM~488_regout\)) # (!\memory1|RAM~710\ & ((E1L342Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~710\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~488_regout\,
	datac => \mux8|Y[2]~6\,
	datad => \memory1|RAM~710\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~711\,
	regout => \memory1|RAM~424_regout\);

-- Location: LC_X14_Y9_N9
\memory1|RAM~683\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~683_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (\memory1|RAM~682_combout\ & \mux4_1|Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \memory1|RAM~682_combout\,
	datad => \mux4_1|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~683_combout\);

-- Location: LC_X14_Y5_N4
\memory1|RAM~472\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~472_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, \mux8|Y[2]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[2]~6\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~472_regout\);

-- Location: LC_X15_Y8_N5
\memory1|RAM~681\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~681_combout\ = (\T~combout\(23) & (\memory1|RAM~680_combout\ & (\mux4_1|Mux11~1_combout\ & !\T~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \memory1|RAM~680_combout\,
	datac => \mux4_1|Mux11~1_combout\,
	datad => \T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~681_combout\);

-- Location: LC_X16_Y4_N2
\memory1|RAM~280\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~280_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, \mux8|Y[2]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[2]~6\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~280_regout\);

-- Location: LC_X14_Y10_N5
\memory1|RAM~679\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~679_combout\ = (\T~combout\(23) & (\mux4_1|Mux11~1_combout\ & (!\T~combout\(2) & \memory1|RAM~678_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \mux4_1|Mux11~1_combout\,
	datac => \T~combout\(2),
	datad => \memory1|RAM~678_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~679_combout\);

-- Location: LC_X11_Y4_N8
\memory1|RAM~408\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~712\ = (\mux4_1|Mux12~1_combout\ & (((E1L329Q) # (\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~280_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~280_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[2]~6\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~712\,
	regout => \memory1|RAM~408_regout\);

-- Location: LC_X8_Y9_N3
\memory1|RAM~677\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~677_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (\mux4_1|Mux11~1_combout\ & \memory1|RAM~676_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \mux4_1|Mux11~1_combout\,
	datad => \memory1|RAM~676_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~677_combout\);

-- Location: LC_X11_Y4_N9
\memory1|RAM~344\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~713\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~712\ & (\memory1|RAM~472_regout\)) # (!\memory1|RAM~712\ & ((E1L277Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~712\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~472_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[2]~6\,
	datad => \memory1|RAM~712\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~713\,
	regout => \memory1|RAM~344_regout\);

-- Location: LC_X13_Y7_N5
\memory1|RAM~714\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~714_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~711\) # ((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (((!\mux4_1|Mux14~1_combout\ & \memory1|RAM~713\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~711\,
	datac => \mux4_1|Mux14~1_combout\,
	datad => \memory1|RAM~713\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~714_combout\);

-- Location: LC_X13_Y7_N6
\memory1|RAM~717\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~717_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~714_combout\ & (\memory1|RAM~716\)) # (!\memory1|RAM~714_combout\ & ((\memory1|RAM~709\))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~714_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~716\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \memory1|RAM~709\,
	datad => \memory1|RAM~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~717_combout\);

-- Location: LC_X13_Y7_N7
\memory1|RAM~728\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~728_combout\ = (\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~717_combout\)))) # (!\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~727_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~727_combout\,
	datad => \memory1|RAM~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~728_combout\);

-- Location: LC_X13_Y7_N8
\memory1|memout[2]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(2) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~728_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~728_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(2));

-- Location: LC_X6_Y6_N8
\instruction_register|q[2]\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux13~0\ = (\mux8_2|Mux14~0_combout\ & ((\T~combout\(14) & ((D1_q[2]))) # (!\T~combout\(14) & (\t2|q\(2)))))
-- \instruction_register|q\(2) = DFFEAS(\mux8_2|Mux13~0\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \memory1|memout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_2|Mux14~0_combout\,
	datab => \t2|q\(2),
	datac => \memory1|memout\(2),
	datad => \T~combout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux13~0\,
	regout => \instruction_register|q\(2));

-- Location: LC_X6_Y6_N0
\mux8_1|Mux13~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux13~0_combout\ = (\mux8_1|Mux9~2_combout\ & (\t2|q\(2) & (\mux8_1|Mux9~1_combout\))) # (!\mux8_1|Mux9~2_combout\ & (((\PC|q\(2)) # (!\mux8_1|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d585",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux9~2_combout\,
	datab => \t2|q\(2),
	datac => \mux8_1|Mux9~1_combout\,
	datad => \PC|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux13~0_combout\);

-- Location: LC_X6_Y6_N1
\PC1|q[2]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux13\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux13~0_combout\ & (\t1|q\(2))) # (!\mux8_1|Mux13~0_combout\ & ((K2_q[2]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(2),
	datac => \PC|q\(2),
	datad => \mux8_1|Mux13~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux13\,
	regout => \PC1|q\(2));

-- Location: LC_X6_Y7_N8
\alu1|Mux13~1\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux13~1_combout\ = (\T~combout\(27) & ((\alu1|Mux13~0_combout\ & ((\mux8_2|Mux13~0\) # (\mux8_1|Mux13\))) # (!\alu1|Mux13~0_combout\ & ((!\mux8_1|Mux13\) # (!\mux8_2|Mux13~0\))))) # (!\T~combout\(27) & (\alu1|Mux13~0_combout\ $ (\mux8_2|Mux13~0\ $ 
-- (\mux8_1|Mux13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbb6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(27),
	datab => \alu1|Mux13~0_combout\,
	datac => \mux8_2|Mux13~0\,
	datad => \mux8_1|Mux13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux13~1_combout\);

-- Location: LC_X10_Y6_N3
\t1|q[2]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(2) = DFFEAS(((\T~combout\(16) & ((\alu1|Mux13~1_combout\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(16),
	datad => \alu1|Mux13~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(2));

-- Location: LC_X10_Y6_N5
\mux4_1|Mux13~1\ : maxv_lcell
-- Equation(s):
-- \mux4_1|Mux13~1_combout\ = (\T~combout\(19) & (\t1|q\(2) & (!\T~combout\(20)))) # (!\T~combout\(19) & (((\mux4_1|Mux13~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|q\(2),
	datab => \T~combout\(20),
	datac => \T~combout\(19),
	datad => \mux4_1|Mux13~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux4_1|Mux13~1_combout\);

-- Location: LC_X15_Y4_N9
\memory1|RAM~672\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~672_combout\ = (!\mux4_1|Mux12~1_combout\ & (!\mux4_1|Mux14~1_combout\ & (\mux4_1|Mux15~1_combout\ & !\mux4_1|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~672_combout\);

-- Location: LC_X15_Y4_N8
\memory1|RAM~673\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~673_combout\ = (\T~combout\(23) & (\mux4_1|Mux11~1_combout\ & (!\T~combout\(2) & \memory1|RAM~672_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \mux4_1|Mux11~1_combout\,
	datac => \T~combout\(2),
	datad => \memory1|RAM~672_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~673_combout\);

-- Location: LC_X10_Y9_N3
\memory1|RAM~297\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[3]~7\ = ((\T~combout\(25) & (\t3|q\(3))) # (!\T~combout\(25) & ((\t1|q\(3)))))
-- \memory1|RAM~297_regout\ = DFFEAS(\mux8|Y[3]~7\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t3|q\(3),
	datac => \T~combout\(25),
	datad => \t1|q\(3),
	aclr => GND,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[3]~7\,
	regout => \memory1|RAM~297_regout\);

-- Location: LC_X15_Y9_N9
\memory1|RAM~489\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~489_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, \mux8|Y[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[3]~7\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~489_regout\);

-- Location: LC_X9_Y9_N0
\memory1|RAM~425\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~729\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((E1L343Q))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~297_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~297_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[3]~7\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~729\,
	regout => \memory1|RAM~425_regout\);

-- Location: LC_X9_Y9_N1
\memory1|RAM~361\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~730\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~729\ & (\memory1|RAM~489_regout\)) # (!\memory1|RAM~729\ & ((E1L291Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~729\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~489_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[3]~7\,
	datad => \memory1|RAM~729\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~730\,
	regout => \memory1|RAM~361_regout\);

-- Location: LC_X15_Y9_N4
\memory1|RAM~521\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~521_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, \mux8|Y[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[3]~7\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~521_regout\);

-- Location: LC_X13_Y9_N9
\memory1|RAM~329\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~329_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, \mux8|Y[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[3]~7\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~329_regout\);

-- Location: LC_X11_Y9_N1
\memory1|RAM~457\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~736\ = (\mux4_1|Mux12~1_combout\ & (((E1L369Q) # (\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~329_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~329_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[3]~7\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~736\,
	regout => \memory1|RAM~457_regout\);

-- Location: LC_X11_Y9_N2
\memory1|RAM~393\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~737\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~736\ & (\memory1|RAM~521_regout\)) # (!\memory1|RAM~736\ & ((E1L317Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~736\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~521_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[3]~7\,
	datad => \memory1|RAM~736\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~737\,
	regout => \memory1|RAM~393_regout\);

-- Location: LC_X6_Y4_N5
\memory1|RAM~505\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~505_regout\ = DFFEAS((((\mux8|Y[3]~7\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[3]~7\,
	aclr => GND,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~505_regout\);

-- Location: LC_X10_Y9_N2
\memory1|RAM~313\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~313_regout\ = DFFEAS((((\mux8|Y[3]~7\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[3]~7\,
	aclr => GND,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~313_regout\);

-- Location: LC_X7_Y9_N0
\memory1|RAM~377\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~731\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((E1L304Q))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~313_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~313_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[3]~7\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~731\,
	regout => \memory1|RAM~377_regout\);

-- Location: LC_X7_Y9_N1
\memory1|RAM~441\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~732\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~731\ & (\memory1|RAM~505_regout\)) # (!\memory1|RAM~731\ & ((E1L356Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~731\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~505_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[3]~7\,
	datad => \memory1|RAM~731\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~732\,
	regout => \memory1|RAM~441_regout\);

-- Location: LC_X14_Y5_N1
\memory1|RAM~473\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~473_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, \mux8|Y[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[3]~7\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~473_regout\);

-- Location: LC_X16_Y6_N7
\memory1|RAM~281\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~281_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, \mux8|Y[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[3]~7\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~281_regout\);

-- Location: LC_X11_Y6_N2
\memory1|RAM~345\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~733\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((E1L278Q))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~281_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~281_regout\,
	datac => \mux8|Y[3]~7\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~733\,
	regout => \memory1|RAM~345_regout\);

-- Location: LC_X11_Y6_N3
\memory1|RAM~409\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~734\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~733\ & (\memory1|RAM~473_regout\)) # (!\memory1|RAM~733\ & ((E1L330Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~733\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~473_regout\,
	datac => \mux8|Y[3]~7\,
	datad => \memory1|RAM~733\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~734\,
	regout => \memory1|RAM~409_regout\);

-- Location: LC_X8_Y9_N1
\memory1|RAM~735\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~735_combout\ = (\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\) # ((\memory1|RAM~732\)))) # (!\mux4_1|Mux14~1_combout\ & (!\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~734\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \memory1|RAM~732\,
	datad => \memory1|RAM~734\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~735_combout\);

-- Location: LC_X8_Y9_N0
\memory1|RAM~738\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~738_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~735_combout\ & ((\memory1|RAM~737\))) # (!\memory1|RAM~735_combout\ & (\memory1|RAM~730\)))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~735_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~730\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \memory1|RAM~737\,
	datad => \memory1|RAM~735_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~738_combout\);

-- Location: LC_X6_Y4_N1
\memory1|RAM~121\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~121_regout\ = DFFEAS((((!\mux8|Y[3]~7\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[3]~7\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~121_regout\);

-- Location: LC_X7_Y4_N1
\memory1|RAM~137\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~137_regout\ = DFFEAS((((!\mux8|Y[3]~7\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[3]~7\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~137_regout\);

-- Location: LC_X9_Y5_N8
\memory1|RAM~89\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~89_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~698_combout\, \mux8|Y[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[3]~7\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~89_regout\);

-- Location: LC_X9_Y5_N9
\memory1|RAM~105\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~739\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & ((E1L83Q))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~89_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~89_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[3]~7\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~739\,
	regout => \memory1|RAM~105_regout\);

-- Location: LC_X9_Y5_N2
\memory1|RAM~740\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~740_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~739\ & ((!\memory1|RAM~137_regout\))) # (!\memory1|RAM~739\ & (!\memory1|RAM~121_regout\)))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~739\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~121_regout\,
	datab => \memory1|RAM~137_regout\,
	datac => \mux4_1|Mux14~1_combout\,
	datad => \memory1|RAM~739\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~740_combout\);

-- Location: LC_X13_Y3_N8
\memory1|RAM~265\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~265_regout\ = DFFEAS((((\mux8|Y[3]~7\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[3]~7\,
	aclr => GND,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~265_regout\);

-- Location: LC_X12_Y3_N5
\memory1|RAM~217\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~217_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, \mux8|Y[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[3]~7\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~217_regout\);

-- Location: LC_X12_Y9_N1
\memory1|RAM~233\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~746\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & ((E1L187Q))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~217_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~217_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[3]~7\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~746\,
	regout => \memory1|RAM~233_regout\);

-- Location: LC_X12_Y9_N6
\memory1|RAM~249\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~747\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~746\ & (\memory1|RAM~265_regout\)) # (!\memory1|RAM~746\ & ((E1L200Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~746\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~265_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[3]~7\,
	datad => \memory1|RAM~746\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~747\,
	regout => \memory1|RAM~249_regout\);

-- Location: LC_X8_Y10_N6
\memory1|RAM~201\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~201_regout\ = DFFEAS((((\mux8|Y[3]~7\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[3]~7\,
	aclr => GND,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~201_regout\);

-- Location: LC_X7_Y10_N4
\memory1|RAM~153\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~153_regout\ = DFFEAS((((\mux8|Y[3]~7\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[3]~7\,
	aclr => GND,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~153_regout\);

-- Location: LC_X7_Y10_N5
\memory1|RAM~185\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~741\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & ((E1L148Q))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~153_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~153_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[3]~7\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~741\,
	regout => \memory1|RAM~185_regout\);

-- Location: LC_X8_Y9_N7
\memory1|RAM~169\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~742\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~741\ & (\memory1|RAM~201_regout\)) # (!\memory1|RAM~741\ & ((E1L135Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~741\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~201_regout\,
	datac => \mux8|Y[3]~7\,
	datad => \memory1|RAM~741\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~742\,
	regout => \memory1|RAM~169_regout\);

-- Location: LC_X8_Y5_N9
\memory1|RAM~73\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~73_regout\ = DFFEAS((((!\mux8|Y[3]~7\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~703_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[3]~7\,
	aclr => GND,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~73_regout\);

-- Location: LC_X7_Y5_N9
\memory1|RAM~25\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~25_regout\ = DFFEAS((((!\mux8|Y[3]~7\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[3]~7\,
	aclr => GND,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~25_regout\);

-- Location: LC_X7_Y5_N2
\memory1|RAM~57\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~743\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & ((E1L44Q))) # (!\mux4_1|Mux14~1_combout\ & (!\memory1|RAM~25_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc11",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~25_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[3]~7\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~743\,
	regout => \memory1|RAM~57_regout\);

-- Location: LC_X8_Y5_N5
\memory1|RAM~41\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~744\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~743\ & (!\memory1|RAM~73_regout\)) # (!\memory1|RAM~743\ & ((E1L31Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~743\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~73_regout\,
	datac => \mux8|Y[3]~7\,
	datad => \memory1|RAM~743\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~744\,
	regout => \memory1|RAM~41_regout\);

-- Location: LC_X8_Y9_N4
\memory1|RAM~745\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~745_combout\ = (\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\) # ((\memory1|RAM~742\)))) # (!\mux4_1|Mux12~1_combout\ & (!\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~744\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \memory1|RAM~742\,
	datad => \memory1|RAM~744\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~745_combout\);

-- Location: LC_X8_Y9_N5
\memory1|RAM~748\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~748_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~745_combout\ & ((\memory1|RAM~747\))) # (!\memory1|RAM~745_combout\ & (\memory1|RAM~740_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~745_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~740_combout\,
	datac => \memory1|RAM~747\,
	datad => \memory1|RAM~745_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~748_combout\);

-- Location: LC_X8_Y9_N6
\memory1|RAM~749\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~749_combout\ = (\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~738_combout\)))) # (!\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~748_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~738_combout\,
	datad => \memory1|RAM~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~749_combout\);

-- Location: LC_X8_Y9_N2
\memory1|memout[3]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(3) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~749_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~749_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(3));

-- Location: LC_X6_Y6_N7
\instruction_register|q[3]\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux12~0\ = (\mux8_2|Mux14~0_combout\ & ((\T~combout\(14) & (D1_q[3])) # (!\T~combout\(14) & ((\t2|q\(3))))))
-- \instruction_register|q\(3) = DFFEAS(\mux8_2|Mux12~0\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \memory1|memout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_2|Mux14~0_combout\,
	datab => \T~combout\(14),
	datac => \memory1|memout\(3),
	datad => \t2|q\(3),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux12~0\,
	regout => \instruction_register|q\(3));

-- Location: LC_X6_Y6_N3
\mux8_1|Mux12~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux12~0_combout\ = (\mux8_1|Mux9~2_combout\ & (\mux8_1|Mux9~1_combout\ & (\t2|q\(3)))) # (!\mux8_1|Mux9~2_combout\ & (((\PC|q\(3))) # (!\mux8_1|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux9~2_combout\,
	datab => \mux8_1|Mux9~1_combout\,
	datac => \t2|q\(3),
	datad => \PC|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux12~0_combout\);

-- Location: LC_X6_Y6_N4
\PC1|q[3]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux12\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux12~0_combout\ & (\t1|q\(3))) # (!\mux8_1|Mux12~0_combout\ & ((K2_q[3]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(3),
	datac => \PC|q\(3),
	datad => \mux8_1|Mux12~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux12\,
	regout => \PC1|q\(3));

-- Location: LC_X5_Y7_N0
\alu1|sub1|ist_sub:2:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:2:F1|Borrow~0_combout\ = ((\mux8_2|Mux13~0\ & ((\alu1|sub1|ist_sub:1:F1|Borrow~0_combout\) # (!\mux8_1|Mux13\))) # (!\mux8_2|Mux13~0\ & (!\mux8_1|Mux13\ & \alu1|sub1|ist_sub:1:F1|Borrow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_2|Mux13~0\,
	datac => \mux8_1|Mux13\,
	datad => \alu1|sub1|ist_sub:1:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:2:F1|Borrow~0_combout\);

-- Location: LC_X4_Y6_N8
\alu1|add1|ist_add:2:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:2:F1|cout~0_combout\ = (\mux8_2|Mux13~0\ & (((\alu1|add1|ist_add:1:F1|cout~0_combout\) # (\mux8_1|Mux13\)))) # (!\mux8_2|Mux13~0\ & (((\alu1|add1|ist_add:1:F1|cout~0_combout\ & \mux8_1|Mux13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux13~0\,
	datac => \alu1|add1|ist_add:1:F1|cout~0_combout\,
	datad => \mux8_1|Mux13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:2:F1|cout~0_combout\);

-- Location: LC_X5_Y8_N3
\alu1|Mux12~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux12~0_combout\ = (\T~combout\(26) & ((\T~combout\(27)) # ((\alu1|sub1|ist_sub:2:F1|Borrow~0_combout\)))) # (!\T~combout\(26) & (!\T~combout\(27) & ((\alu1|add1|ist_add:2:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(26),
	datab => \T~combout\(27),
	datac => \alu1|sub1|ist_sub:2:F1|Borrow~0_combout\,
	datad => \alu1|add1|ist_add:2:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux12~0_combout\);

-- Location: LC_X5_Y8_N5
\alu1|Mux12~1\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux12~1_combout\ = (\T~combout\(27) & ((\mux8_2|Mux12~0\ & ((\alu1|Mux12~0_combout\) # (!\mux8_1|Mux12\))) # (!\mux8_2|Mux12~0\ & ((\mux8_1|Mux12\) # (!\alu1|Mux12~0_combout\))))) # (!\T~combout\(27) & (\mux8_2|Mux12~0\ $ (\mux8_1|Mux12\ $ 
-- (\alu1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e95e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux12~0\,
	datab => \T~combout\(27),
	datac => \mux8_1|Mux12\,
	datad => \alu1|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux12~1_combout\);

-- Location: LC_X6_Y6_N9
\t1|q[3]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(3) = DFFEAS((((\T~combout\(16) & \alu1|Mux12~1_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \T~combout\(16),
	datad => \alu1|Mux12~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(3));

-- Location: LC_X10_Y6_N8
\mux4_1|Mux12~1\ : maxv_lcell
-- Equation(s):
-- \mux4_1|Mux12~1_combout\ = (\T~combout\(19) & (!\T~combout\(20) & (\t1|q\(3)))) # (!\T~combout\(19) & (((\mux4_1|Mux12~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(19),
	datab => \T~combout\(20),
	datac => \t1|q\(3),
	datad => \mux4_1|Mux12~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux4_1|Mux12~1_combout\);

-- Location: LC_X12_Y4_N8
\memory1|RAM~664\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~664_combout\ = (!\mux4_1|Mux12~1_combout\ & (!\mux4_1|Mux13~1_combout\ & (!\mux4_1|Mux15~1_combout\ & \mux4_1|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~664_combout\);

-- Location: LC_X12_Y4_N1
\memory1|RAM~665\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~665_combout\ = (\T~combout\(23) & (!\T~combout\(2) & (\mux4_1|Mux11~1_combout\ & \memory1|RAM~664_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(23),
	datab => \T~combout\(2),
	datac => \mux4_1|Mux11~1_combout\,
	datad => \memory1|RAM~664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~665_combout\);

-- Location: LC_X8_Y6_N1
\memory1|RAM~310\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[0]~4\ = ((\T~combout\(25) & ((\t3|q\(0)))) # (!\T~combout\(25) & (\t1|q\(0))))
-- \memory1|RAM~310_regout\ = DFFEAS(\mux8|Y[0]~4\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t1|q\(0),
	datac => \t3|q\(0),
	datad => \T~combout\(25),
	aclr => GND,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[0]~4\,
	regout => \memory1|RAM~310_regout\);

-- Location: LC_X15_Y8_N3
\memory1|RAM~502\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~502_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, \mux8|Y[0]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[0]~4\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~502_regout\);

-- Location: LC_X9_Y8_N9
\memory1|RAM~438\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~618\ = (\mux4_1|Mux12~1_combout\ & (((E1L353Q) # (\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~310_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~310_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[0]~4\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~618\,
	regout => \memory1|RAM~438_regout\);

-- Location: LC_X9_Y8_N0
\memory1|RAM~374\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~619\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~618\ & (\memory1|RAM~502_regout\)) # (!\memory1|RAM~618\ & ((E1L301Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~618\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~502_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[0]~4\,
	datad => \memory1|RAM~618\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~619\,
	regout => \memory1|RAM~374_regout\);

-- Location: LC_X15_Y5_N7
\memory1|RAM~518\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~518_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, \mux8|Y[0]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[0]~4\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~518_regout\);

-- Location: LC_X14_Y8_N3
\memory1|RAM~326\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~326_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, \mux8|Y[0]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[0]~4\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~326_regout\);

-- Location: LC_X14_Y6_N1
\memory1|RAM~390\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~625\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((E1L314Q))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~326_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~326_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[0]~4\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~625\,
	regout => \memory1|RAM~390_regout\);

-- Location: LC_X14_Y6_N2
\memory1|RAM~454\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~626\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~625\ & (\memory1|RAM~518_regout\)) # (!\memory1|RAM~625\ & ((E1L366Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~625\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~518_regout\,
	datac => \mux8|Y[0]~4\,
	datad => \memory1|RAM~625\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~626\,
	regout => \memory1|RAM~454_regout\);

-- Location: LC_X14_Y5_N6
\memory1|RAM~470\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~470_regout\ = DFFEAS((((\mux8|Y[0]~4\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[0]~4\,
	aclr => GND,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~470_regout\);

-- Location: LC_X11_Y5_N0
\memory1|RAM~278\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~278_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, \mux8|Y[0]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[0]~4\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~278_regout\);

-- Location: LC_X11_Y4_N5
\memory1|RAM~406\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~622\ = (\mux4_1|Mux12~1_combout\ & (((E1L327Q) # (\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~278_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~278_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[0]~4\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~622\,
	regout => \memory1|RAM~406_regout\);

-- Location: LC_X11_Y4_N6
\memory1|RAM~342\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~623\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~622\ & (\memory1|RAM~470_regout\)) # (!\memory1|RAM~622\ & ((E1L275Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~622\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~470_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[0]~4\,
	datad => \memory1|RAM~622\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~623\,
	regout => \memory1|RAM~342_regout\);

-- Location: LC_X14_Y3_N4
\memory1|RAM~486\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~486_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, \mux8|Y[0]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[0]~4\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~486_regout\);

-- Location: LC_X15_Y6_N3
\memory1|RAM~294\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~294_regout\ = DFFEAS((((\mux8|Y[0]~4\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[0]~4\,
	aclr => GND,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~294_regout\);

-- Location: LC_X10_Y6_N1
\memory1|RAM~358\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~620\ = (\mux4_1|Mux13~1_combout\ & (((E1L288Q) # (\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~294_regout\ & ((!\mux4_1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~294_regout\,
	datac => \mux8|Y[0]~4\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~620\,
	regout => \memory1|RAM~358_regout\);

-- Location: LC_X10_Y4_N9
\memory1|RAM~422\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~621\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~620\ & (\memory1|RAM~486_regout\)) # (!\memory1|RAM~620\ & ((E1L340Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~620\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~486_regout\,
	datac => \mux8|Y[0]~4\,
	datad => \memory1|RAM~620\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~621\,
	regout => \memory1|RAM~422_regout\);

-- Location: LC_X10_Y4_N1
\memory1|RAM~624\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~624_combout\ = (\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\) # ((\memory1|RAM~621\)))) # (!\mux4_1|Mux15~1_combout\ & (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~623\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \memory1|RAM~623\,
	datad => \memory1|RAM~621\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~624_combout\);

-- Location: LC_X10_Y4_N0
\memory1|RAM~627\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~627_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~624_combout\ & ((\memory1|RAM~626\))) # (!\memory1|RAM~624_combout\ & (\memory1|RAM~619\)))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~624_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~619\,
	datac => \memory1|RAM~626\,
	datad => \memory1|RAM~624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~627_combout\);

-- Location: LC_X7_Y4_N8
\memory1|RAM~262\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~262_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, \mux8|Y[0]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[0]~4\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~262_regout\);

-- Location: LC_X12_Y3_N4
\memory1|RAM~214\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~214_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, \mux8|Y[0]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[0]~4\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~214_regout\);

-- Location: LC_X9_Y4_N6
\memory1|RAM~246\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~635\ = (\mux4_1|Mux14~1_combout\ & (((E1L197Q) # (\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~214_regout\ & ((!\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~214_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[0]~4\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~635\,
	regout => \memory1|RAM~246_regout\);

-- Location: LC_X9_Y4_N7
\memory1|RAM~230\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~636\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~635\ & (\memory1|RAM~262_regout\)) # (!\memory1|RAM~635\ & ((E1L184Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~635\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~262_regout\,
	datac => \mux8|Y[0]~4\,
	datad => \memory1|RAM~635\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~636\,
	regout => \memory1|RAM~230_regout\);

-- Location: LC_X14_Y4_N1
\memory1|RAM~198\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~198_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, \mux8|Y[0]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[0]~4\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~198_regout\);

-- Location: LC_X13_Y6_N7
\memory1|RAM~150\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~150_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, \mux8|Y[0]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[0]~4\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~150_regout\);

-- Location: LC_X13_Y4_N6
\memory1|RAM~166\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~628\ = (\mux4_1|Mux15~1_combout\ & (((E1L132Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~150_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~150_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[0]~4\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~628\,
	regout => \memory1|RAM~166_regout\);

-- Location: LC_X13_Y4_N7
\memory1|RAM~182\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~629\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~628\ & (\memory1|RAM~198_regout\)) # (!\memory1|RAM~628\ & ((E1L145Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~628\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~198_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[0]~4\,
	datad => \memory1|RAM~628\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~629\,
	regout => \memory1|RAM~182_regout\);

-- Location: LC_X9_Y7_N4
\memory1|RAM~54\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~54_regout\ = DFFEAS((((!\mux8|Y[0]~4\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~700_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[0]~4\,
	aclr => GND,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~54_regout\);

-- Location: LC_X8_Y7_N1
\memory1|RAM~38\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~38_regout\ = DFFEAS((((!\mux8|Y[0]~4\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~701_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[0]~4\,
	aclr => GND,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~38_regout\);

-- Location: LC_X8_Y7_N7
\memory1|RAM~22\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~22_regout\ = DFFEAS((((!\mux8|Y[0]~4\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[0]~4\,
	aclr => GND,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~22_regout\);

-- Location: LC_X9_Y7_N5
\memory1|RAM~632\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~632_combout\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & (!\memory1|RAM~38_regout\)) # (!\mux4_1|Mux15~1_combout\ & ((!\memory1|RAM~22_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~38_regout\,
	datab => \memory1|RAM~22_regout\,
	datac => \mux4_1|Mux14~1_combout\,
	datad => \mux4_1|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~632_combout\);

-- Location: LC_X9_Y7_N6
\memory1|RAM~70\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~633\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~632_combout\ & ((E1L54Q))) # (!\memory1|RAM~632_combout\ & (!\memory1|RAM~54_regout\)))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~632_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f344",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~54_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[0]~4\,
	datad => \memory1|RAM~632_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~633\,
	regout => \memory1|RAM~70_regout\);

-- Location: LC_X8_Y4_N1
\memory1|RAM~102\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~102_regout\ = DFFEAS((((!\mux8|Y[0]~4\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~696_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[0]~4\,
	aclr => GND,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~102_regout\);

-- Location: LC_X7_Y4_N4
\memory1|RAM~134\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~134_regout\ = DFFEAS((((!\mux8|Y[0]~4\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[0]~4\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~134_regout\);

-- Location: LC_X8_Y4_N5
\memory1|RAM~118\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~118_regout\ = DFFEAS((((!\mux8|Y[0]~4\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[0]~4\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~118_regout\);

-- Location: LC_X9_Y5_N5
\memory1|RAM~86\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~630\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)) # (!\memory1|RAM~118_regout\))) # (!\mux4_1|Mux14~1_combout\ & (((E1L67Q & !\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~118_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[0]~4\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~630\,
	regout => \memory1|RAM~86_regout\);

-- Location: LC_X10_Y4_N4
\memory1|RAM~631\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~631_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~630\ & ((!\memory1|RAM~134_regout\))) # (!\memory1|RAM~630\ & (!\memory1|RAM~102_regout\)))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~630\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~102_regout\,
	datac => \memory1|RAM~134_regout\,
	datad => \memory1|RAM~630\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~631_combout\);

-- Location: LC_X10_Y4_N5
\memory1|RAM~634\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~634_combout\ = (\mux4_1|Mux12~1_combout\ & (\mux4_1|Mux13~1_combout\)) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~631_combout\))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~633\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \memory1|RAM~633\,
	datad => \memory1|RAM~631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~634_combout\);

-- Location: LC_X10_Y4_N6
\memory1|RAM~637\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~637_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~634_combout\ & (\memory1|RAM~636\)) # (!\memory1|RAM~634_combout\ & ((\memory1|RAM~629\))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~634_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~636\,
	datac => \memory1|RAM~629\,
	datad => \memory1|RAM~634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~637_combout\);

-- Location: LC_X10_Y4_N7
\memory1|RAM~638\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~638_combout\ = (\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~627_combout\)))) # (!\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~637_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~627_combout\,
	datad => \memory1|RAM~637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~638_combout\);

-- Location: LC_X10_Y4_N2
\memory1|memout[0]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(0) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~638_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~638_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(0));

-- Location: LC_X5_Y6_N6
\instruction_register|q[0]\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux15~0\ = (\T~combout\(14) & ((\T~combout\(13)) # ((D1_q[0])))) # (!\T~combout\(14) & (!\T~combout\(13) & ((\t2|q\(0)))))
-- \instruction_register|q\(0) = DFFEAS(\mux8_2|Mux15~0\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \memory1|memout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(14),
	datab => \T~combout\(13),
	datac => \memory1|memout\(0),
	datad => \t2|q\(0),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux15~0\,
	regout => \instruction_register|q\(0));

-- Location: LC_X5_Y6_N7
\mux8_2|Mux15~1\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux15~1_combout\ = (((!\T~combout\(15) & \mux8_2|Mux15~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \T~combout\(15),
	datad => \mux8_2|Mux15~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux15~1_combout\);

-- Location: LC_X5_Y8_N4
\alu1|Mux15~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux15~0_combout\ = (\mux8_2|Mux15~1_combout\ & (((\T~combout\(26) & \T~combout\(27))) # (!\mux8_1|Mux15\))) # (!\mux8_2|Mux15~1_combout\ & ((\mux8_1|Mux15\) # ((!\T~combout\(26) & \T~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bd3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(26),
	datab => \mux8_2|Mux15~1_combout\,
	datac => \mux8_1|Mux15\,
	datad => \T~combout\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux15~0_combout\);

-- Location: LC_X8_Y6_N8
\t1|q[0]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(0) = DFFEAS((((\alu1|Mux15~0_combout\ & \T~combout\(16)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \alu1|Mux15~0_combout\,
	datad => \T~combout\(16),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(0));

-- Location: LC_X8_Y6_N6
\mux4_1|Mux15~1\ : maxv_lcell
-- Equation(s):
-- \mux4_1|Mux15~1_combout\ = (\T~combout\(19) & (\t1|q\(0) & (!\T~combout\(20)))) # (!\T~combout\(19) & (((\mux4_1|Mux15~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|q\(0),
	datab => \T~combout\(20),
	datac => \T~combout\(19),
	datad => \mux4_1|Mux15~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux4_1|Mux15~1_combout\);

-- Location: LC_X10_Y9_N4
\memory1|RAM~295\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[1]~5\ = ((\T~combout\(25) & ((\t3|q\(1)))) # (!\T~combout\(25) & (\t1|q\(1))))
-- \memory1|RAM~295_regout\ = DFFEAS(\mux8|Y[1]~5\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(25),
	datac => \t1|q\(1),
	datad => \t3|q\(1),
	aclr => GND,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[1]~5\,
	regout => \memory1|RAM~295_regout\);

-- Location: LC_X15_Y9_N1
\memory1|RAM~519\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~519_regout\ = DFFEAS((((\mux8|Y[1]~5\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[1]~5\,
	aclr => GND,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~519_regout\);

-- Location: LC_X13_Y9_N8
\memory1|RAM~327\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~327_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, \mux8|Y[1]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[1]~5\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~327_regout\);

-- Location: LC_X11_Y9_N3
\memory1|RAM~455\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~646\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((E1L367Q))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~327_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~327_regout\,
	datac => \mux8|Y[1]~5\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~646\,
	regout => \memory1|RAM~455_regout\);

-- Location: LC_X11_Y9_N6
\memory1|RAM~391\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~647\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~646\ & (\memory1|RAM~519_regout\)) # (!\memory1|RAM~646\ & ((E1L315Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~646\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~519_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[1]~5\,
	datad => \memory1|RAM~646\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~647\,
	regout => \memory1|RAM~391_regout\);

-- Location: LC_X15_Y9_N6
\memory1|RAM~487\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~487_regout\ = DFFEAS((((\mux8|Y[1]~5\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[1]~5\,
	aclr => GND,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~487_regout\);

-- Location: LC_X9_Y9_N5
\memory1|RAM~423\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~639\ = (\mux4_1|Mux12~1_combout\ & (((E1L341Q) # (\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~295_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~295_regout\,
	datac => \mux8|Y[1]~5\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~639\,
	regout => \memory1|RAM~423_regout\);

-- Location: LC_X9_Y9_N6
\memory1|RAM~359\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~640\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~639\ & (\memory1|RAM~487_regout\)) # (!\memory1|RAM~639\ & ((E1L289Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~639\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~487_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[1]~5\,
	datad => \memory1|RAM~639\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~640\,
	regout => \memory1|RAM~359_regout\);

-- Location: LC_X14_Y5_N3
\memory1|RAM~471\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~471_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, \mux8|Y[1]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[1]~5\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~471_regout\);

-- Location: LC_X16_Y6_N2
\memory1|RAM~279\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~279_regout\ = DFFEAS((((\mux8|Y[1]~5\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[1]~5\,
	aclr => GND,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~279_regout\);

-- Location: LC_X11_Y6_N9
\memory1|RAM~343\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~643\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((E1L276Q))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~279_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~279_regout\,
	datac => \mux8|Y[1]~5\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~643\,
	regout => \memory1|RAM~343_regout\);

-- Location: LC_X11_Y6_N7
\memory1|RAM~407\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~644\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~643\ & (\memory1|RAM~471_regout\)) # (!\memory1|RAM~643\ & ((E1L328Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~643\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~471_regout\,
	datac => \mux8|Y[1]~5\,
	datad => \memory1|RAM~643\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~644\,
	regout => \memory1|RAM~407_regout\);

-- Location: LC_X6_Y4_N7
\memory1|RAM~503\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~503_regout\ = DFFEAS((((\mux8|Y[1]~5\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[1]~5\,
	aclr => GND,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~503_regout\);

-- Location: LC_X10_Y9_N1
\memory1|RAM~311\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~311_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, \mux8|Y[1]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[1]~5\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~311_regout\);

-- Location: LC_X7_Y9_N2
\memory1|RAM~375\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~641\ = (\mux4_1|Mux13~1_combout\ & (((E1L302Q) # (\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~311_regout\ & ((!\mux4_1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~311_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[1]~5\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~641\,
	regout => \memory1|RAM~375_regout\);

-- Location: LC_X7_Y9_N3
\memory1|RAM~439\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~642\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~641\ & (\memory1|RAM~503_regout\)) # (!\memory1|RAM~641\ & ((E1L354Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~641\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~503_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[1]~5\,
	datad => \memory1|RAM~641\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~642\,
	regout => \memory1|RAM~439_regout\);

-- Location: LC_X7_Y9_N4
\memory1|RAM~645\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~645_combout\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~642\))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~644\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~644\,
	datac => \mux4_1|Mux14~1_combout\,
	datad => \memory1|RAM~642\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~645_combout\);

-- Location: LC_X7_Y9_N5
\memory1|RAM~648\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~648_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~645_combout\ & (\memory1|RAM~647\)) # (!\memory1|RAM~645_combout\ & ((\memory1|RAM~640\))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~645_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~647\,
	datac => \memory1|RAM~640\,
	datad => \memory1|RAM~645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~648_combout\);

-- Location: LC_X6_Y4_N2
\memory1|RAM~119\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~119_regout\ = DFFEAS((((!\mux8|Y[1]~5\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[1]~5\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~119_regout\);

-- Location: LC_X7_Y4_N2
\memory1|RAM~135\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~135_regout\ = DFFEAS((((!\mux8|Y[1]~5\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[1]~5\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~135_regout\);

-- Location: LC_X6_Y5_N2
\memory1|RAM~87\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~87_regout\ = DFFEAS((((!\mux8|Y[1]~5\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~698_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[1]~5\,
	aclr => GND,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~87_regout\);

-- Location: LC_X7_Y6_N0
\memory1|RAM~103\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~649\ = (\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\) # ((E1L81Q)))) # (!\mux4_1|Mux15~1_combout\ & (!\mux4_1|Mux14~1_combout\ & ((!\memory1|RAM~87_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8b9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[1]~5\,
	datad => \memory1|RAM~87_regout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~649\,
	regout => \memory1|RAM~103_regout\);

-- Location: LC_X7_Y6_N1
\memory1|RAM~650\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~650_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~649\ & ((!\memory1|RAM~135_regout\))) # (!\memory1|RAM~649\ & (!\memory1|RAM~119_regout\)))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~649\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~119_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \memory1|RAM~135_regout\,
	datad => \memory1|RAM~649\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~650_combout\);

-- Location: LC_X16_Y4_N8
\memory1|RAM~263\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~263_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, \mux8|Y[1]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[1]~5\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~263_regout\);

-- Location: LC_X13_Y5_N6
\memory1|RAM~215\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~215_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, \mux8|Y[1]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[1]~5\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~215_regout\);

-- Location: LC_X12_Y9_N2
\memory1|RAM~231\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~656\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & ((E1L185Q))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~215_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~215_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[1]~5\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~656\,
	regout => \memory1|RAM~231_regout\);

-- Location: LC_X12_Y9_N3
\memory1|RAM~247\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~657\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~656\ & (\memory1|RAM~263_regout\)) # (!\memory1|RAM~656\ & ((E1L198Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~656\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~263_regout\,
	datac => \mux8|Y[1]~5\,
	datad => \memory1|RAM~656\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~657\,
	regout => \memory1|RAM~247_regout\);

-- Location: LC_X8_Y5_N2
\memory1|RAM~71\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~71_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~703_combout\, \mux8|Y[1]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[1]~5\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~71_regout\);

-- Location: LC_X7_Y5_N0
\memory1|RAM~23\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~23_regout\ = DFFEAS((((!\mux8|Y[1]~5\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[1]~5\,
	aclr => GND,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~23_regout\);

-- Location: LC_X7_Y5_N4
\memory1|RAM~55\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~55_regout\ = DFFEAS((((!\mux8|Y[1]~5\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~700_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[1]~5\,
	aclr => GND,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~55_regout\);

-- Location: LC_X8_Y5_N0
\memory1|RAM~653\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~653_combout\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\) # (!\memory1|RAM~55_regout\)))) # (!\mux4_1|Mux14~1_combout\ & (!\memory1|RAM~23_regout\ & ((!\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f035",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~23_regout\,
	datab => \memory1|RAM~55_regout\,
	datac => \mux4_1|Mux14~1_combout\,
	datad => \mux4_1|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~653_combout\);

-- Location: LC_X8_Y5_N1
\memory1|RAM~39\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~654\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~653_combout\ & (\memory1|RAM~71_regout\)) # (!\memory1|RAM~653_combout\ & ((E1L29Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~653_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~71_regout\,
	datac => \mux8|Y[1]~5\,
	datad => \memory1|RAM~653_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~654\,
	regout => \memory1|RAM~39_regout\);

-- Location: LC_X8_Y10_N3
\memory1|RAM~199\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~199_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, \mux8|Y[1]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[1]~5\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~199_regout\);

-- Location: LC_X7_Y10_N9
\memory1|RAM~151\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~151_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, \mux8|Y[1]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[1]~5\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~151_regout\);

-- Location: LC_X7_Y10_N0
\memory1|RAM~183\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~651\ = (\mux4_1|Mux14~1_combout\ & (((E1L146Q) # (\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~151_regout\ & ((!\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~151_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[1]~5\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~651\,
	regout => \memory1|RAM~183_regout\);

-- Location: LC_X8_Y10_N2
\memory1|RAM~167\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~652\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~651\ & (\memory1|RAM~199_regout\)) # (!\memory1|RAM~651\ & ((E1L133Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~651\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~199_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[1]~5\,
	datad => \memory1|RAM~651\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~652\,
	regout => \memory1|RAM~167_regout\);

-- Location: LC_X7_Y9_N7
\memory1|RAM~655\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~655_combout\ = (\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\) # ((\memory1|RAM~652\)))) # (!\mux4_1|Mux12~1_combout\ & (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~654\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \memory1|RAM~654\,
	datad => \memory1|RAM~652\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~655_combout\);

-- Location: LC_X7_Y9_N8
\memory1|RAM~658\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~658_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~655_combout\ & ((\memory1|RAM~657\))) # (!\memory1|RAM~655_combout\ & (\memory1|RAM~650_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~655_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~650_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \memory1|RAM~657\,
	datad => \memory1|RAM~655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~658_combout\);

-- Location: LC_X7_Y9_N9
\memory1|RAM~659\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~659_combout\ = ((\mux4_1|Mux11~1_combout\ & (\memory1|RAM~648_combout\)) # (!\mux4_1|Mux11~1_combout\ & ((\memory1|RAM~658_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~648_combout\,
	datad => \memory1|RAM~658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~659_combout\);

-- Location: LC_X6_Y9_N2
\memory1|memout[1]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(1) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~659_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~659_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(1));

-- Location: LC_X4_Y6_N9
\instruction_register|q[1]\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux14~1\ = (\mux8_2|Mux14~0_combout\ & ((\T~combout\(14) & (D1_q[1])) # (!\T~combout\(14) & ((\t2|q\(1))))))
-- \instruction_register|q\(1) = DFFEAS(\mux8_2|Mux14~1\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \memory1|memout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(14),
	datab => \mux8_2|Mux14~0_combout\,
	datac => \memory1|memout\(1),
	datad => \t2|q\(1),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux14~1\,
	regout => \instruction_register|q\(1));

-- Location: LC_X5_Y8_N8
\alu1|Mux14~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux14~0_combout\ = (\T~combout\(27) & (\T~combout\(26))) # (!\T~combout\(27) & (\mux8_2|Mux15~1_combout\ & (\T~combout\(26) $ (\mux8_1|Mux15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(26),
	datab => \mux8_2|Mux15~1_combout\,
	datac => \mux8_1|Mux15\,
	datad => \T~combout\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux14~0_combout\);

-- Location: LC_X5_Y8_N9
\alu1|Mux14~1\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux14~1_combout\ = (\T~combout\(27) & ((\mux8_1|Mux14\ & ((\alu1|Mux14~0_combout\) # (!\mux8_2|Mux14~1\))) # (!\mux8_1|Mux14\ & ((\mux8_2|Mux14~1\) # (!\alu1|Mux14~0_combout\))))) # (!\T~combout\(27) & (\mux8_1|Mux14\ $ (\mux8_2|Mux14~1\ $ 
-- (\alu1|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e95e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux14\,
	datab => \T~combout\(27),
	datac => \mux8_2|Mux14~1\,
	datad => \alu1|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux14~1_combout\);

-- Location: LC_X8_Y6_N9
\t1|q[1]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(1) = DFFEAS(((\T~combout\(16) & ((\alu1|Mux14~1_combout\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(16),
	datad => \alu1|Mux14~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(1));

-- Location: LC_X8_Y6_N4
\mux4_1|Mux14~1\ : maxv_lcell
-- Equation(s):
-- \mux4_1|Mux14~1_combout\ = (\T~combout\(19) & (\t1|q\(1) & (!\T~combout\(20)))) # (!\T~combout\(19) & (((\mux4_1|Mux14~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(19),
	datab => \t1|q\(1),
	datac => \T~combout\(20),
	datad => \mux4_1|Mux14~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux4_1|Mux14~1_combout\);

-- Location: LC_X4_Y5_N1
\t1|q[4]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(4) = DFFEAS(((\T~combout\(16) & ((\alu1|Mux11~1_combout\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(16),
	datad => \alu1|Mux11~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(4));

-- Location: LC_X4_Y5_N9
\t2|q[4]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(4) = DFFEAS((\alu1|Mux11~1_combout\ & (((!\T~combout\(18) & !\T~combout\(17))))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \alu1|Mux11~1_combout\,
	datac => \T~combout\(18),
	datad => \T~combout\(17),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(4));

-- Location: LC_X5_Y5_N4
\PC|q[4]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(4) = DFFEAS((\T~combout\(21) & (((\alu1|Mux11~1_combout\)))) # (!\T~combout\(21) & (\t2|q\(4))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(4), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(21),
	datab => \t2|q\(4),
	datac => \t3|q\(4),
	datad => \alu1|Mux11~1_combout\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(4));

-- Location: LC_X8_Y6_N0
\t3|q[4]\ : maxv_lcell
-- Equation(s):
-- \mux4_1|Mux11~0\ = (\T~combout\(20) & (((D11_q[4])))) # (!\T~combout\(20) & (((\PC|q\(4)))))
-- \t3|q\(4) = DFFEAS(\mux4_1|Mux11~0\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \alu1|Mux11~1_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(20),
	datac => \alu1|Mux11~1_combout\,
	datad => \PC|q\(4),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux4_1|Mux11~0\,
	regout => \t3|q\(4));

-- Location: LC_X8_Y6_N7
\memory1|RAM~314\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[4]~8\ = ((\T~combout\(25) & ((\t3|q\(4)))) # (!\T~combout\(25) & (\t1|q\(4))))
-- \memory1|RAM~314_regout\ = DFFEAS(\mux8|Y[4]~8\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t1|q\(4),
	datac => \t3|q\(4),
	datad => \T~combout\(25),
	aclr => GND,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[4]~8\,
	regout => \memory1|RAM~314_regout\);

-- Location: LC_X6_Y4_N4
\memory1|RAM~506\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~506_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, \mux8|Y[4]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[4]~8\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~506_regout\);

-- Location: LC_X9_Y8_N8
\memory1|RAM~442\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~750\ = (\mux4_1|Mux12~1_combout\ & (((E1L357Q) # (\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~314_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~314_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~750\,
	regout => \memory1|RAM~442_regout\);

-- Location: LC_X9_Y8_N7
\memory1|RAM~378\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~751\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~750\ & (\memory1|RAM~506_regout\)) # (!\memory1|RAM~750\ & ((E1L305Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~750\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~506_regout\,
	datac => \mux8|Y[4]~8\,
	datad => \memory1|RAM~750\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~751\,
	regout => \memory1|RAM~378_regout\);

-- Location: LC_X15_Y5_N4
\memory1|RAM~522\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~522_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, \mux8|Y[4]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[4]~8\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~522_regout\);

-- Location: LC_X14_Y8_N0
\memory1|RAM~330\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~330_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, \mux8|Y[4]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[4]~8\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~330_regout\);

-- Location: LC_X14_Y6_N9
\memory1|RAM~394\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~757\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((E1L318Q))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~330_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~330_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~757\,
	regout => \memory1|RAM~394_regout\);

-- Location: LC_X14_Y6_N3
\memory1|RAM~458\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~758\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~757\ & (\memory1|RAM~522_regout\)) # (!\memory1|RAM~757\ & ((E1L370Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~757\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~522_regout\,
	datac => \mux8|Y[4]~8\,
	datad => \memory1|RAM~757\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~758\,
	regout => \memory1|RAM~458_regout\);

-- Location: LC_X15_Y4_N2
\memory1|RAM~490\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~490_regout\ = DFFEAS((((\mux8|Y[4]~8\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[4]~8\,
	aclr => GND,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~490_regout\);

-- Location: LC_X15_Y6_N1
\memory1|RAM~298\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~298_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, \mux8|Y[4]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[4]~8\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~298_regout\);

-- Location: LC_X10_Y6_N6
\memory1|RAM~362\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~752\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((E1L292Q))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~298_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~298_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~752\,
	regout => \memory1|RAM~362_regout\);

-- Location: LC_X10_Y5_N6
\memory1|RAM~426\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~753\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~752\ & (\memory1|RAM~490_regout\)) # (!\memory1|RAM~752\ & ((E1L344Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~752\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~490_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \memory1|RAM~752\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~753\,
	regout => \memory1|RAM~426_regout\);

-- Location: LC_X14_Y5_N0
\memory1|RAM~474\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~474_regout\ = DFFEAS((((\mux8|Y[4]~8\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[4]~8\,
	aclr => GND,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~474_regout\);

-- Location: LC_X16_Y4_N9
\memory1|RAM~282\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~282_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, \mux8|Y[4]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[4]~8\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~282_regout\);

-- Location: LC_X11_Y4_N0
\memory1|RAM~410\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~754\ = (\mux4_1|Mux12~1_combout\ & (((E1L331Q) # (\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~282_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~282_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~754\,
	regout => \memory1|RAM~410_regout\);

-- Location: LC_X11_Y4_N1
\memory1|RAM~346\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~755\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~754\ & (\memory1|RAM~474_regout\)) # (!\memory1|RAM~754\ & ((E1L279Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~754\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~474_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \memory1|RAM~754\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~755\,
	regout => \memory1|RAM~346_regout\);

-- Location: LC_X10_Y5_N8
\memory1|RAM~756\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~756_combout\ = (\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\) # ((\memory1|RAM~753\)))) # (!\mux4_1|Mux15~1_combout\ & (!\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~755\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \memory1|RAM~753\,
	datad => \memory1|RAM~755\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~756_combout\);

-- Location: LC_X10_Y5_N0
\memory1|RAM~759\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~759_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~756_combout\ & ((\memory1|RAM~758\))) # (!\memory1|RAM~756_combout\ & (\memory1|RAM~751\)))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~756_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~751\,
	datac => \memory1|RAM~758\,
	datad => \memory1|RAM~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~759_combout\);

-- Location: LC_X13_Y3_N2
\memory1|RAM~266\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~266_regout\ = DFFEAS((((\mux8|Y[4]~8\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[4]~8\,
	aclr => GND,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~266_regout\);

-- Location: LC_X12_Y3_N6
\memory1|RAM~218\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~218_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, \mux8|Y[4]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[4]~8\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~218_regout\);

-- Location: LC_X9_Y4_N0
\memory1|RAM~250\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~767\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & ((E1L201Q))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~218_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~218_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~767\,
	regout => \memory1|RAM~250_regout\);

-- Location: LC_X9_Y4_N1
\memory1|RAM~234\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~768\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~767\ & (\memory1|RAM~266_regout\)) # (!\memory1|RAM~767\ & ((E1L188Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~767\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~266_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \memory1|RAM~767\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~768\,
	regout => \memory1|RAM~234_regout\);

-- Location: LC_X14_Y4_N3
\memory1|RAM~202\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~202_regout\ = DFFEAS((((\mux8|Y[4]~8\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[4]~8\,
	aclr => GND,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~202_regout\);

-- Location: LC_X13_Y6_N5
\memory1|RAM~154\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~154_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, \mux8|Y[4]~8\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[4]~8\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~154_regout\);

-- Location: LC_X13_Y6_N8
\memory1|RAM~170\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~760\ = (\mux4_1|Mux15~1_combout\ & (((E1L136Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~154_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~154_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~760\,
	regout => \memory1|RAM~170_regout\);

-- Location: LC_X12_Y6_N6
\memory1|RAM~186\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~761\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~760\ & (\memory1|RAM~202_regout\)) # (!\memory1|RAM~760\ & ((E1L149Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~760\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~202_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \memory1|RAM~760\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~761\,
	regout => \memory1|RAM~186_regout\);

-- Location: LC_X7_Y4_N0
\memory1|RAM~138\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~138_regout\ = DFFEAS((((!\mux8|Y[4]~8\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[4]~8\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~138_regout\);

-- Location: LC_X6_Y4_N0
\memory1|RAM~122\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~122_regout\ = DFFEAS((((!\mux8|Y[4]~8\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[4]~8\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~122_regout\);

-- Location: LC_X9_Y5_N1
\memory1|RAM~90\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~762\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)) # (!\memory1|RAM~122_regout\))) # (!\mux4_1|Mux14~1_combout\ & (((E1L71Q & !\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~122_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~762\,
	regout => \memory1|RAM~90_regout\);

-- Location: LC_X9_Y5_N7
\memory1|RAM~106\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~763\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~762\ & (!\memory1|RAM~138_regout\)) # (!\memory1|RAM~762\ & ((E1L84Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~762\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~138_regout\,
	datac => \mux8|Y[4]~8\,
	datad => \memory1|RAM~762\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~763\,
	regout => \memory1|RAM~106_regout\);

-- Location: LC_X9_Y7_N9
\memory1|RAM~74\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~74_regout\ = DFFEAS((((!\mux8|Y[4]~8\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~703_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[4]~8\,
	aclr => GND,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~74_regout\);

-- Location: LC_X8_Y7_N8
\memory1|RAM~26\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~26_regout\ = DFFEAS((((!\mux8|Y[4]~8\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[4]~8\,
	aclr => GND,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~26_regout\);

-- Location: LC_X8_Y7_N0
\memory1|RAM~42\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~764\ = (\mux4_1|Mux15~1_combout\ & (((E1L32Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (!\memory1|RAM~26_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~26_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~764\,
	regout => \memory1|RAM~42_regout\);

-- Location: LC_X9_Y7_N0
\memory1|RAM~58\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~765\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~764\ & (!\memory1|RAM~74_regout\)) # (!\memory1|RAM~764\ & ((E1L45Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~764\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~74_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[4]~8\,
	datad => \memory1|RAM~764\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~765\,
	regout => \memory1|RAM~58_regout\);

-- Location: LC_X10_Y5_N3
\memory1|RAM~766\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~766_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~763\) # ((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (((!\mux4_1|Mux12~1_combout\ & \memory1|RAM~765\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~763\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \memory1|RAM~765\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~766_combout\);

-- Location: LC_X10_Y5_N4
\memory1|RAM~769\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~769_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~766_combout\ & (\memory1|RAM~768\)) # (!\memory1|RAM~766_combout\ & ((\memory1|RAM~761\))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~766_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~768\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \memory1|RAM~761\,
	datad => \memory1|RAM~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~769_combout\);

-- Location: LC_X10_Y5_N5
\memory1|RAM~770\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~770_combout\ = ((\mux4_1|Mux11~1_combout\ & (\memory1|RAM~759_combout\)) # (!\mux4_1|Mux11~1_combout\ & ((\memory1|RAM~769_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~759_combout\,
	datad => \memory1|RAM~769_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~770_combout\);

-- Location: LC_X10_Y5_N9
\memory1|memout[4]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(4) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~770_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~770_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(4));

-- Location: LC_X4_Y5_N2
\instruction_register|q[4]\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux11~0\ = (\mux8_2|Mux14~0_combout\ & ((\T~combout\(14) & (D1_q[4])) # (!\T~combout\(14) & ((\t2|q\(4))))))
-- \instruction_register|q\(4) = DFFEAS(\mux8_2|Mux11~0\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \memory1|memout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_2|Mux14~0_combout\,
	datab => \T~combout\(14),
	datac => \memory1|memout\(4),
	datad => \t2|q\(4),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux11~0\,
	regout => \instruction_register|q\(4));

-- Location: LC_X4_Y5_N5
\mux8_1|Mux11~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux11~0_combout\ = (\mux8_1|Mux9~2_combout\ & (((\mux8_1|Mux9~1_combout\ & \t2|q\(4))))) # (!\mux8_1|Mux9~2_combout\ & ((\PC|q\(4)) # ((!\mux8_1|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e545",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux9~2_combout\,
	datab => \PC|q\(4),
	datac => \mux8_1|Mux9~1_combout\,
	datad => \t2|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux11~0_combout\);

-- Location: LC_X4_Y5_N6
\PC1|q[4]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux11\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux11~0_combout\ & (\t1|q\(4))) # (!\mux8_1|Mux11~0_combout\ & ((K2_q[4]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(4),
	datac => \PC|q\(4),
	datad => \mux8_1|Mux11~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux11\,
	regout => \PC1|q\(4));

-- Location: LC_X5_Y7_N1
\alu1|sub1|ist_sub:3:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:3:F1|Borrow~0_combout\ = ((\mux8_2|Mux12~0\ & ((\alu1|sub1|ist_sub:2:F1|Borrow~0_combout\) # (!\mux8_1|Mux12\))) # (!\mux8_2|Mux12~0\ & (!\mux8_1|Mux12\ & \alu1|sub1|ist_sub:2:F1|Borrow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_2|Mux12~0\,
	datac => \mux8_1|Mux12\,
	datad => \alu1|sub1|ist_sub:2:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:3:F1|Borrow~0_combout\);

-- Location: LC_X3_Y6_N8
\alu1|add1|ist_add:3:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:3:F1|cout~0_combout\ = (\mux8_2|Mux12~0\ & (((\mux8_1|Mux12\) # (\alu1|add1|ist_add:2:F1|cout~0_combout\)))) # (!\mux8_2|Mux12~0\ & (((\mux8_1|Mux12\ & \alu1|add1|ist_add:2:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux12~0\,
	datac => \mux8_1|Mux12\,
	datad => \alu1|add1|ist_add:2:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:3:F1|cout~0_combout\);

-- Location: LC_X3_Y5_N2
\alu1|Mux11~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux11~0_combout\ = (\T~combout\(26) & ((\T~combout\(27)) # ((\alu1|sub1|ist_sub:3:F1|Borrow~0_combout\)))) # (!\T~combout\(26) & (!\T~combout\(27) & ((\alu1|add1|ist_add:3:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(26),
	datab => \T~combout\(27),
	datac => \alu1|sub1|ist_sub:3:F1|Borrow~0_combout\,
	datad => \alu1|add1|ist_add:3:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux11~0_combout\);

-- Location: LC_X4_Y5_N3
\alu1|Mux11~1\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux11~1_combout\ = (\T~combout\(27) & ((\mux8_2|Mux11~0\ & ((\alu1|Mux11~0_combout\) # (!\mux8_1|Mux11\))) # (!\mux8_2|Mux11~0\ & ((\mux8_1|Mux11\) # (!\alu1|Mux11~0_combout\))))) # (!\T~combout\(27) & (\mux8_2|Mux11~0\ $ (\mux8_1|Mux11\ $ 
-- (\alu1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e93e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(27),
	datab => \mux8_2|Mux11~0\,
	datac => \mux8_1|Mux11\,
	datad => \alu1|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux11~1_combout\);

-- Location: LC_X8_Y6_N2
\mux4_1|Mux11~1\ : maxv_lcell
-- Equation(s):
-- \mux4_1|Mux11~1_combout\ = (\T~combout\(19) & (!\T~combout\(20) & ((\t1|q\(4))))) # (!\T~combout\(19) & (((\mux4_1|Mux11~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(20),
	datab => \mux4_1|Mux11~0\,
	datac => \T~combout\(19),
	datad => \t1|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux4_1|Mux11~1_combout\);

-- Location: LC_X3_Y5_N3
\mux8_2|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux3~0_combout\ = (((!\T~combout\(13) & !\T~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \T~combout\(13),
	datad => \T~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux3~0_combout\);

-- Location: LC_X4_Y4_N5
\t2|q[12]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(12) = DFFEAS(((!\T~combout\(17) & (!\T~combout\(18) & \alu1|Mux3~1\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(17),
	datac => \T~combout\(18),
	datad => \alu1|Mux3~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(12));

-- Location: LC_X6_Y7_N9
\t2|q[5]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(5) = DFFEAS((!\T~combout\(17) & (!\T~combout\(18) & ((\alu1|Mux10~1\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(17),
	datab => \T~combout\(18),
	datad => \alu1|Mux10~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(5));

-- Location: LC_X6_Y7_N7
\instruction_register|q[5]\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux10~0\ = (\mux8_2|Mux14~0_combout\ & ((\T~combout\(14) & (D1_q[5])) # (!\T~combout\(14) & ((\t2|q\(5))))))
-- \instruction_register|q\(5) = DFFEAS(\mux8_2|Mux10~0\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \memory1|memout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_2|Mux14~0_combout\,
	datab => \T~combout\(14),
	datac => \memory1|memout\(5),
	datad => \t2|q\(5),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux10~0\,
	regout => \instruction_register|q\(5));

-- Location: LC_X3_Y6_N9
\alu1|add1|ist_add:4:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:4:F1|cout~0_combout\ = ((\mux8_1|Mux11\ & ((\mux8_2|Mux11~0\) # (\alu1|add1|ist_add:3:F1|cout~0_combout\))) # (!\mux8_1|Mux11\ & (\mux8_2|Mux11~0\ & \alu1|add1|ist_add:3:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_1|Mux11\,
	datac => \mux8_2|Mux11~0\,
	datad => \alu1|add1|ist_add:3:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:4:F1|cout~0_combout\);

-- Location: LC_X5_Y7_N2
\alu1|sub1|ist_sub:4:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:4:F1|Borrow~0_combout\ = ((\mux8_2|Mux11~0\ & ((\alu1|sub1|ist_sub:3:F1|Borrow~0_combout\) # (!\mux8_1|Mux11\))) # (!\mux8_2|Mux11~0\ & (!\mux8_1|Mux11\ & \alu1|sub1|ist_sub:3:F1|Borrow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_2|Mux11~0\,
	datac => \mux8_1|Mux11\,
	datad => \alu1|sub1|ist_sub:3:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:4:F1|Borrow~0_combout\);

-- Location: LC_X6_Y7_N3
\alu1|Mux10~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux10~0_combout\ = (\T~combout\(27) & (\T~combout\(26))) # (!\T~combout\(27) & ((\T~combout\(26) & ((\alu1|sub1|ist_sub:4:F1|Borrow~0_combout\))) # (!\T~combout\(26) & (\alu1|add1|ist_add:4:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(27),
	datab => \T~combout\(26),
	datac => \alu1|add1|ist_add:4:F1|cout~0_combout\,
	datad => \alu1|sub1|ist_sub:4:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux10~0_combout\);

-- Location: LC_X6_Y7_N2
\t3|q[5]\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux10~1\ = (\T~combout\(27) & ((\mux8_2|Mux10~0\ & ((\alu1|Mux10~0_combout\) # (!\mux8_1|Mux10\))) # (!\mux8_2|Mux10~0\ & ((\mux8_1|Mux10\) # (!\alu1|Mux10~0_combout\))))) # (!\T~combout\(27) & (\mux8_2|Mux10~0\ $ (\mux8_1|Mux10\ $ 
-- (\alu1|Mux10~0_combout\))))
-- \t3|q\(5) = DFFEAS(\alu1|Mux10~1\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e93e",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(27),
	datab => \mux8_2|Mux10~0\,
	datac => \mux8_1|Mux10\,
	datad => \alu1|Mux10~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux10~1\,
	regout => \t3|q\(5));

-- Location: LC_X4_Y7_N9
\PC|q[5]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(5) = DFFEAS((\T~combout\(21) & (((\alu1|Mux10~1\)))) # (!\T~combout\(21) & (\t2|q\(5))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(5), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(21),
	datab => \t2|q\(5),
	datac => \t3|q\(5),
	datad => \alu1|Mux10~1\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(5));

-- Location: LC_X6_Y7_N5
\mux8_1|Mux10~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux10~0_combout\ = (\mux8_1|Mux9~1_combout\ & ((\mux8_1|Mux9~2_combout\ & ((\t2|q\(5)))) # (!\mux8_1|Mux9~2_combout\ & (\PC|q\(5))))) # (!\mux8_1|Mux9~1_combout\ & (!\mux8_1|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b931",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux9~1_combout\,
	datab => \mux8_1|Mux9~2_combout\,
	datac => \PC|q\(5),
	datad => \t2|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux10~0_combout\);

-- Location: LC_X6_Y7_N6
\PC1|q[5]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux10\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux10~0_combout\ & (\t1|q\(5))) # (!\mux8_1|Mux10~0_combout\ & ((K2_q[5]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(5),
	datac => \PC|q\(5),
	datad => \mux8_1|Mux10~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux10\,
	regout => \PC1|q\(5));

-- Location: LC_X6_Y7_N0
\t1|q[5]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(5) = DFFEAS(((\T~combout\(16) & ((\alu1|Mux10~1\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(16),
	datad => \alu1|Mux10~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(5));

-- Location: LC_X10_Y8_N9
\memory1|RAM~315\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[5]~9\ = ((\T~combout\(25) & ((\t3|q\(5)))) # (!\T~combout\(25) & (\t1|q\(5))))
-- \memory1|RAM~315_regout\ = DFFEAS(\mux8|Y[5]~9\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \t1|q\(5),
	datac => \t3|q\(5),
	datad => \T~combout\(25),
	aclr => GND,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[5]~9\,
	regout => \memory1|RAM~315_regout\);

-- Location: LC_X14_Y4_N6
\memory1|RAM~267\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~267_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, \mux8|Y[5]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[5]~9\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~267_regout\);

-- Location: LC_X12_Y3_N3
\memory1|RAM~219\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~219_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, \mux8|Y[5]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[5]~9\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~219_regout\);

-- Location: LC_X9_Y4_N2
\memory1|RAM~251\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~788\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & ((E1L202Q))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~219_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~219_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[5]~9\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~788\,
	regout => \memory1|RAM~251_regout\);

-- Location: LC_X9_Y4_N3
\memory1|RAM~235\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~789\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~788\ & (\memory1|RAM~267_regout\)) # (!\memory1|RAM~788\ & ((E1L189Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~788\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~267_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[5]~9\,
	datad => \memory1|RAM~788\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~789\,
	regout => \memory1|RAM~235_regout\);

-- Location: LC_X14_Y4_N2
\memory1|RAM~203\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~203_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, \mux8|Y[5]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[5]~9\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~203_regout\);

-- Location: LC_X12_Y6_N7
\memory1|RAM~155\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~155_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, \mux8|Y[5]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[5]~9\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~155_regout\);

-- Location: LC_X13_Y4_N1
\memory1|RAM~171\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~781\ = (\mux4_1|Mux15~1_combout\ & (((E1L137Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~155_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~155_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[5]~9\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~781\,
	regout => \memory1|RAM~171_regout\);

-- Location: LC_X13_Y4_N2
\memory1|RAM~187\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~782\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~781\ & (\memory1|RAM~203_regout\)) # (!\memory1|RAM~781\ & ((E1L150Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~781\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~203_regout\,
	datac => \mux8|Y[5]~9\,
	datad => \memory1|RAM~781\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~782\,
	regout => \memory1|RAM~187_regout\);

-- Location: LC_X7_Y4_N5
\memory1|RAM~139\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~139_regout\ = DFFEAS((((!\mux8|Y[5]~9\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[5]~9\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~139_regout\);

-- Location: LC_X6_Y5_N5
\memory1|RAM~91\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~91_regout\ = DFFEAS((((!\mux8|Y[5]~9\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~698_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[5]~9\,
	aclr => GND,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~91_regout\);

-- Location: LC_X8_Y4_N4
\memory1|RAM~123\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~123_regout\ = DFFEAS((((!\mux8|Y[5]~9\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[5]~9\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~123_regout\);

-- Location: LC_X8_Y4_N7
\memory1|RAM~783\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~783_combout\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & ((!\memory1|RAM~123_regout\))) # (!\mux4_1|Mux14~1_combout\ & (!\memory1|RAM~91_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f305",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~91_regout\,
	datab => \memory1|RAM~123_regout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~783_combout\);

-- Location: LC_X8_Y4_N8
\memory1|RAM~107\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~784\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~783_combout\ & (!\memory1|RAM~139_regout\)) # (!\memory1|RAM~783_combout\ & ((E1L85Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~783_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~139_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[5]~9\,
	datad => \memory1|RAM~783_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~784\,
	regout => \memory1|RAM~107_regout\);

-- Location: LC_X15_Y7_N7
\memory1|RAM~75\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~75_regout\ = DFFEAS((((!\mux8|Y[5]~9\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~703_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[5]~9\,
	aclr => GND,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~75_regout\);

-- Location: LC_X8_Y7_N3
\memory1|RAM~27\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~27_regout\ = DFFEAS((((\mux8|Y[5]~9\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[5]~9\,
	aclr => GND,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~27_regout\);

-- Location: LC_X8_Y7_N6
\memory1|RAM~43\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~785\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & ((E1L33Q))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~27_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~27_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[5]~9\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~785\,
	regout => \memory1|RAM~43_regout\);

-- Location: LC_X12_Y4_N5
\memory1|RAM~59\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~786\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~785\ & (!\memory1|RAM~75_regout\)) # (!\memory1|RAM~785\ & ((E1L46Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~785\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~75_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[5]~9\,
	datad => \memory1|RAM~785\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~786\,
	regout => \memory1|RAM~59_regout\);

-- Location: LC_X12_Y4_N6
\memory1|RAM~787\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~787_combout\ = (\mux4_1|Mux12~1_combout\ & (\mux4_1|Mux13~1_combout\)) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & (\memory1|RAM~784\)) # (!\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~786\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \memory1|RAM~784\,
	datad => \memory1|RAM~786\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~787_combout\);

-- Location: LC_X12_Y4_N7
\memory1|RAM~790\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~790_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~787_combout\ & (\memory1|RAM~789\)) # (!\memory1|RAM~787_combout\ & ((\memory1|RAM~782\))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~787_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~789\,
	datac => \memory1|RAM~782\,
	datad => \memory1|RAM~787_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~790_combout\);

-- Location: LC_X16_Y6_N8
\memory1|RAM~523\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~523_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, \mux8|Y[5]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[5]~9\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~523_regout\);

-- Location: LC_X14_Y8_N8
\memory1|RAM~331\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~331_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, \mux8|Y[5]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[5]~9\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~331_regout\);

-- Location: LC_X14_Y6_N8
\memory1|RAM~395\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~778\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((E1L319Q))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~331_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~331_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[5]~9\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~778\,
	regout => \memory1|RAM~395_regout\);

-- Location: LC_X14_Y6_N0
\memory1|RAM~459\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~779\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~778\ & (\memory1|RAM~523_regout\)) # (!\memory1|RAM~778\ & ((E1L371Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~778\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~523_regout\,
	datac => \mux8|Y[5]~9\,
	datad => \memory1|RAM~778\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~779\,
	regout => \memory1|RAM~459_regout\);

-- Location: LC_X6_Y5_N0
\memory1|RAM~475\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~475_regout\ = DFFEAS((((\mux8|Y[5]~9\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[5]~9\,
	aclr => GND,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~475_regout\);

-- Location: LC_X16_Y4_N6
\memory1|RAM~283\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~283_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, \mux8|Y[5]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[5]~9\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~283_regout\);

-- Location: LC_X11_Y4_N2
\memory1|RAM~411\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~775\ = (\mux4_1|Mux12~1_combout\ & (((E1L332Q) # (\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~283_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~283_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[5]~9\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~775\,
	regout => \memory1|RAM~411_regout\);

-- Location: LC_X11_Y4_N7
\memory1|RAM~347\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~776\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~775\ & (\memory1|RAM~475_regout\)) # (!\memory1|RAM~775\ & ((E1L280Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~775\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~475_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[5]~9\,
	datad => \memory1|RAM~775\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~776\,
	regout => \memory1|RAM~347_regout\);

-- Location: LC_X11_Y8_N9
\memory1|RAM~491\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~491_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, \mux8|Y[5]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[5]~9\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~491_regout\);

-- Location: LC_X15_Y6_N5
\memory1|RAM~299\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~299_regout\ = DFFEAS((((\mux8|Y[5]~9\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[5]~9\,
	aclr => GND,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~299_regout\);

-- Location: LC_X10_Y6_N0
\memory1|RAM~363\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~773\ = (\mux4_1|Mux13~1_combout\ & (((E1L293Q) # (\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~299_regout\ & ((!\mux4_1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~299_regout\,
	datac => \mux8|Y[5]~9\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~773\,
	regout => \memory1|RAM~363_regout\);

-- Location: LC_X10_Y4_N8
\memory1|RAM~427\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~774\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~773\ & (\memory1|RAM~491_regout\)) # (!\memory1|RAM~773\ & ((E1L345Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~773\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~491_regout\,
	datac => \mux8|Y[5]~9\,
	datad => \memory1|RAM~773\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~774\,
	regout => \memory1|RAM~427_regout\);

-- Location: LC_X12_Y4_N0
\memory1|RAM~777\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~777_combout\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~774\))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~776\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~776\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \memory1|RAM~774\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~777_combout\);

-- Location: LC_X15_Y8_N4
\memory1|RAM~507\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~507_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, \mux8|Y[5]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[5]~9\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~507_regout\);

-- Location: LC_X10_Y8_N4
\memory1|RAM~443\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~771\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((E1L358Q))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~315_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~315_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[5]~9\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~771\,
	regout => \memory1|RAM~443_regout\);

-- Location: LC_X13_Y8_N6
\memory1|RAM~379\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~772\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~771\ & (\memory1|RAM~507_regout\)) # (!\memory1|RAM~771\ & ((E1L306Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~771\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~507_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[5]~9\,
	datad => \memory1|RAM~771\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~772\,
	regout => \memory1|RAM~379_regout\);

-- Location: LC_X12_Y4_N3
\memory1|RAM~780\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~780_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~777_combout\ & (\memory1|RAM~779\)) # (!\memory1|RAM~777_combout\ & ((\memory1|RAM~772\))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~777_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~779\,
	datac => \memory1|RAM~777_combout\,
	datad => \memory1|RAM~772\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~780_combout\);

-- Location: LC_X12_Y4_N4
\memory1|RAM~791\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~791_combout\ = (\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~780_combout\)))) # (!\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~790_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~790_combout\,
	datad => \memory1|RAM~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~791_combout\);

-- Location: LC_X12_Y4_N9
\memory1|memout[5]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(5) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~791_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~791_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(5));

-- Location: LC_X3_Y5_N5
\mux8_2|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux3~1_combout\ = (\mux8_2|Mux3~0_combout\ & ((\T~combout\(15) & ((\instruction_register|q\(5)))) # (!\T~combout\(15) & (\t2|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux3~0_combout\,
	datab => \t2|q\(12),
	datac => \instruction_register|q\(5),
	datad => \T~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux3~1_combout\);

-- Location: LC_X10_Y8_N2
\mux8_1|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux1~1_combout\ = (\T~combout\(10) & (((!\T~combout\(11) & \T~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(10),
	datac => \T~combout\(11),
	datad => \T~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux1~1_combout\);

-- Location: LC_X4_Y9_N2
\t1|q[11]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(11) = DFFEAS((((\T~combout\(16) & \alu1|Mux4~1\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \T~combout\(16),
	datad => \alu1|Mux4~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(11));

-- Location: LC_X6_Y8_N0
\t1|q[10]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(10) = DFFEAS((\T~combout\(16) & (((\alu1|Mux5~3\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(16),
	datac => \alu1|Mux5~3\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(10));

-- Location: LC_X5_Y5_N6
\t1|q[9]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(9) = DFFEAS(((\T~combout\(16) & ((\alu1|Mux6~2\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(16),
	datad => \alu1|Mux6~2\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(9));

-- Location: LC_X3_Y5_N4
\mux8_2|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux7~1_combout\ = (!\T~combout\(15) & (((\T~combout\(18) & \T~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(15),
	datac => \T~combout\(18),
	datad => \T~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux7~1_combout\);

-- Location: LC_X3_Y5_N0
\mux8_1|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux7~2_combout\ = ((\mux8_1|Mux1~1_combout\ & (\instruction_register|q\(1))) # (!\mux8_1|Mux1~1_combout\ & ((\mux8_1|Mux7~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_1|Mux1~1_combout\,
	datac => \instruction_register|q\(1),
	datad => \mux8_1|Mux7~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux7~2_combout\);

-- Location: LC_X3_Y5_N8
\alu1|or1|s0_or[8]\ : maxv_lcell
-- Equation(s):
-- \alu1|or1|s0_or\(8) = (\mux8_2|Mux7~2\) # ((\mux8_1|Mux1~1_combout\ & ((\instruction_register|q\(1)))) # (!\mux8_1|Mux1~1_combout\ & (\mux8_1|Mux7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux1~1_combout\,
	datab => \mux8_1|Mux7~1\,
	datac => \instruction_register|q\(1),
	datad => \mux8_2|Mux7~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|or1|s0_or\(8));

-- Location: LC_X3_Y5_N9
\alu1|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux7~0_combout\ = (\T~combout\(27) & (((\alu1|or1|s0_or\(8))))) # (!\T~combout\(27) & (\mux8_2|Mux7~2\ $ ((\mux8_1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de12",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux7~2\,
	datab => \T~combout\(27),
	datac => \mux8_1|Mux7~2_combout\,
	datad => \alu1|or1|s0_or\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux7~0_combout\);

-- Location: LC_X4_Y9_N5
\t2|q[7]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(7) = DFFEAS(((!\T~combout\(17) & (!\T~combout\(18) & \alu1|Mux8~1\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(17),
	datac => \T~combout\(18),
	datad => \alu1|Mux8~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(7));

-- Location: LC_X3_Y6_N1
\alu1|add1|ist_add:5:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:5:F1|cout~0_combout\ = (\mux8_1|Mux10\ & (((\mux8_2|Mux10~0\) # (\alu1|add1|ist_add:4:F1|cout~0_combout\)))) # (!\mux8_1|Mux10\ & (((\mux8_2|Mux10~0\ & \alu1|add1|ist_add:4:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux10\,
	datac => \mux8_2|Mux10~0\,
	datad => \alu1|add1|ist_add:4:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:5:F1|cout~0_combout\);

-- Location: LC_X5_Y7_N3
\alu1|sub1|ist_sub:5:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:5:F1|Borrow~0_combout\ = (\mux8_2|Mux10~0\ & (((\alu1|sub1|ist_sub:4:F1|Borrow~0_combout\)) # (!\mux8_1|Mux10\))) # (!\mux8_2|Mux10~0\ & (!\mux8_1|Mux10\ & ((\alu1|sub1|ist_sub:4:F1|Borrow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux10~0\,
	datab => \mux8_1|Mux10\,
	datad => \alu1|sub1|ist_sub:4:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:5:F1|Borrow~0_combout\);

-- Location: LC_X6_Y8_N2
\alu1|Mux9~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux9~0_combout\ = (\T~combout\(27) & (\T~combout\(26))) # (!\T~combout\(27) & ((\T~combout\(26) & ((\alu1|sub1|ist_sub:5:F1|Borrow~0_combout\))) # (!\T~combout\(26) & (\alu1|add1|ist_add:5:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(27),
	datab => \T~combout\(26),
	datac => \alu1|add1|ist_add:5:F1|cout~0_combout\,
	datad => \alu1|sub1|ist_sub:5:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux9~0_combout\);

-- Location: LC_X6_Y8_N8
\t3|q[6]\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux9~1\ = (\T~combout\(27) & ((\mux8_1|Mux9\ & ((\alu1|Mux9~0_combout\) # (!\mux8_2|Mux9~3_combout\))) # (!\mux8_1|Mux9\ & ((\mux8_2|Mux9~3_combout\) # (!\alu1|Mux9~0_combout\))))) # (!\T~combout\(27) & (\mux8_1|Mux9\ $ (\mux8_2|Mux9~3_combout\ $ 
-- (\alu1|Mux9~0_combout\))))
-- \t3|q\(6) = DFFEAS(\alu1|Mux9~1\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e93e",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(27),
	datab => \mux8_1|Mux9\,
	datac => \mux8_2|Mux9~3_combout\,
	datad => \alu1|Mux9~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux9~1\,
	regout => \t3|q\(6));

-- Location: LC_X10_Y9_N9
\memory1|RAM~300\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[6]~12\ = (\T~combout\(25) & (\t3|q\(6))) # (!\T~combout\(25) & (((\t1|q\(6)))))
-- \memory1|RAM~300_regout\ = DFFEAS(\mux8|Y[6]~12\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t3|q\(6),
	datab => \T~combout\(25),
	datac => \t1|q\(6),
	aclr => GND,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[6]~12\,
	regout => \memory1|RAM~300_regout\);

-- Location: LC_X15_Y9_N0
\memory1|RAM~492\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~492_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, \mux8|Y[6]~12\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[6]~12\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~492_regout\);

-- Location: LC_X9_Y9_N8
\memory1|RAM~428\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~834\ = (\mux4_1|Mux12~1_combout\ & (((E1L346Q) # (\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~300_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~300_regout\,
	datac => \mux8|Y[6]~12\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~834\,
	regout => \memory1|RAM~428_regout\);

-- Location: LC_X9_Y9_N9
\memory1|RAM~364\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~835\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~834\ & (\memory1|RAM~492_regout\)) # (!\memory1|RAM~834\ & ((E1L294Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~834\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~492_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[6]~12\,
	datad => \memory1|RAM~834\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~835\,
	regout => \memory1|RAM~364_regout\);

-- Location: LC_X15_Y9_N7
\memory1|RAM~524\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~524_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, \mux8|Y[6]~12\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[6]~12\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~524_regout\);

-- Location: LC_X13_Y9_N4
\memory1|RAM~332\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~332_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, \mux8|Y[6]~12\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[6]~12\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~332_regout\);

-- Location: LC_X11_Y9_N4
\memory1|RAM~460\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~841\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((E1L372Q))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~332_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~332_regout\,
	datac => \mux8|Y[6]~12\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~841\,
	regout => \memory1|RAM~460_regout\);

-- Location: LC_X11_Y9_N5
\memory1|RAM~396\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~842\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~841\ & (\memory1|RAM~524_regout\)) # (!\memory1|RAM~841\ & ((E1L320Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~841\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~524_regout\,
	datac => \mux8|Y[6]~12\,
	datad => \memory1|RAM~841\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~842\,
	regout => \memory1|RAM~396_regout\);

-- Location: LC_X12_Y10_N4
\memory1|RAM~508\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~508_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, \mux8|Y[6]~12\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[6]~12\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~508_regout\);

-- Location: LC_X10_Y9_N8
\memory1|RAM~316\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~316_regout\ = DFFEAS((((\mux8|Y[6]~12\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[6]~12\,
	aclr => GND,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~316_regout\);

-- Location: LC_X9_Y8_N1
\memory1|RAM~380\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~836\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((E1L307Q))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~316_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~316_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[6]~12\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~836\,
	regout => \memory1|RAM~380_regout\);

-- Location: LC_X9_Y8_N2
\memory1|RAM~444\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~837\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~836\ & (\memory1|RAM~508_regout\)) # (!\memory1|RAM~836\ & ((E1L359Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~836\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~508_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[6]~12\,
	datad => \memory1|RAM~836\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~837\,
	regout => \memory1|RAM~444_regout\);

-- Location: LC_X14_Y5_N2
\memory1|RAM~476\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~476_regout\ = DFFEAS((((\mux8|Y[6]~12\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[6]~12\,
	aclr => GND,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~476_regout\);

-- Location: LC_X16_Y6_N0
\memory1|RAM~284\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~284_regout\ = DFFEAS((((\mux8|Y[6]~12\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[6]~12\,
	aclr => GND,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~284_regout\);

-- Location: LC_X11_Y6_N1
\memory1|RAM~348\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~838\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((E1L281Q))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~284_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~284_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[6]~12\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~838\,
	regout => \memory1|RAM~348_regout\);

-- Location: LC_X11_Y6_N0
\memory1|RAM~412\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~839\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~838\ & (\memory1|RAM~476_regout\)) # (!\memory1|RAM~838\ & ((E1L333Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~838\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~476_regout\,
	datac => \mux8|Y[6]~12\,
	datad => \memory1|RAM~838\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~839\,
	regout => \memory1|RAM~412_regout\);

-- Location: LC_X8_Y8_N9
\memory1|RAM~840\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~840_combout\ = (\mux4_1|Mux15~1_combout\ & (\mux4_1|Mux14~1_combout\)) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & (\memory1|RAM~837\)) # (!\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~839\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \memory1|RAM~837\,
	datad => \memory1|RAM~839\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~840_combout\);

-- Location: LC_X8_Y8_N7
\memory1|RAM~843\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~843_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~840_combout\ & ((\memory1|RAM~842\))) # (!\memory1|RAM~840_combout\ & (\memory1|RAM~835\)))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~840_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~835\,
	datac => \memory1|RAM~842\,
	datad => \memory1|RAM~840_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~843_combout\);

-- Location: LC_X13_Y3_N1
\memory1|RAM~268\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~268_regout\ = DFFEAS((((\mux8|Y[6]~12\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[6]~12\,
	aclr => GND,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~268_regout\);

-- Location: LC_X12_Y3_N2
\memory1|RAM~220\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~220_regout\ = DFFEAS((((\mux8|Y[6]~12\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[6]~12\,
	aclr => GND,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~220_regout\);

-- Location: LC_X9_Y4_N4
\memory1|RAM~236\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~851\ = (\mux4_1|Mux15~1_combout\ & (((E1L190Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~220_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~220_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[6]~12\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~851\,
	regout => \memory1|RAM~236_regout\);

-- Location: LC_X9_Y4_N5
\memory1|RAM~252\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~852\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~851\ & (\memory1|RAM~268_regout\)) # (!\memory1|RAM~851\ & ((E1L203Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~851\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~268_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[6]~12\,
	datad => \memory1|RAM~851\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~852\,
	regout => \memory1|RAM~252_regout\);

-- Location: LC_X6_Y10_N8
\memory1|RAM~124\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~124_regout\ = DFFEAS((((!\mux8|Y[6]~12\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[6]~12\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~124_regout\);

-- Location: LC_X6_Y10_N3
\memory1|RAM~140\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~140_regout\ = DFFEAS((((!\mux8|Y[6]~12\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[6]~12\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~140_regout\);

-- Location: LC_X9_Y5_N6
\memory1|RAM~92\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~92_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~698_combout\, \mux8|Y[6]~12\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[6]~12\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~92_regout\);

-- Location: LC_X9_Y5_N0
\memory1|RAM~108\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~844\ = (\mux4_1|Mux15~1_combout\ & (((E1L86Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~92_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~92_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[6]~12\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~844\,
	regout => \memory1|RAM~108_regout\);

-- Location: LC_X8_Y8_N0
\memory1|RAM~845\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~845_combout\ = (\memory1|RAM~844\ & (((!\mux4_1|Mux14~1_combout\) # (!\memory1|RAM~140_regout\)))) # (!\memory1|RAM~844\ & (!\memory1|RAM~124_regout\ & ((\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "35f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~124_regout\,
	datab => \memory1|RAM~140_regout\,
	datac => \memory1|RAM~844\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~845_combout\);

-- Location: LC_X8_Y5_N8
\memory1|RAM~76\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~76_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~703_combout\, \mux8|Y[6]~12\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[6]~12\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~76_regout\);

-- Location: LC_X7_Y5_N1
\memory1|RAM~28\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~28_regout\ = DFFEAS((((\mux8|Y[6]~12\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[6]~12\,
	aclr => GND,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~28_regout\);

-- Location: LC_X7_Y5_N6
\memory1|RAM~60\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~848\ = (\mux4_1|Mux14~1_combout\ & (((E1L47Q) # (\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~28_regout\ & ((!\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~28_regout\,
	datac => \mux8|Y[6]~12\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~848\,
	regout => \memory1|RAM~60_regout\);

-- Location: LC_X8_Y8_N6
\memory1|RAM~44\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~849\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~848\ & (\memory1|RAM~76_regout\)) # (!\memory1|RAM~848\ & ((E1L34Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~848\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~76_regout\,
	datac => \mux8|Y[6]~12\,
	datad => \memory1|RAM~848\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~849\,
	regout => \memory1|RAM~44_regout\);

-- Location: LC_X8_Y10_N4
\memory1|RAM~204\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~204_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, \mux8|Y[6]~12\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[6]~12\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~204_regout\);

-- Location: LC_X7_Y10_N1
\memory1|RAM~156\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~156_regout\ = DFFEAS((((\mux8|Y[6]~12\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[6]~12\,
	aclr => GND,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~156_regout\);

-- Location: LC_X7_Y10_N7
\memory1|RAM~188\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~846\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & ((E1L151Q))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~156_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~156_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[6]~12\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~846\,
	regout => \memory1|RAM~188_regout\);

-- Location: LC_X8_Y10_N7
\memory1|RAM~172\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~847\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~846\ & (\memory1|RAM~204_regout\)) # (!\memory1|RAM~846\ & ((E1L138Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~846\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~204_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[6]~12\,
	datad => \memory1|RAM~846\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~847\,
	regout => \memory1|RAM~172_regout\);

-- Location: LC_X8_Y8_N3
\memory1|RAM~850\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~850_combout\ = (\mux4_1|Mux13~1_combout\ & (\mux4_1|Mux12~1_combout\)) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~847\))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~849\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \memory1|RAM~849\,
	datad => \memory1|RAM~847\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~850_combout\);

-- Location: LC_X8_Y8_N4
\memory1|RAM~853\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~853_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~850_combout\ & (\memory1|RAM~852\)) # (!\memory1|RAM~850_combout\ & ((\memory1|RAM~845_combout\))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~850_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~852\,
	datac => \memory1|RAM~845_combout\,
	datad => \memory1|RAM~850_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~853_combout\);

-- Location: LC_X8_Y8_N5
\memory1|RAM~854\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~854_combout\ = (\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~843_combout\)))) # (!\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~853_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~843_combout\,
	datad => \memory1|RAM~853_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~854_combout\);

-- Location: LC_X8_Y8_N1
\memory1|memout[6]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(6) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~854_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~854_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(6));

-- Location: LC_X5_Y6_N0
\t2|q[6]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(6) = DFFEAS((!\T~combout\(17) & (!\T~combout\(18) & ((\alu1|Mux9~1\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(17),
	datab => \T~combout\(18),
	datad => \alu1|Mux9~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(6));

-- Location: LC_X5_Y6_N9
\instruction_register|q[6]\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux9~2\ = (\T~combout\(14) & (\T~combout\(18) & (D1_q[6]))) # (!\T~combout\(14) & (((\t2|q\(6)))))
-- \instruction_register|q\(6) = DFFEAS(\mux8_2|Mux9~2\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \memory1|memout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(14),
	datab => \T~combout\(18),
	datac => \memory1|memout\(6),
	datad => \t2|q\(6),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux9~2\,
	regout => \instruction_register|q\(6));

-- Location: LC_X5_Y6_N8
\mux8_2|Mux9~3\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux9~3_combout\ = (!\T~combout\(15) & (!\T~combout\(13) & ((\mux8_2|Mux9~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(15),
	datab => \T~combout\(13),
	datad => \mux8_2|Mux9~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux9~3_combout\);

-- Location: LC_X6_Y8_N1
\t1|q[6]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(6) = DFFEAS((((\T~combout\(16) & \alu1|Mux9~1\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \T~combout\(16),
	datad => \alu1|Mux9~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(6));

-- Location: LC_X6_Y8_N3
\PC|q[6]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(6) = DFFEAS((\T~combout\(21) & (((\alu1|Mux9~1\)))) # (!\T~combout\(21) & (\t2|q\(6))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(6), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(21),
	datab => \t2|q\(6),
	datac => \t3|q\(6),
	datad => \alu1|Mux9~1\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(6));

-- Location: LC_X6_Y7_N1
\mux8_1|Mux9~3\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux9~3_combout\ = (\mux8_1|Mux9~1_combout\ & ((\mux8_1|Mux9~2_combout\ & ((\t2|q\(6)))) # (!\mux8_1|Mux9~2_combout\ & (\PC|q\(6))))) # (!\mux8_1|Mux9~1_combout\ & (!\mux8_1|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b931",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux9~1_combout\,
	datab => \mux8_1|Mux9~2_combout\,
	datac => \PC|q\(6),
	datad => \t2|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux9~3_combout\);

-- Location: LC_X6_Y7_N4
\PC1|q[6]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux9\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux9~3_combout\ & (\t1|q\(6))) # (!\mux8_1|Mux9~3_combout\ & ((K2_q[6]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(6),
	datac => \PC|q\(6),
	datad => \mux8_1|Mux9~3_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux9\,
	regout => \PC1|q\(6));

-- Location: LC_X5_Y7_N4
\alu1|sub1|ist_sub:6:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:6:F1|Borrow~0_combout\ = ((\mux8_1|Mux9\ & (\mux8_2|Mux9~3_combout\ & \alu1|sub1|ist_sub:5:F1|Borrow~0_combout\)) # (!\mux8_1|Mux9\ & ((\mux8_2|Mux9~3_combout\) # (\alu1|sub1|ist_sub:5:F1|Borrow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_1|Mux9\,
	datac => \mux8_2|Mux9~3_combout\,
	datad => \alu1|sub1|ist_sub:5:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:6:F1|Borrow~0_combout\);

-- Location: LC_X3_Y6_N2
\alu1|add1|ist_add:6:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:6:F1|cout~0_combout\ = ((\mux8_2|Mux9~3_combout\ & ((\mux8_1|Mux9\) # (\alu1|add1|ist_add:5:F1|cout~0_combout\))) # (!\mux8_2|Mux9~3_combout\ & (\mux8_1|Mux9\ & \alu1|add1|ist_add:5:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_2|Mux9~3_combout\,
	datac => \mux8_1|Mux9\,
	datad => \alu1|add1|ist_add:5:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:6:F1|cout~0_combout\);

-- Location: LC_X4_Y9_N3
\alu1|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux8~0_combout\ = (\T~combout\(26) & ((\T~combout\(27)) # ((\alu1|sub1|ist_sub:6:F1|Borrow~0_combout\)))) # (!\T~combout\(26) & (!\T~combout\(27) & ((\alu1|add1|ist_add:6:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(26),
	datab => \T~combout\(27),
	datac => \alu1|sub1|ist_sub:6:F1|Borrow~0_combout\,
	datad => \alu1|add1|ist_add:6:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux8~0_combout\);

-- Location: LC_X4_Y9_N4
\t3|q[7]\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux8~1\ = (\T~combout\(27) & ((\mux8_1|Mux8~2_combout\ & ((\alu1|Mux8~0_combout\) # (!\mux8_2|Mux8~1\))) # (!\mux8_1|Mux8~2_combout\ & ((\mux8_2|Mux8~1\) # (!\alu1|Mux8~0_combout\))))) # (!\T~combout\(27) & (\mux8_1|Mux8~2_combout\ $ 
-- (\mux8_2|Mux8~1\ $ (\alu1|Mux8~0_combout\))))
-- \t3|q\(7) = DFFEAS(\alu1|Mux8~1\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e95e",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux8~2_combout\,
	datab => \T~combout\(27),
	datac => \mux8_2|Mux8~1\,
	datad => \alu1|Mux8~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux8~1\,
	regout => \t3|q\(7));

-- Location: LC_X4_Y9_N9
\PC|q[7]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(7) = DFFEAS((\T~combout\(21) & (((\alu1|Mux8~1\)))) # (!\T~combout\(21) & (\t2|q\(7))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(7), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t2|q\(7),
	datab => \T~combout\(21),
	datac => \t3|q\(7),
	datad => \alu1|Mux8~1\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(7));

-- Location: LC_X10_Y8_N0
\mux8_1|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux1~0_combout\ = (\T~combout\(11) $ (((\T~combout\(12)) # (!\T~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(10),
	datac => \T~combout\(11),
	datad => \T~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux1~0_combout\);

-- Location: LC_X5_Y9_N1
\mux8_1|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux8~0_combout\ = (\mux8_1|Mux1~0_combout\ & ((\mux8_1|Mux9~2_combout\ & ((\t2|q\(7)))) # (!\mux8_1|Mux9~2_combout\ & (\PC|q\(7))))) # (!\mux8_1|Mux1~0_combout\ & (!\mux8_1|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b931",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux1~0_combout\,
	datab => \mux8_1|Mux9~2_combout\,
	datac => \PC|q\(7),
	datad => \t2|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux8~0_combout\);

-- Location: LC_X5_Y9_N2
\PC1|q[7]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux8~1\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux8~0_combout\ & (\t1|q\(7))) # (!\mux8_1|Mux8~0_combout\ & ((K2_q[7]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(7),
	datac => \PC|q\(7),
	datad => \mux8_1|Mux8~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux8~1\,
	regout => \PC1|q\(7));

-- Location: LC_X5_Y9_N3
\mux8_1|Mux8~2\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux8~2_combout\ = ((\mux8_1|Mux1~1_combout\ & (\instruction_register|q\(0))) # (!\mux8_1|Mux1~1_combout\ & ((\mux8_1|Mux8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_1|Mux1~1_combout\,
	datac => \instruction_register|q\(0),
	datad => \mux8_1|Mux8~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux8~2_combout\);

-- Location: LC_X5_Y9_N9
\t1|q[7]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(7) = DFFEAS((((\T~combout\(16) & \alu1|Mux8~1\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \T~combout\(16),
	datad => \alu1|Mux8~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(7));

-- Location: LC_X10_Y9_N0
\memory1|RAM~301\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[7]~11\ = ((\T~combout\(25) & ((\t3|q\(7)))) # (!\T~combout\(25) & (\t1|q\(7))))
-- \memory1|RAM~301_regout\ = DFFEAS(\mux8|Y[7]~11\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \t1|q\(7),
	datac => \T~combout\(25),
	datad => \t3|q\(7),
	aclr => GND,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[7]~11\,
	regout => \memory1|RAM~301_regout\);

-- Location: LC_X11_Y8_N3
\memory1|RAM~493\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~493_regout\ = DFFEAS((((\mux8|Y[7]~11\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[7]~11\,
	aclr => GND,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~493_regout\);

-- Location: LC_X9_Y9_N2
\memory1|RAM~429\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~813\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((E1L347Q))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~301_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~301_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[7]~11\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~813\,
	regout => \memory1|RAM~429_regout\);

-- Location: LC_X9_Y9_N3
\memory1|RAM~365\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~814\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~813\ & (\memory1|RAM~493_regout\)) # (!\memory1|RAM~813\ & ((E1L295Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~813\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~493_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[7]~11\,
	datad => \memory1|RAM~813\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~814\,
	regout => \memory1|RAM~365_regout\);

-- Location: LC_X15_Y9_N8
\memory1|RAM~525\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~525_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, \mux8|Y[7]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[7]~11\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~525_regout\);

-- Location: LC_X13_Y9_N3
\memory1|RAM~333\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~333_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, \mux8|Y[7]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[7]~11\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~333_regout\);

-- Location: LC_X11_Y9_N8
\memory1|RAM~461\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~820\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((E1L373Q))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~333_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~333_regout\,
	datac => \mux8|Y[7]~11\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~820\,
	regout => \memory1|RAM~461_regout\);

-- Location: LC_X11_Y9_N9
\memory1|RAM~397\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~821\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~820\ & (\memory1|RAM~525_regout\)) # (!\memory1|RAM~820\ & ((E1L321Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~820\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~525_regout\,
	datac => \mux8|Y[7]~11\,
	datad => \memory1|RAM~820\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~821\,
	regout => \memory1|RAM~397_regout\);

-- Location: LC_X6_Y4_N9
\memory1|RAM~509\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~509_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, \mux8|Y[7]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[7]~11\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~509_regout\);

-- Location: LC_X10_Y8_N1
\memory1|RAM~317\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~317_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, \mux8|Y[7]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[7]~11\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~317_regout\);

-- Location: LC_X9_Y8_N5
\memory1|RAM~381\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~815\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((E1L308Q))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~317_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~317_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[7]~11\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~815\,
	regout => \memory1|RAM~381_regout\);

-- Location: LC_X9_Y8_N6
\memory1|RAM~445\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~816\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~815\ & (\memory1|RAM~509_regout\)) # (!\memory1|RAM~815\ & ((E1L360Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~815\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~509_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[7]~11\,
	datad => \memory1|RAM~815\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~816\,
	regout => \memory1|RAM~445_regout\);

-- Location: LC_X14_Y5_N9
\memory1|RAM~477\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~477_regout\ = DFFEAS((((\mux8|Y[7]~11\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[7]~11\,
	aclr => GND,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~477_regout\);

-- Location: LC_X16_Y6_N6
\memory1|RAM~285\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~285_regout\ = DFFEAS((((\mux8|Y[7]~11\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[7]~11\,
	aclr => GND,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~285_regout\);

-- Location: LC_X11_Y6_N8
\memory1|RAM~349\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~817\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((E1L282Q))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~285_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~285_regout\,
	datac => \mux8|Y[7]~11\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~817\,
	regout => \memory1|RAM~349_regout\);

-- Location: LC_X11_Y6_N4
\memory1|RAM~413\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~818\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~817\ & (\memory1|RAM~477_regout\)) # (!\memory1|RAM~817\ & ((E1L334Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~817\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~477_regout\,
	datac => \mux8|Y[7]~11\,
	datad => \memory1|RAM~817\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~818\,
	regout => \memory1|RAM~413_regout\);

-- Location: LC_X7_Y8_N3
\memory1|RAM~819\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~819_combout\ = (\mux4_1|Mux15~1_combout\ & (\mux4_1|Mux14~1_combout\)) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & (\memory1|RAM~816\)) # (!\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~818\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \memory1|RAM~816\,
	datad => \memory1|RAM~818\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~819_combout\);

-- Location: LC_X7_Y8_N4
\memory1|RAM~822\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~822_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~819_combout\ & ((\memory1|RAM~821\))) # (!\memory1|RAM~819_combout\ & (\memory1|RAM~814\)))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~819_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~814\,
	datac => \memory1|RAM~821\,
	datad => \memory1|RAM~819_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~822_combout\);

-- Location: LC_X6_Y10_N0
\memory1|RAM~141\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~141_regout\ = DFFEAS((((!\mux8|Y[7]~11\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[7]~11\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~141_regout\);

-- Location: LC_X6_Y5_N7
\memory1|RAM~93\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~93_regout\ = DFFEAS((((!\mux8|Y[7]~11\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~698_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[7]~11\,
	aclr => GND,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~93_regout\);

-- Location: LC_X7_Y6_N5
\memory1|RAM~109\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~823\ = (\mux4_1|Mux15~1_combout\ & (((E1L87Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (!\memory1|RAM~93_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aab1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~93_regout\,
	datac => \mux8|Y[7]~11\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~823\,
	regout => \memory1|RAM~109_regout\);

-- Location: LC_X6_Y10_N1
\memory1|RAM~125\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~125_regout\ = DFFEAS((((!\mux8|Y[7]~11\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[7]~11\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~125_regout\);

-- Location: LC_X7_Y8_N9
\memory1|RAM~824\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~824_combout\ = (\memory1|RAM~823\ & (((!\mux4_1|Mux14~1_combout\)) # (!\memory1|RAM~141_regout\))) # (!\memory1|RAM~823\ & (((!\memory1|RAM~125_regout\ & \mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~141_regout\,
	datab => \memory1|RAM~823\,
	datac => \memory1|RAM~125_regout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~824_combout\);

-- Location: LC_X16_Y4_N3
\memory1|RAM~269\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~269_regout\ = DFFEAS((((\mux8|Y[7]~11\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[7]~11\,
	aclr => GND,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~269_regout\);

-- Location: LC_X13_Y5_N8
\memory1|RAM~221\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~221_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, \mux8|Y[7]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[7]~11\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~221_regout\);

-- Location: LC_X12_Y9_N7
\memory1|RAM~237\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~830\ = (\mux4_1|Mux15~1_combout\ & (((E1L191Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~221_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~221_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[7]~11\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~830\,
	regout => \memory1|RAM~237_regout\);

-- Location: LC_X12_Y9_N8
\memory1|RAM~253\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~831\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~830\ & (\memory1|RAM~269_regout\)) # (!\memory1|RAM~830\ & ((E1L204Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~830\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~269_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[7]~11\,
	datad => \memory1|RAM~830\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~831\,
	regout => \memory1|RAM~253_regout\);

-- Location: LC_X8_Y5_N7
\memory1|RAM~77\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~77_regout\ = DFFEAS((((!\mux8|Y[7]~11\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~703_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[7]~11\,
	aclr => GND,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~77_regout\);

-- Location: LC_X7_Y5_N8
\memory1|RAM~29\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~29_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, \mux8|Y[7]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[7]~11\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~29_regout\);

-- Location: LC_X7_Y5_N5
\memory1|RAM~61\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~827\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & ((E1L48Q))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~29_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~29_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[7]~11\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~827\,
	regout => \memory1|RAM~61_regout\);

-- Location: LC_X8_Y5_N4
\memory1|RAM~45\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~828\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~827\ & (!\memory1|RAM~77_regout\)) # (!\memory1|RAM~827\ & ((E1L35Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~827\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~77_regout\,
	datac => \mux8|Y[7]~11\,
	datad => \memory1|RAM~827\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~828\,
	regout => \memory1|RAM~45_regout\);

-- Location: LC_X8_Y10_N9
\memory1|RAM~205\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~205_regout\ = DFFEAS((((\mux8|Y[7]~11\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[7]~11\,
	aclr => GND,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~205_regout\);

-- Location: LC_X7_Y10_N3
\memory1|RAM~157\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~157_regout\ = DFFEAS((((\mux8|Y[7]~11\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[7]~11\,
	aclr => GND,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~157_regout\);

-- Location: LC_X7_Y10_N6
\memory1|RAM~189\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~825\ = (\mux4_1|Mux14~1_combout\ & (((E1L152Q) # (\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~157_regout\ & ((!\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~157_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[7]~11\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~825\,
	regout => \memory1|RAM~189_regout\);

-- Location: LC_X7_Y8_N8
\memory1|RAM~173\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~826\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~825\ & (\memory1|RAM~205_regout\)) # (!\memory1|RAM~825\ & ((E1L139Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~825\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~205_regout\,
	datac => \mux8|Y[7]~11\,
	datad => \memory1|RAM~825\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~826\,
	regout => \memory1|RAM~173_regout\);

-- Location: LC_X7_Y8_N5
\memory1|RAM~829\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~829_combout\ = (\mux4_1|Mux13~1_combout\ & (\mux4_1|Mux12~1_combout\)) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~826\))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~828\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \memory1|RAM~828\,
	datad => \memory1|RAM~826\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~829_combout\);

-- Location: LC_X7_Y8_N6
\memory1|RAM~832\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~832_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~829_combout\ & ((\memory1|RAM~831\))) # (!\memory1|RAM~829_combout\ & (\memory1|RAM~824_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~829_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~824_combout\,
	datac => \memory1|RAM~831\,
	datad => \memory1|RAM~829_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~832_combout\);

-- Location: LC_X7_Y8_N7
\memory1|RAM~833\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~833_combout\ = ((\mux4_1|Mux11~1_combout\ & (\memory1|RAM~822_combout\)) # (!\mux4_1|Mux11~1_combout\ & ((\memory1|RAM~832_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~822_combout\,
	datad => \memory1|RAM~832_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~833_combout\);

-- Location: LC_X7_Y8_N1
\memory1|memout[7]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(7) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~833_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~833_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(7));

-- Location: LC_X5_Y6_N2
\mux8_2|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux8~0_combout\ = (!\T~combout\(14) & ((\T~combout\(15) & ((\instruction_register|q\(0)))) # (!\T~combout\(15) & (\t2|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t2|q\(7),
	datab => \T~combout\(14),
	datac => \instruction_register|q\(0),
	datad => \T~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux8~0_combout\);

-- Location: LC_X5_Y6_N3
\instruction_register|q[7]\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux8~1\ = (!\T~combout\(13) & ((\mux8_2|Mux8~0_combout\) # ((\mux8_2|Mux7~1_combout\ & D1_q[7]))))
-- \instruction_register|q\(7) = DFFEAS(\mux8_2|Mux8~1\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \memory1|memout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_2|Mux7~1_combout\,
	datab => \T~combout\(13),
	datac => \memory1|memout\(7),
	datad => \mux8_2|Mux8~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux8~1\,
	regout => \instruction_register|q\(7));

-- Location: LC_X4_Y6_N7
\alu1|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux7~1_combout\ = (\mux8_2|Mux8~1\ & (((\mux8_1|Mux8~2_combout\) # (\alu1|add1|ist_add:6:F1|cout~0_combout\)))) # (!\mux8_2|Mux8~1\ & (((\mux8_1|Mux8~2_combout\ & \alu1|add1|ist_add:6:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux8~1\,
	datac => \mux8_1|Mux8~2_combout\,
	datad => \alu1|add1|ist_add:6:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux7~1_combout\);

-- Location: LC_X5_Y7_N5
\alu1|sub1|ist_sub:7:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:7:F1|Borrow~0_combout\ = ((\mux8_1|Mux8~2_combout\ & (\mux8_2|Mux8~1\ & \alu1|sub1|ist_sub:6:F1|Borrow~0_combout\)) # (!\mux8_1|Mux8~2_combout\ & ((\mux8_2|Mux8~1\) # (\alu1|sub1|ist_sub:6:F1|Borrow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_1|Mux8~2_combout\,
	datac => \mux8_2|Mux8~1\,
	datad => \alu1|sub1|ist_sub:6:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:7:F1|Borrow~0_combout\);

-- Location: LC_X5_Y5_N1
\alu1|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux7~2_combout\ = (\T~combout\(26) & ((\T~combout\(27)) # ((\alu1|sub1|ist_sub:7:F1|Borrow~0_combout\)))) # (!\T~combout\(26) & (!\T~combout\(27) & (\alu1|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(26),
	datab => \T~combout\(27),
	datac => \alu1|Mux7~1_combout\,
	datad => \alu1|sub1|ist_sub:7:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux7~2_combout\);

-- Location: LC_X5_Y5_N2
\t3|q[8]\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux7~3\ = (\T~combout\(27) & ((\alu1|Mux7~2_combout\ & ((\alu1|Mux7~0_combout\))) # (!\alu1|Mux7~2_combout\ & (!\alu1|nand1|s0~0_combout\)))) # (!\T~combout\(27) & ((\alu1|Mux7~0_combout\ $ (\alu1|Mux7~2_combout\))))
-- \t3|q\(8) = DFFEAS(\alu1|Mux7~3\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a572",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(27),
	datab => \alu1|nand1|s0~0_combout\,
	datac => \alu1|Mux7~0_combout\,
	datad => \alu1|Mux7~2_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux7~3\,
	regout => \t3|q\(8));

-- Location: LC_X4_Y5_N0
\t1|q[8]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(8) = DFFEAS((((\alu1|Mux7~3\ & \T~combout\(16)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \alu1|Mux7~3\,
	datad => \T~combout\(16),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(8));

-- Location: LC_X4_Y5_N4
\t2|q[8]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(8) = DFFEAS(((!\T~combout\(18) & (\alu1|Mux7~3\ & !\T~combout\(17)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(18),
	datac => \alu1|Mux7~3\,
	datad => \T~combout\(17),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(8));

-- Location: LC_X5_Y5_N5
\PC|q[8]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(8) = DFFEAS((\T~combout\(21) & (((\alu1|Mux7~3\)))) # (!\T~combout\(21) & (\t2|q\(8))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(8), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(21),
	datab => \t2|q\(8),
	datac => \t3|q\(8),
	datad => \alu1|Mux7~3\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(8));

-- Location: LC_X4_Y5_N7
\mux8_1|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux7~0_combout\ = (\mux8_1|Mux9~2_combout\ & (\t2|q\(8) & (\mux8_1|Mux1~0_combout\))) # (!\mux8_1|Mux9~2_combout\ & (((\PC|q\(8)) # (!\mux8_1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b383",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t2|q\(8),
	datab => \mux8_1|Mux9~2_combout\,
	datac => \mux8_1|Mux1~0_combout\,
	datad => \PC|q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux7~0_combout\);

-- Location: LC_X4_Y5_N8
\PC1|q[8]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux7~1\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux7~0_combout\ & (\t1|q\(8))) # (!\mux8_1|Mux7~0_combout\ & ((K2_q[8]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(8),
	datac => \PC|q\(8),
	datad => \mux8_1|Mux7~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux7~1\,
	regout => \PC1|q\(8));

-- Location: LC_X3_Y5_N1
\alu1|nand1|s0~0\ : maxv_lcell
-- Equation(s):
-- \alu1|nand1|s0~0_combout\ = (\mux8_2|Mux7~2\ & ((\mux8_1|Mux1~1_combout\ & (\instruction_register|q\(1))) # (!\mux8_1|Mux1~1_combout\ & ((\mux8_1|Mux7~1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux1~1_combout\,
	datab => \mux8_2|Mux7~2\,
	datac => \instruction_register|q\(1),
	datad => \mux8_1|Mux7~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|nand1|s0~0_combout\);

-- Location: LC_X10_Y8_N5
\memory1|RAM~318\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[8]~10\ = ((\T~combout\(25) & (\t3|q\(8))) # (!\T~combout\(25) & ((\t1|q\(8)))))
-- \memory1|RAM~318_regout\ = DFFEAS(\mux8|Y[8]~10\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \t3|q\(8),
	datac => \t1|q\(8),
	datad => \T~combout\(25),
	aclr => GND,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[8]~10\,
	regout => \memory1|RAM~318_regout\);

-- Location: LC_X13_Y3_N3
\memory1|RAM~270\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~270_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, \mux8|Y[8]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[8]~10\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~270_regout\);

-- Location: LC_X12_Y3_N0
\memory1|RAM~222\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~222_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, \mux8|Y[8]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[8]~10\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~222_regout\);

-- Location: LC_X12_Y9_N4
\memory1|RAM~254\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~809\ = (\mux4_1|Mux14~1_combout\ & (((E1L205Q) # (\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~222_regout\ & ((!\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~222_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[8]~10\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~809\,
	regout => \memory1|RAM~254_regout\);

-- Location: LC_X12_Y9_N5
\memory1|RAM~238\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~810\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~809\ & (\memory1|RAM~270_regout\)) # (!\memory1|RAM~809\ & ((E1L192Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~809\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~270_regout\,
	datac => \mux8|Y[8]~10\,
	datad => \memory1|RAM~809\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~810\,
	regout => \memory1|RAM~238_regout\);

-- Location: LC_X8_Y10_N8
\memory1|RAM~206\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~206_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, \mux8|Y[8]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[8]~10\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~206_regout\);

-- Location: LC_X13_Y6_N2
\memory1|RAM~158\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~158_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, \mux8|Y[8]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[8]~10\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~158_regout\);

-- Location: LC_X13_Y6_N1
\memory1|RAM~174\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~802\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & ((E1L140Q))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~158_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~158_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[8]~10\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~802\,
	regout => \memory1|RAM~174_regout\);

-- Location: LC_X12_Y6_N2
\memory1|RAM~190\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~803\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~802\ & (\memory1|RAM~206_regout\)) # (!\memory1|RAM~802\ & ((E1L153Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~802\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~206_regout\,
	datac => \mux8|Y[8]~10\,
	datad => \memory1|RAM~802\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~803\,
	regout => \memory1|RAM~190_regout\);

-- Location: LC_X7_Y4_N6
\memory1|RAM~142\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~142_regout\ = DFFEAS((((!\mux8|Y[8]~10\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[8]~10\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~142_regout\);

-- Location: LC_X8_Y4_N0
\memory1|RAM~126\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~126_regout\ = DFFEAS((((!\mux8|Y[8]~10\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[8]~10\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~126_regout\);

-- Location: LC_X9_Y5_N3
\memory1|RAM~94\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~804\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)) # (!\memory1|RAM~126_regout\))) # (!\mux4_1|Mux14~1_combout\ & (((E1L75Q & !\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~126_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[8]~10\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~804\,
	regout => \memory1|RAM~94_regout\);

-- Location: LC_X9_Y5_N4
\memory1|RAM~110\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~805\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~804\ & (!\memory1|RAM~142_regout\)) # (!\memory1|RAM~804\ & ((E1L88Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~804\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~142_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[8]~10\,
	datad => \memory1|RAM~804\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~805\,
	regout => \memory1|RAM~110_regout\);

-- Location: LC_X15_Y7_N8
\memory1|RAM~78\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~78_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~703_combout\, \mux8|Y[8]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[8]~10\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~78_regout\);

-- Location: LC_X15_Y8_N9
\memory1|RAM~30\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~30_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, \mux8|Y[8]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[8]~10\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~30_regout\);

-- Location: LC_X8_Y8_N8
\memory1|RAM~46\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~806\ = (\mux4_1|Mux15~1_combout\ & (((E1L36Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~30_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~30_regout\,
	datac => \mux8|Y[8]~10\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~806\,
	regout => \memory1|RAM~46_regout\);

-- Location: LC_X12_Y8_N7
\memory1|RAM~62\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~807\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~806\ & (\memory1|RAM~78_regout\)) # (!\memory1|RAM~806\ & ((E1L49Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~806\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~78_regout\,
	datac => \mux8|Y[8]~10\,
	datad => \memory1|RAM~806\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~807\,
	regout => \memory1|RAM~62_regout\);

-- Location: LC_X12_Y8_N8
\memory1|RAM~808\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~808_combout\ = (\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\) # ((\memory1|RAM~805\)))) # (!\mux4_1|Mux13~1_combout\ & (!\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~807\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \memory1|RAM~805\,
	datad => \memory1|RAM~807\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~808_combout\);

-- Location: LC_X12_Y8_N0
\memory1|RAM~811\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~811_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~808_combout\ & (\memory1|RAM~810\)) # (!\memory1|RAM~808_combout\ & ((\memory1|RAM~803\))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~808_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~810\,
	datac => \memory1|RAM~803\,
	datad => \memory1|RAM~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~811_combout\);

-- Location: LC_X16_Y6_N9
\memory1|RAM~526\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~526_regout\ = DFFEAS((((\mux8|Y[8]~10\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[8]~10\,
	aclr => GND,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~526_regout\);

-- Location: LC_X14_Y8_N6
\memory1|RAM~334\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~334_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, \mux8|Y[8]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[8]~10\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~334_regout\);

-- Location: LC_X14_Y6_N4
\memory1|RAM~398\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~799\ = (\mux4_1|Mux13~1_combout\ & (((E1L322Q) # (\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~334_regout\ & ((!\mux4_1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~334_regout\,
	datac => \mux8|Y[8]~10\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~799\,
	regout => \memory1|RAM~398_regout\);

-- Location: LC_X14_Y6_N5
\memory1|RAM~462\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~800\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~799\ & (\memory1|RAM~526_regout\)) # (!\memory1|RAM~799\ & ((E1L374Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~799\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~526_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[8]~10\,
	datad => \memory1|RAM~799\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~800\,
	regout => \memory1|RAM~462_regout\);

-- Location: LC_X15_Y8_N2
\memory1|RAM~510\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~510_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, \mux8|Y[8]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[8]~10\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~510_regout\);

-- Location: LC_X10_Y8_N7
\memory1|RAM~446\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~792\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((E1L361Q))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~318_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~318_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[8]~10\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~792\,
	regout => \memory1|RAM~446_regout\);

-- Location: LC_X13_Y8_N3
\memory1|RAM~382\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~793\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~792\ & (\memory1|RAM~510_regout\)) # (!\memory1|RAM~792\ & ((E1L309Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~792\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~510_regout\,
	datac => \mux8|Y[8]~10\,
	datad => \memory1|RAM~792\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~793\,
	regout => \memory1|RAM~382_regout\);

-- Location: LC_X14_Y5_N8
\memory1|RAM~478\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~478_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, \mux8|Y[8]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[8]~10\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~478_regout\);

-- Location: LC_X16_Y6_N4
\memory1|RAM~286\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~286_regout\ = DFFEAS((((\mux8|Y[8]~10\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[8]~10\,
	aclr => GND,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~286_regout\);

-- Location: LC_X11_Y6_N5
\memory1|RAM~414\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~796\ = (\mux4_1|Mux12~1_combout\ & (((E1L335Q) # (\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~286_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~286_regout\,
	datac => \mux8|Y[8]~10\,
	datad => \mux4_1|Mux13~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~796\,
	regout => \memory1|RAM~414_regout\);

-- Location: LC_X11_Y6_N6
\memory1|RAM~350\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~797\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~796\ & (\memory1|RAM~478_regout\)) # (!\memory1|RAM~796\ & ((E1L283Q))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~796\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~478_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[8]~10\,
	datad => \memory1|RAM~796\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~797\,
	regout => \memory1|RAM~350_regout\);

-- Location: LC_X11_Y8_N6
\memory1|RAM~494\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~494_regout\ = DFFEAS((((\mux8|Y[8]~10\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[8]~10\,
	aclr => GND,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~494_regout\);

-- Location: LC_X10_Y10_N2
\memory1|RAM~302\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~302_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, \mux8|Y[8]~10\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[8]~10\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~302_regout\);

-- Location: LC_X10_Y10_N0
\memory1|RAM~366\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~794\ = (\mux4_1|Mux13~1_combout\ & (((E1L296Q) # (\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~302_regout\ & ((!\mux4_1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~302_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \mux8|Y[8]~10\,
	datad => \mux4_1|Mux12~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~794\,
	regout => \memory1|RAM~366_regout\);

-- Location: LC_X11_Y8_N2
\memory1|RAM~430\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~795\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~794\ & (\memory1|RAM~494_regout\)) # (!\memory1|RAM~794\ & ((E1L348Q))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~794\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~494_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \mux8|Y[8]~10\,
	datad => \memory1|RAM~794\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~795\,
	regout => \memory1|RAM~430_regout\);

-- Location: LC_X12_Y8_N3
\memory1|RAM~798\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~798_combout\ = (\mux4_1|Mux14~1_combout\ & (\mux4_1|Mux15~1_combout\)) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~795\))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~797\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \memory1|RAM~797\,
	datad => \memory1|RAM~795\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~798_combout\);

-- Location: LC_X12_Y8_N4
\memory1|RAM~801\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~801_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~798_combout\ & (\memory1|RAM~800\)) # (!\memory1|RAM~798_combout\ & ((\memory1|RAM~793\))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~798_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~800\,
	datac => \memory1|RAM~793\,
	datad => \memory1|RAM~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~801_combout\);

-- Location: LC_X12_Y8_N5
\memory1|RAM~812\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~812_combout\ = ((\mux4_1|Mux11~1_combout\ & ((\memory1|RAM~801_combout\))) # (!\mux4_1|Mux11~1_combout\ & (\memory1|RAM~811_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~811_combout\,
	datad => \memory1|RAM~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~812_combout\);

-- Location: LC_X12_Y8_N6
\memory1|memout[8]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(8) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~812_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~812_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(8));

-- Location: LC_X3_Y5_N6
\mux8_2|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux7~0_combout\ = (!\T~combout\(14) & ((\T~combout\(15) & (\instruction_register|q\(1))) # (!\T~combout\(15) & ((\t2|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(15),
	datab => \T~combout\(14),
	datac => \instruction_register|q\(1),
	datad => \t2|q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux7~0_combout\);

-- Location: LC_X3_Y5_N7
\instruction_register|q[8]\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux7~2\ = (!\T~combout\(13) & ((\mux8_2|Mux7~0_combout\) # ((\mux8_2|Mux7~1_combout\ & D1_q[8]))))
-- \instruction_register|q\(8) = DFFEAS(\mux8_2|Mux7~2\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \memory1|memout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_2|Mux7~1_combout\,
	datab => \T~combout\(13),
	datac => \memory1|memout\(8),
	datad => \mux8_2|Mux7~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux7~2\,
	regout => \instruction_register|q\(8));

-- Location: LC_X5_Y7_N6
\alu1|sub1|ist_sub:8:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:8:F1|Borrow~0_combout\ = (\mux8_2|Mux7~2\ & (((\alu1|sub1|ist_sub:7:F1|Borrow~0_combout\) # (!\mux8_1|Mux7~2_combout\)))) # (!\mux8_2|Mux7~2\ & (((!\mux8_1|Mux7~2_combout\ & \alu1|sub1|ist_sub:7:F1|Borrow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux7~2\,
	datac => \mux8_1|Mux7~2_combout\,
	datad => \alu1|sub1|ist_sub:7:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:8:F1|Borrow~0_combout\);

-- Location: LC_X3_Y6_N3
\alu1|add1|ist_add:8:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:8:F1|cout~0_combout\ = (\alu1|or1|s0_or\(8) & ((\mux8_2|Mux8~1\ & ((\mux8_1|Mux8~2_combout\) # (\alu1|add1|ist_add:6:F1|cout~0_combout\))) # (!\mux8_2|Mux8~1\ & (\mux8_1|Mux8~2_combout\ & \alu1|add1|ist_add:6:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux8~1\,
	datab => \alu1|or1|s0_or\(8),
	datac => \mux8_1|Mux8~2_combout\,
	datad => \alu1|add1|ist_add:6:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:8:F1|cout~0_combout\);

-- Location: LC_X5_Y5_N7
\alu1|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux6~0_combout\ = ((\alu1|nand1|s0~0_combout\) # ((\alu1|add1|ist_add:8:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu1|nand1|s0~0_combout\,
	datad => \alu1|add1|ist_add:8:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux6~0_combout\);

-- Location: LC_X5_Y5_N8
\alu1|Mux6~1\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux6~1_combout\ = (\T~combout\(26) & ((\alu1|sub1|ist_sub:8:F1|Borrow~0_combout\) # ((\T~combout\(27))))) # (!\T~combout\(26) & (((!\T~combout\(27) & \alu1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(26),
	datab => \alu1|sub1|ist_sub:8:F1|Borrow~0_combout\,
	datac => \T~combout\(27),
	datad => \alu1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux6~1_combout\);

-- Location: LC_X5_Y5_N9
\t3|q[9]\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux6~2\ = (\T~combout\(27) & ((\mux8_2|Mux6~0_combout\ & ((\alu1|Mux6~1_combout\) # (!\mux8_1|Mux6~2_combout\))) # (!\mux8_2|Mux6~0_combout\ & ((\mux8_1|Mux6~2_combout\) # (!\alu1|Mux6~1_combout\))))) # (!\T~combout\(27) & (\mux8_2|Mux6~0_combout\ $ 
-- (\mux8_1|Mux6~2_combout\ $ (\alu1|Mux6~1_combout\))))
-- \t3|q\(9) = DFFEAS(\alu1|Mux6~2\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e95e",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_2|Mux6~0_combout\,
	datab => \T~combout\(27),
	datac => \mux8_1|Mux6~2_combout\,
	datad => \alu1|Mux6~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux6~2\,
	regout => \t3|q\(9));

-- Location: LC_X5_Y5_N3
\PC|q[9]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(9) = DFFEAS((\T~combout\(21) & (((\alu1|Mux6~2\)))) # (!\T~combout\(21) & (\t2|q\(9))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(9), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(21),
	datab => \t2|q\(9),
	datac => \t3|q\(9),
	datad => \alu1|Mux6~2\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(9));

-- Location: LC_X7_Y6_N8
\mux8_1|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux6~0_combout\ = (\mux8_1|Mux1~0_combout\ & ((\mux8_1|Mux9~2_combout\ & (\t2|q\(9))) # (!\mux8_1|Mux9~2_combout\ & ((\PC|q\(9)))))) # (!\mux8_1|Mux1~0_combout\ & (((!\mux8_1|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f85",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux1~0_combout\,
	datab => \t2|q\(9),
	datac => \mux8_1|Mux9~2_combout\,
	datad => \PC|q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux6~0_combout\);

-- Location: LC_X7_Y6_N4
\PC1|q[9]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux6~1\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux6~0_combout\ & (\t1|q\(9))) # (!\mux8_1|Mux6~0_combout\ & ((K2_q[9]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t1|q\(9),
	datab => \mux8_1|Mux9~0_combout\,
	datac => \PC|q\(9),
	datad => \mux8_1|Mux6~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux6~1\,
	regout => \PC1|q\(9));

-- Location: LC_X6_Y6_N6
\mux8_1|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux6~2_combout\ = (\mux8_1|Mux1~1_combout\ & (\instruction_register|q\(2))) # (!\mux8_1|Mux1~1_combout\ & (((\mux8_1|Mux6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|q\(2),
	datab => \mux8_1|Mux1~1_combout\,
	datad => \mux8_1|Mux6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux6~2_combout\);

-- Location: LC_X5_Y5_N0
\t2|q[9]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(9) = DFFEAS((!\T~combout\(17) & (((!\T~combout\(18) & \alu1|Mux6~2\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(17),
	datac => \T~combout\(18),
	datad => \alu1|Mux6~2\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(9));

-- Location: LC_X5_Y6_N5
\mux8_2|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux6~0_combout\ = (\mux8_2|Mux3~0_combout\ & ((\T~combout\(15) & ((\instruction_register|q\(2)))) # (!\T~combout\(15) & (\t2|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux3~0_combout\,
	datab => \t2|q\(9),
	datac => \T~combout\(15),
	datad => \instruction_register|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux6~0_combout\);

-- Location: LC_X5_Y7_N7
\alu1|sub1|ist_sub:9:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:9:F1|Borrow~0_combout\ = (\mux8_2|Mux6~0_combout\ & (((\alu1|sub1|ist_sub:8:F1|Borrow~0_combout\)) # (!\mux8_1|Mux6~2_combout\))) # (!\mux8_2|Mux6~0_combout\ & (!\mux8_1|Mux6~2_combout\ & ((\alu1|sub1|ist_sub:8:F1|Borrow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux6~0_combout\,
	datab => \mux8_1|Mux6~2_combout\,
	datad => \alu1|sub1|ist_sub:8:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:9:F1|Borrow~0_combout\);

-- Location: LC_X3_Y6_N4
\alu1|add1|ist_add:9:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:9:F1|cout~0_combout\ = (\mux8_2|Mux6~0_combout\ & ((\alu1|nand1|s0~0_combout\) # ((\mux8_1|Mux6~2_combout\) # (\alu1|add1|ist_add:8:F1|cout~0_combout\)))) # (!\mux8_2|Mux6~0_combout\ & (\mux8_1|Mux6~2_combout\ & 
-- ((\alu1|nand1|s0~0_combout\) # (\alu1|add1|ist_add:8:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|nand1|s0~0_combout\,
	datab => \mux8_2|Mux6~0_combout\,
	datac => \mux8_1|Mux6~2_combout\,
	datad => \alu1|add1|ist_add:8:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:9:F1|cout~0_combout\);

-- Location: LC_X6_Y8_N4
\alu1|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux5~2_combout\ = (\T~combout\(27) & (\T~combout\(26))) # (!\T~combout\(27) & ((\T~combout\(26) & (\alu1|sub1|ist_sub:9:F1|Borrow~0_combout\)) # (!\T~combout\(26) & ((\alu1|add1|ist_add:9:F1|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(27),
	datab => \T~combout\(26),
	datac => \alu1|sub1|ist_sub:9:F1|Borrow~0_combout\,
	datad => \alu1|add1|ist_add:9:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux5~2_combout\);

-- Location: LC_X6_Y8_N5
\t3|q[10]\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux5~3\ = (\T~combout\(27) & ((\alu1|Mux5~1_combout\ & ((\alu1|Mux5~2_combout\) # (!\mux8_2|Mux5~0_combout\))) # (!\alu1|Mux5~1_combout\ & ((\mux8_2|Mux5~0_combout\) # (!\alu1|Mux5~2_combout\))))) # (!\T~combout\(27) & (\alu1|Mux5~1_combout\ $ 
-- (\mux8_2|Mux5~0_combout\ $ (\alu1|Mux5~2_combout\))))
-- \t3|q\(10) = DFFEAS(\alu1|Mux5~3\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e93e",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(27),
	datab => \alu1|Mux5~1_combout\,
	datac => \mux8_2|Mux5~0_combout\,
	datad => \alu1|Mux5~2_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux5~3\,
	regout => \t3|q\(10));

-- Location: LC_X6_Y8_N6
\PC|q[10]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(10) = DFFEAS((\T~combout\(21) & (((\alu1|Mux5~3\)))) # (!\T~combout\(21) & (\t2|q\(10))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(10), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(21),
	datab => \t2|q\(10),
	datac => \t3|q\(10),
	datad => \alu1|Mux5~3\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(10));

-- Location: LC_X7_Y6_N9
\mux8_1|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux5~0_combout\ = (\mux8_1|Mux1~0_combout\ & ((\mux8_1|Mux9~2_combout\ & ((\t2|q\(10)))) # (!\mux8_1|Mux9~2_combout\ & (\PC|q\(10))))) # (!\mux8_1|Mux1~0_combout\ & (((!\mux8_1|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ad0d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux1~0_combout\,
	datab => \PC|q\(10),
	datac => \mux8_1|Mux9~2_combout\,
	datad => \t2|q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux5~0_combout\);

-- Location: LC_X7_Y6_N6
\PC1|q[10]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux5~1\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux5~0_combout\ & (\t1|q\(10))) # (!\mux8_1|Mux5~0_combout\ & ((K2_q[10]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(10),
	datac => \PC|q\(10),
	datad => \mux8_1|Mux5~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux5~1\,
	regout => \PC1|q\(10));

-- Location: LC_X7_Y6_N7
\mux8_1|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux5~2_combout\ = ((\mux8_1|Mux1~1_combout\ & (\instruction_register|q\(3))) # (!\mux8_1|Mux1~1_combout\ & ((\mux8_1|Mux5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|q\(3),
	datac => \mux8_1|Mux1~1_combout\,
	datad => \mux8_1|Mux5~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux5~2_combout\);

-- Location: LC_X7_Y6_N2
\alu1|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux5~0_combout\ = (\mux8_1|Mux1~1_combout\ & (((\instruction_register|q\(3))))) # (!\mux8_1|Mux1~1_combout\ & (((\mux8_1|Mux5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux1~1_combout\,
	datac => \mux8_1|Mux5~1\,
	datad => \instruction_register|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux5~0_combout\);

-- Location: LC_X7_Y6_N3
\alu1|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux5~1_combout\ = (\T~combout\(27) & (((\alu1|Mux5~0_combout\)))) # (!\T~combout\(27) & (((\mux8_1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(27),
	datac => \mux8_1|Mux5~2_combout\,
	datad => \alu1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux5~1_combout\);

-- Location: LC_X6_Y8_N7
\t2|q[10]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(10) = DFFEAS((!\T~combout\(18) & (((\alu1|Mux5~3\ & !\T~combout\(17))))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(18),
	datac => \alu1|Mux5~3\,
	datad => \T~combout\(17),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(10));

-- Location: LC_X6_Y8_N9
\mux8_2|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux5~0_combout\ = (\mux8_2|Mux3~0_combout\ & ((\T~combout\(15) & ((\instruction_register|q\(3)))) # (!\T~combout\(15) & (\t2|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c840",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(15),
	datab => \mux8_2|Mux3~0_combout\,
	datac => \t2|q\(10),
	datad => \instruction_register|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux5~0_combout\);

-- Location: LC_X5_Y7_N8
\alu1|sub1|ist_sub:10:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:10:F1|Borrow~0_combout\ = ((\mux8_2|Mux5~0_combout\ & ((\alu1|sub1|ist_sub:9:F1|Borrow~0_combout\) # (!\mux8_1|Mux5~2_combout\))) # (!\mux8_2|Mux5~0_combout\ & (!\mux8_1|Mux5~2_combout\ & \alu1|sub1|ist_sub:9:F1|Borrow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_2|Mux5~0_combout\,
	datac => \mux8_1|Mux5~2_combout\,
	datad => \alu1|sub1|ist_sub:9:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:10:F1|Borrow~0_combout\);

-- Location: LC_X3_Y6_N5
\alu1|add1|ist_add:10:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:10:F1|cout~0_combout\ = ((\mux8_1|Mux5~2_combout\ & ((\mux8_2|Mux5~0_combout\) # (\alu1|add1|ist_add:9:F1|cout~0_combout\))) # (!\mux8_1|Mux5~2_combout\ & (\mux8_2|Mux5~0_combout\ & \alu1|add1|ist_add:9:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_1|Mux5~2_combout\,
	datac => \mux8_2|Mux5~0_combout\,
	datad => \alu1|add1|ist_add:9:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:10:F1|cout~0_combout\);

-- Location: LC_X4_Y9_N0
\alu1|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux4~0_combout\ = (\T~combout\(26) & ((\alu1|sub1|ist_sub:10:F1|Borrow~0_combout\) # ((\T~combout\(27))))) # (!\T~combout\(26) & (((!\T~combout\(27) & \alu1|add1|ist_add:10:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(26),
	datab => \alu1|sub1|ist_sub:10:F1|Borrow~0_combout\,
	datac => \T~combout\(27),
	datad => \alu1|add1|ist_add:10:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux4~0_combout\);

-- Location: LC_X4_Y9_N1
\t3|q[11]\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux4~1\ = (\T~combout\(27) & ((\mux8_1|Mux4~2_combout\ & ((\alu1|Mux4~0_combout\) # (!\mux8_2|Mux4~0_combout\))) # (!\mux8_1|Mux4~2_combout\ & ((\mux8_2|Mux4~0_combout\) # (!\alu1|Mux4~0_combout\))))) # (!\T~combout\(27) & (\mux8_1|Mux4~2_combout\ $ 
-- (\mux8_2|Mux4~0_combout\ $ (\alu1|Mux4~0_combout\))))
-- \t3|q\(11) = DFFEAS(\alu1|Mux4~1\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e95e",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux4~2_combout\,
	datab => \T~combout\(27),
	datac => \mux8_2|Mux4~0_combout\,
	datad => \alu1|Mux4~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux4~1\,
	regout => \t3|q\(11));

-- Location: LC_X4_Y9_N6
\PC|q[11]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(11) = DFFEAS((\T~combout\(21) & (((\alu1|Mux4~1\)))) # (!\T~combout\(21) & (\t2|q\(11))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(11), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t2|q\(11),
	datab => \T~combout\(21),
	datac => \t3|q\(11),
	datad => \alu1|Mux4~1\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(11));

-- Location: LC_X4_Y8_N2
\mux8_1|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux4~0_combout\ = (\mux8_1|Mux9~2_combout\ & (\t2|q\(11) & (\mux8_1|Mux1~0_combout\))) # (!\mux8_1|Mux9~2_combout\ & (((\PC|q\(11)) # (!\mux8_1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b383",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t2|q\(11),
	datab => \mux8_1|Mux9~2_combout\,
	datac => \mux8_1|Mux1~0_combout\,
	datad => \PC|q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux4~0_combout\);

-- Location: LC_X4_Y8_N0
\PC1|q[11]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux4~1\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux4~0_combout\ & (\t1|q\(11))) # (!\mux8_1|Mux4~0_combout\ & ((K2_q[11]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t1|q\(11),
	datab => \mux8_1|Mux9~0_combout\,
	datac => \PC|q\(11),
	datad => \mux8_1|Mux4~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux4~1\,
	regout => \PC1|q\(11));

-- Location: LC_X4_Y8_N1
\mux8_1|Mux4~2\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux4~2_combout\ = (\mux8_1|Mux1~1_combout\ & (((\instruction_register|q\(4))))) # (!\mux8_1|Mux1~1_combout\ & (((\mux8_1|Mux4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux1~1_combout\,
	datac => \instruction_register|q\(4),
	datad => \mux8_1|Mux4~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux4~2_combout\);

-- Location: LC_X4_Y9_N7
\t2|q[11]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(11) = DFFEAS(((!\T~combout\(17) & (!\T~combout\(18) & \alu1|Mux4~1\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(17),
	datac => \T~combout\(18),
	datad => \alu1|Mux4~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(11));

-- Location: LC_X4_Y8_N7
\mux8_2|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux4~0_combout\ = (\mux8_2|Mux3~0_combout\ & ((\T~combout\(15) & (\instruction_register|q\(4))) # (!\T~combout\(15) & ((\t2|q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux3~0_combout\,
	datab => \T~combout\(15),
	datac => \instruction_register|q\(4),
	datad => \t2|q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux4~0_combout\);

-- Location: LC_X3_Y6_N6
\alu1|add1|ist_add:11:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:11:F1|cout~0_combout\ = (\mux8_2|Mux4~0_combout\ & (((\mux8_1|Mux4~2_combout\) # (\alu1|add1|ist_add:10:F1|cout~0_combout\)))) # (!\mux8_2|Mux4~0_combout\ & (((\mux8_1|Mux4~2_combout\ & \alu1|add1|ist_add:10:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux4~0_combout\,
	datac => \mux8_1|Mux4~2_combout\,
	datad => \alu1|add1|ist_add:10:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:11:F1|cout~0_combout\);

-- Location: LC_X5_Y7_N9
\alu1|sub1|ist_sub:11:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:11:F1|Borrow~0_combout\ = ((\mux8_2|Mux4~0_combout\ & ((\alu1|sub1|ist_sub:10:F1|Borrow~0_combout\) # (!\mux8_1|Mux4~2_combout\))) # (!\mux8_2|Mux4~0_combout\ & (!\mux8_1|Mux4~2_combout\ & \alu1|sub1|ist_sub:10:F1|Borrow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_2|Mux4~0_combout\,
	datac => \mux8_1|Mux4~2_combout\,
	datad => \alu1|sub1|ist_sub:10:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:11:F1|Borrow~0_combout\);

-- Location: LC_X4_Y4_N8
\alu1|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux3~0_combout\ = (\T~combout\(26) & ((\T~combout\(27)) # ((\alu1|sub1|ist_sub:11:F1|Borrow~0_combout\)))) # (!\T~combout\(26) & (!\T~combout\(27) & (\alu1|add1|ist_add:11:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(26),
	datab => \T~combout\(27),
	datac => \alu1|add1|ist_add:11:F1|cout~0_combout\,
	datad => \alu1|sub1|ist_sub:11:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux3~0_combout\);

-- Location: LC_X4_Y4_N9
\t3|q[12]\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux3~1\ = (\T~combout\(27) & ((\mux8_2|Mux3~1_combout\ & ((\alu1|Mux3~0_combout\) # (!\mux8_1|Mux3~2_combout\))) # (!\mux8_2|Mux3~1_combout\ & ((\mux8_1|Mux3~2_combout\) # (!\alu1|Mux3~0_combout\))))) # (!\T~combout\(27) & (\mux8_2|Mux3~1_combout\ $ 
-- (\mux8_1|Mux3~2_combout\ $ (\alu1|Mux3~0_combout\))))
-- \t3|q\(12) = DFFEAS(\alu1|Mux3~1\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e976",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_2|Mux3~1_combout\,
	datab => \mux8_1|Mux3~2_combout\,
	datac => \T~combout\(27),
	datad => \alu1|Mux3~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux3~1\,
	regout => \t3|q\(12));

-- Location: LC_X4_Y4_N7
\PC|q[12]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(12) = DFFEAS((\T~combout\(21) & (((\alu1|Mux3~1\)))) # (!\T~combout\(21) & (\t2|q\(12))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(12), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t2|q\(12),
	datab => \T~combout\(21),
	datac => \t3|q\(12),
	datad => \alu1|Mux3~1\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(12));

-- Location: LC_X4_Y8_N8
\mux8_1|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux3~0_combout\ = (\mux8_1|Mux9~2_combout\ & (\mux8_1|Mux1~0_combout\ & ((\t2|q\(12))))) # (!\mux8_1|Mux9~2_combout\ & (((\PC|q\(12))) # (!\mux8_1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d951",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux9~2_combout\,
	datab => \mux8_1|Mux1~0_combout\,
	datac => \PC|q\(12),
	datad => \t2|q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux3~0_combout\);

-- Location: LC_X4_Y8_N9
\PC1|q[12]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux3~1\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux3~0_combout\ & (\t1|q\(12))) # (!\mux8_1|Mux3~0_combout\ & ((K2_q[12]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(12),
	datac => \PC|q\(12),
	datad => \mux8_1|Mux3~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux3~1\,
	regout => \PC1|q\(12));

-- Location: LC_X3_Y8_N1
\mux8_1|Mux3~2\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux3~2_combout\ = (\mux8_1|Mux1~1_combout\ & (((\instruction_register|q\(5))))) # (!\mux8_1|Mux1~1_combout\ & (((\mux8_1|Mux3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux1~1_combout\,
	datac => \mux8_1|Mux3~1\,
	datad => \instruction_register|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux3~2_combout\);

-- Location: LC_X4_Y4_N0
\t1|q[12]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(12) = DFFEAS(((\T~combout\(16) & ((\alu1|Mux3~1\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(16),
	datad => \alu1|Mux3~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(12));

-- Location: LC_X15_Y7_N9
\memory1|RAM~82\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[12]~0\ = (\T~combout\(25) & (((\t3|q\(12))))) # (!\T~combout\(25) & (((\t1|q\(12)))))
-- \memory1|RAM~82_regout\ = DFFEAS(\mux8|Y[12]~0\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~703_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(25),
	datac => \t1|q\(12),
	datad => \t3|q\(12),
	aclr => GND,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[12]~0\,
	regout => \memory1|RAM~82_regout\);

-- Location: LC_X11_Y9_N0
\memory1|RAM~466\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~466_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~685_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~466_regout\);

-- Location: LC_X16_Y8_N8
\memory1|RAM~530\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~530_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~530_regout\);

-- Location: LC_X14_Y8_N4
\memory1|RAM~338\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~338_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~338_regout\);

-- Location: LC_X14_Y8_N9
\memory1|RAM~402\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~402_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~687_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~402_regout\);

-- Location: LC_X11_Y7_N2
\memory1|RAM~541\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~541_combout\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((!\memory1|RAM~402_regout\))) # (!\mux4_1|Mux13~1_combout\ & (!\memory1|RAM~338_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f305",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~338_regout\,
	datab => \memory1|RAM~402_regout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~541_combout\);

-- Location: LC_X11_Y7_N3
\memory1|RAM~542\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~542_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~541_combout\ & ((!\memory1|RAM~530_regout\))) # (!\memory1|RAM~541_combout\ & (!\memory1|RAM~466_regout\)))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~541_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~466_regout\,
	datab => \memory1|RAM~530_regout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \memory1|RAM~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~542_combout\);

-- Location: LC_X12_Y10_N1
\memory1|RAM~514\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~514_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~514_regout\);

-- Location: LC_X13_Y8_N9
\memory1|RAM~386\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~386_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~661_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~386_regout\);

-- Location: LC_X13_Y8_N4
\memory1|RAM~322\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~322_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~322_regout\);

-- Location: LC_X12_Y10_N0
\memory1|RAM~450\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~450_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~663_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~450_regout\);

-- Location: LC_X13_Y8_N0
\memory1|RAM~534\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~534_combout\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((!\memory1|RAM~450_regout\))) # (!\mux4_1|Mux12~1_combout\ & (!\memory1|RAM~322_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f305",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~322_regout\,
	datab => \memory1|RAM~450_regout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \mux4_1|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~534_combout\);

-- Location: LC_X13_Y8_N1
\memory1|RAM~535\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~535_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~534_combout\ & (!\memory1|RAM~514_regout\)) # (!\memory1|RAM~534_combout\ & ((!\memory1|RAM~386_regout\))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~534_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~514_regout\,
	datab => \memory1|RAM~386_regout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \memory1|RAM~534_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~535_combout\);

-- Location: LC_X14_Y5_N7
\memory1|RAM~482\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~482_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~482_regout\);

-- Location: LC_X11_Y4_N4
\memory1|RAM~354\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~354_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~677_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~354_regout\);

-- Location: LC_X13_Y9_N6
\memory1|RAM~418\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~418_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~679_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~418_regout\);

-- Location: LC_X16_Y6_N1
\memory1|RAM~290\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~290_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~290_regout\);

-- Location: LC_X14_Y7_N8
\memory1|RAM~538\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~538_combout\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)) # (!\memory1|RAM~418_regout\))) # (!\mux4_1|Mux12~1_combout\ & (((!\memory1|RAM~290_regout\ & !\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f053",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~418_regout\,
	datab => \memory1|RAM~290_regout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~538_combout\);

-- Location: LC_X14_Y7_N0
\memory1|RAM~539\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~539_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~538_combout\ & (!\memory1|RAM~482_regout\)) # (!\memory1|RAM~538_combout\ & ((!\memory1|RAM~354_regout\))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~538_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~482_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \memory1|RAM~354_regout\,
	datad => \memory1|RAM~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~539_combout\);

-- Location: LC_X11_Y8_N5
\memory1|RAM~434\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~434_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~669_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~434_regout\);

-- Location: LC_X15_Y9_N2
\memory1|RAM~498\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~498_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~498_regout\);

-- Location: LC_X15_Y6_N6
\memory1|RAM~306\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~306_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~306_regout\);

-- Location: LC_X15_Y6_N9
\memory1|RAM~370\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~370_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~671_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~370_regout\);

-- Location: LC_X15_Y6_N4
\memory1|RAM~536\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~536_combout\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((!\memory1|RAM~370_regout\))) # (!\mux4_1|Mux13~1_combout\ & (!\memory1|RAM~306_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f305",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~306_regout\,
	datab => \memory1|RAM~370_regout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~536_combout\);

-- Location: LC_X14_Y7_N5
\memory1|RAM~537\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~537_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~536_combout\ & ((!\memory1|RAM~498_regout\))) # (!\memory1|RAM~536_combout\ & (!\memory1|RAM~434_regout\)))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~536_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~434_regout\,
	datac => \memory1|RAM~498_regout\,
	datad => \memory1|RAM~536_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~537_combout\);

-- Location: LC_X14_Y7_N6
\memory1|RAM~540\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~540_combout\ = (\mux4_1|Mux14~1_combout\ & (\mux4_1|Mux15~1_combout\)) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~537_combout\))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~539_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \memory1|RAM~539_combout\,
	datad => \memory1|RAM~537_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~540_combout\);

-- Location: LC_X14_Y7_N7
\memory1|RAM~543\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~543_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~540_combout\ & (\memory1|RAM~542_combout\)) # (!\memory1|RAM~540_combout\ & ((\memory1|RAM~535_combout\))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~540_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~542_combout\,
	datac => \memory1|RAM~535_combout\,
	datad => \memory1|RAM~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~543_combout\);

-- Location: LC_X7_Y7_N5
\memory1|RAM~242\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~242_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~704_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~242_regout\);

-- Location: LC_X7_Y4_N7
\memory1|RAM~274\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~274_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~274_regout\);

-- Location: LC_X12_Y9_N9
\memory1|RAM~258\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~258_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~705_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~258_regout\);

-- Location: LC_X12_Y3_N1
\memory1|RAM~226\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~226_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~226_regout\);

-- Location: LC_X7_Y7_N8
\memory1|RAM~551\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~551_combout\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & (!\memory1|RAM~258_regout\)) # (!\mux4_1|Mux14~1_combout\ & ((!\memory1|RAM~226_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~258_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \memory1|RAM~226_regout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~551_combout\);

-- Location: LC_X7_Y7_N9
\memory1|RAM~552\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~552_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~551_combout\ & ((!\memory1|RAM~274_regout\))) # (!\memory1|RAM~551_combout\ & (!\memory1|RAM~242_regout\)))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~242_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \memory1|RAM~274_regout\,
	datad => \memory1|RAM~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~552_combout\);

-- Location: LC_X8_Y10_N5
\memory1|RAM~210\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~210_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~210_regout\);

-- Location: LC_X7_Y10_N2
\memory1|RAM~194\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~194_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~692_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~194_regout\);

-- Location: LC_X7_Y8_N0
\memory1|RAM~178\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~178_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~693_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~178_regout\);

-- Location: LC_X7_Y10_N8
\memory1|RAM~162\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~162_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~162_regout\);

-- Location: LC_X7_Y7_N2
\memory1|RAM~544\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~544_combout\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)) # (!\memory1|RAM~178_regout\))) # (!\mux4_1|Mux15~1_combout\ & (((!\memory1|RAM~162_regout\ & !\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc47",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~178_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \memory1|RAM~162_regout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~544_combout\);

-- Location: LC_X7_Y7_N3
\memory1|RAM~545\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~545_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~544_combout\ & (!\memory1|RAM~210_regout\)) # (!\memory1|RAM~544_combout\ & ((!\memory1|RAM~194_regout\))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~544_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~210_regout\,
	datac => \memory1|RAM~194_regout\,
	datad => \memory1|RAM~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~545_combout\);

-- Location: LC_X7_Y4_N3
\memory1|RAM~146\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~146_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~146_regout\);

-- Location: LC_X8_Y4_N9
\memory1|RAM~130\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~130_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~130_regout\);

-- Location: LC_X10_Y7_N8
\memory1|RAM~98\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~546\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)) # (!\memory1|RAM~130_regout\))) # (!\mux4_1|Mux14~1_combout\ & (((E1L76Q & !\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~130_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[12]~0\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~546\,
	regout => \memory1|RAM~98_regout\);

-- Location: LC_X10_Y7_N9
\memory1|RAM~114\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~547\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~546\ & (!\memory1|RAM~146_regout\)) # (!\memory1|RAM~546\ & ((E1L89Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~546\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~146_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[12]~0\,
	datad => \memory1|RAM~546\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~547\,
	regout => \memory1|RAM~114_regout\);

-- Location: LC_X8_Y7_N9
\memory1|RAM~34\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~34_regout\ = DFFEAS((((!\mux8|Y[12]~0\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[12]~0\,
	aclr => GND,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~34_regout\);

-- Location: LC_X8_Y7_N4
\memory1|RAM~50\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~548\ = (\mux4_1|Mux15~1_combout\ & (((E1L37Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (!\memory1|RAM~34_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~34_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[12]~0\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~548\,
	regout => \memory1|RAM~50_regout\);

-- Location: LC_X15_Y7_N1
\memory1|RAM~66\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~549\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~548\ & (\memory1|RAM~82_regout\)) # (!\memory1|RAM~548\ & ((E1L50Q))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~548\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~82_regout\,
	datac => \mux8|Y[12]~0\,
	datad => \memory1|RAM~548\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~549\,
	regout => \memory1|RAM~66_regout\);

-- Location: LC_X14_Y7_N2
\memory1|RAM~550\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~550_combout\ = (\mux4_1|Mux12~1_combout\ & (\mux4_1|Mux13~1_combout\)) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & (\memory1|RAM~547\)) # (!\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~549\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \memory1|RAM~547\,
	datad => \memory1|RAM~549\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~550_combout\);

-- Location: LC_X14_Y7_N3
\memory1|RAM~553\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~553_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~550_combout\ & (\memory1|RAM~552_combout\)) # (!\memory1|RAM~550_combout\ & ((\memory1|RAM~545_combout\))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~552_combout\,
	datac => \memory1|RAM~545_combout\,
	datad => \memory1|RAM~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~553_combout\);

-- Location: LC_X14_Y7_N4
\memory1|RAM~554\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~554_combout\ = (\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~543_combout\)))) # (!\mux4_1|Mux11~1_combout\ & (((\memory1|RAM~553_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~543_combout\,
	datad => \memory1|RAM~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~554_combout\);

-- Location: LC_X14_Y7_N9
\memory1|memout[12]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(12) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~554_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~554_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(12));

-- Location: LC_X14_Y7_N1
\instruction_register|q[12]\ : maxv_lcell
-- Equation(s):
-- \instruction_register|q\(12) = DFFEAS((((\memory1|memout\(12)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \memory1|memout\(12),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|q\(12));

-- Location: LC_X3_Y8_N9
\t1|q[13]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(13) = DFFEAS(((\T~combout\(16) & ((\alu1|Mux2~3\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(16),
	datad => \alu1|Mux2~3\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(13));

-- Location: LC_X3_Y8_N2
\PC|q[13]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(13) = DFFEAS((\T~combout\(21) & (((\alu1|Mux2~3\)))) # (!\T~combout\(21) & (\t2|q\(13))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(13), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t2|q\(13),
	datab => \T~combout\(21),
	datac => \t3|q\(13),
	datad => \alu1|Mux2~3\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(13));

-- Location: LC_X4_Y8_N3
\mux8_1|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux2~0_combout\ = (\mux8_1|Mux9~2_combout\ & (\mux8_1|Mux1~0_combout\ & (\t2|q\(13)))) # (!\mux8_1|Mux9~2_combout\ & (((\PC|q\(13))) # (!\mux8_1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux9~2_combout\,
	datab => \mux8_1|Mux1~0_combout\,
	datac => \t2|q\(13),
	datad => \PC|q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux2~0_combout\);

-- Location: LC_X4_Y8_N4
\PC1|q[13]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux2~1\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux2~0_combout\ & (\t1|q\(13))) # (!\mux8_1|Mux2~0_combout\ & ((K2_q[13]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \t1|q\(13),
	datab => \mux8_1|Mux9~0_combout\,
	datac => \PC|q\(13),
	datad => \mux8_1|Mux2~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux2~1\,
	regout => \PC1|q\(13));

-- Location: LC_X3_Y8_N0
\alu1|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux2~0_combout\ = ((\mux8_1|Mux1~1_combout\ & ((\instruction_register|q\(6)))) # (!\mux8_1|Mux1~1_combout\ & (\mux8_1|Mux2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux8_1|Mux2~1\,
	datac => \mux8_1|Mux1~1_combout\,
	datad => \instruction_register|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux2~0_combout\);

-- Location: LC_X3_Y6_N0
\alu1|add1|ist_add:12:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:12:F1|cout~0_combout\ = (\mux8_2|Mux3~1_combout\ & ((\mux8_1|Mux3~2_combout\) # ((\alu1|add1|ist_add:11:F1|cout~0_combout\)))) # (!\mux8_2|Mux3~1_combout\ & (\mux8_1|Mux3~2_combout\ & (\alu1|add1|ist_add:11:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux3~1_combout\,
	datab => \mux8_1|Mux3~2_combout\,
	datac => \alu1|add1|ist_add:11:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:12:F1|cout~0_combout\);

-- Location: LC_X4_Y7_N1
\alu1|sub1|ist_sub:12:F1|Borrow~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:12:F1|Borrow~0_combout\ = (\mux8_2|Mux3~1_combout\ & (((\alu1|sub1|ist_sub:11:F1|Borrow~0_combout\) # (!\mux8_1|Mux3~2_combout\)))) # (!\mux8_2|Mux3~1_combout\ & (((\alu1|sub1|ist_sub:11:F1|Borrow~0_combout\ & 
-- !\mux8_1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux3~1_combout\,
	datac => \alu1|sub1|ist_sub:11:F1|Borrow~0_combout\,
	datad => \mux8_1|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:12:F1|Borrow~0_combout\);

-- Location: LC_X3_Y8_N7
\alu1|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux2~2_combout\ = (\T~combout\(27) & (\T~combout\(26))) # (!\T~combout\(27) & ((\T~combout\(26) & ((\alu1|sub1|ist_sub:12:F1|Borrow~0_combout\))) # (!\T~combout\(26) & (\alu1|add1|ist_add:12:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(27),
	datab => \T~combout\(26),
	datac => \alu1|add1|ist_add:12:F1|cout~0_combout\,
	datad => \alu1|sub1|ist_sub:12:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux2~2_combout\);

-- Location: LC_X3_Y8_N8
\t3|q[13]\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux2~3\ = (\T~combout\(27) & ((\alu1|Mux2~1_combout\ & ((\alu1|Mux2~2_combout\) # (!\alu1|Mux2~0_combout\))) # (!\alu1|Mux2~1_combout\ & ((\alu1|Mux2~0_combout\) # (!\alu1|Mux2~2_combout\))))) # (!\T~combout\(27) & (\alu1|Mux2~1_combout\ $ 
-- (((\alu1|Mux2~2_combout\)))))
-- \t3|q\(13) = DFFEAS(\alu1|Mux2~3\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e57a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \alu1|Mux2~1_combout\,
	datab => \alu1|Mux2~0_combout\,
	datac => \T~combout\(27),
	datad => \alu1|Mux2~2_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux2~3\,
	regout => \t3|q\(13));

-- Location: LC_X3_Y8_N6
\t2|q[13]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(13) = DFFEAS((!\T~combout\(18) & (!\T~combout\(17) & ((\alu1|Mux2~3\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(18),
	datab => \T~combout\(17),
	datad => \alu1|Mux2~3\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(13));

-- Location: LC_X3_Y8_N5
\mux8_2|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux2~0_combout\ = (\mux8_2|Mux3~0_combout\ & ((\T~combout\(15) & ((\instruction_register|q\(6)))) # (!\T~combout\(15) & (\t2|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux3~0_combout\,
	datab => \T~combout\(15),
	datac => \t2|q\(13),
	datad => \instruction_register|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux2~0_combout\);

-- Location: LC_X3_Y8_N3
\mux8_1|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux2~2_combout\ = ((\mux8_1|Mux1~1_combout\ & (\instruction_register|q\(6))) # (!\mux8_1|Mux1~1_combout\ & ((\mux8_1|Mux2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|q\(6),
	datac => \mux8_1|Mux1~1_combout\,
	datad => \mux8_1|Mux2~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux2~2_combout\);

-- Location: LC_X3_Y8_N4
\alu1|Mux2~1\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux2~1_combout\ = \mux8_2|Mux2~0_combout\ $ ((((!\T~combout\(27) & \mux8_1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux2~0_combout\,
	datac => \T~combout\(27),
	datad => \mux8_1|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux2~1_combout\);

-- Location: LC_X6_Y5_N1
\memory1|RAM~99\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[13]~1\ = ((\T~combout\(25) & (\t3|q\(13))) # (!\T~combout\(25) & ((\t1|q\(13)))))
-- \memory1|RAM~99_regout\ = DFFEAS(\mux8|Y[13]~1\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~698_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(25),
	datac => \t3|q\(13),
	datad => \t1|q\(13),
	aclr => GND,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[13]~1\,
	regout => \memory1|RAM~99_regout\);

-- Location: LC_X10_Y6_N2
\memory1|RAM~371\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~371_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~671_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~371_regout\);

-- Location: LC_X15_Y9_N3
\memory1|RAM~499\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~499_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~499_regout\);

-- Location: LC_X11_Y8_N1
\memory1|RAM~435\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~435_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~669_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~435_regout\);

-- Location: LC_X10_Y9_N6
\memory1|RAM~307\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~307_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~307_regout\);

-- Location: LC_X11_Y7_N6
\memory1|RAM~555\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~555_combout\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & (!\memory1|RAM~435_regout\)) # (!\mux4_1|Mux12~1_combout\ & ((!\memory1|RAM~307_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~435_regout\,
	datab => \memory1|RAM~307_regout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \mux4_1|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~555_combout\);

-- Location: LC_X11_Y7_N7
\memory1|RAM~556\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~556_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~555_combout\ & ((!\memory1|RAM~499_regout\))) # (!\memory1|RAM~555_combout\ & (!\memory1|RAM~371_regout\)))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~371_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \memory1|RAM~499_regout\,
	datad => \memory1|RAM~555_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~556_combout\);

-- Location: LC_X15_Y5_N2
\memory1|RAM~531\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~531_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~531_regout\);

-- Location: LC_X15_Y5_N6
\memory1|RAM~403\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~403_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~687_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~403_regout\);

-- Location: LC_X13_Y9_N0
\memory1|RAM~339\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~339_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~339_regout\);

-- Location: LC_X16_Y5_N4
\memory1|RAM~467\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~467_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~685_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~467_regout\);

-- Location: LC_X11_Y5_N4
\memory1|RAM~562\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~562_combout\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\) # (!\memory1|RAM~467_regout\)))) # (!\mux4_1|Mux12~1_combout\ & (!\memory1|RAM~339_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc1d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~339_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \memory1|RAM~467_regout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~562_combout\);

-- Location: LC_X12_Y5_N0
\memory1|RAM~563\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~563_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~562_combout\ & (!\memory1|RAM~531_regout\)) # (!\memory1|RAM~562_combout\ & ((!\memory1|RAM~403_regout\))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~562_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~531_regout\,
	datac => \memory1|RAM~403_regout\,
	datad => \memory1|RAM~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~563_combout\);

-- Location: LC_X13_Y9_N5
\memory1|RAM~419\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~419_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~679_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~419_regout\);

-- Location: LC_X14_Y5_N5
\memory1|RAM~483\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~483_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~483_regout\);

-- Location: LC_X11_Y5_N3
\memory1|RAM~355\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~355_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~677_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~355_regout\);

-- Location: LC_X11_Y5_N9
\memory1|RAM~291\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~291_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~291_regout\);

-- Location: LC_X11_Y5_N5
\memory1|RAM~559\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~559_combout\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & (!\memory1|RAM~355_regout\)) # (!\mux4_1|Mux13~1_combout\ & ((!\memory1|RAM~291_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~355_regout\,
	datab => \memory1|RAM~291_regout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~559_combout\);

-- Location: LC_X11_Y5_N6
\memory1|RAM~560\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~560_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~559_combout\ & ((!\memory1|RAM~483_regout\))) # (!\memory1|RAM~559_combout\ & (!\memory1|RAM~419_regout\)))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~559_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~419_regout\,
	datab => \memory1|RAM~483_regout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \memory1|RAM~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~560_combout\);

-- Location: LC_X12_Y10_N7
\memory1|RAM~515\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~515_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~515_regout\);

-- Location: LC_X12_Y10_N8
\memory1|RAM~451\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~451_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~663_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~451_regout\);

-- Location: LC_X13_Y8_N5
\memory1|RAM~387\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~387_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~661_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~387_regout\);

-- Location: LC_X13_Y8_N8
\memory1|RAM~323\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~323_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~323_regout\);

-- Location: LC_X13_Y6_N9
\memory1|RAM~557\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~557_combout\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & (!\memory1|RAM~387_regout\)) # (!\mux4_1|Mux13~1_combout\ & ((!\memory1|RAM~323_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~387_regout\,
	datab => \memory1|RAM~323_regout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~557_combout\);

-- Location: LC_X12_Y5_N8
\memory1|RAM~558\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~558_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~557_combout\ & (!\memory1|RAM~515_regout\)) # (!\memory1|RAM~557_combout\ & ((!\memory1|RAM~451_regout\))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~557_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~515_regout\,
	datab => \memory1|RAM~451_regout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \memory1|RAM~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~558_combout\);

-- Location: LC_X12_Y5_N6
\memory1|RAM~561\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~561_combout\ = (\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\) # ((\memory1|RAM~558_combout\)))) # (!\mux4_1|Mux14~1_combout\ & (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~560_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \memory1|RAM~560_combout\,
	datad => \memory1|RAM~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~561_combout\);

-- Location: LC_X12_Y5_N7
\memory1|RAM~564\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~564_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~561_combout\ & ((\memory1|RAM~563_combout\))) # (!\memory1|RAM~561_combout\ & (\memory1|RAM~556_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~561_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~556_combout\,
	datac => \memory1|RAM~563_combout\,
	datad => \memory1|RAM~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~564_combout\);

-- Location: LC_X13_Y3_N5
\memory1|RAM~275\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~275_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~275_regout\);

-- Location: LC_X13_Y3_N0
\memory1|RAM~259\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~259_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~705_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~259_regout\);

-- Location: LC_X13_Y5_N5
\memory1|RAM~227\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~227_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~227_regout\);

-- Location: LC_X13_Y5_N7
\memory1|RAM~243\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~243_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~704_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~243_regout\);

-- Location: LC_X13_Y5_N3
\memory1|RAM~572\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~572_combout\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & ((!\memory1|RAM~243_regout\))) # (!\mux4_1|Mux15~1_combout\ & (!\memory1|RAM~227_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f305",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~227_regout\,
	datab => \memory1|RAM~243_regout\,
	datac => \mux4_1|Mux14~1_combout\,
	datad => \mux4_1|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~572_combout\);

-- Location: LC_X13_Y5_N4
\memory1|RAM~573\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~573_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~572_combout\ & (!\memory1|RAM~275_regout\)) # (!\memory1|RAM~572_combout\ & ((!\memory1|RAM~259_regout\))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~572_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~275_regout\,
	datac => \memory1|RAM~259_regout\,
	datad => \memory1|RAM~572_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~573_combout\);

-- Location: LC_X6_Y10_N7
\memory1|RAM~131\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~131_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~131_regout\);

-- Location: LC_X6_Y10_N5
\memory1|RAM~147\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~147_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~147_regout\);

-- Location: LC_X7_Y7_N1
\memory1|RAM~115\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~565\ = (\mux4_1|Mux15~1_combout\ & (((E1L90Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~99_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~99_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[13]~1\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~565\,
	regout => \memory1|RAM~115_regout\);

-- Location: LC_X7_Y7_N0
\memory1|RAM~566\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~566_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~565\ & ((!\memory1|RAM~147_regout\))) # (!\memory1|RAM~565\ & (!\memory1|RAM~131_regout\)))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~565\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~131_regout\,
	datac => \memory1|RAM~147_regout\,
	datad => \memory1|RAM~565\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~566_combout\);

-- Location: LC_X8_Y5_N6
\memory1|RAM~83\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~83_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~703_combout\, \mux8|Y[13]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[13]~1\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~83_regout\);

-- Location: LC_X7_Y5_N3
\memory1|RAM~35\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~35_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~35_regout\);

-- Location: LC_X7_Y5_N7
\memory1|RAM~67\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~569\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & ((E1L51Q))) # (!\mux4_1|Mux14~1_combout\ & (!\memory1|RAM~35_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc11",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~35_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[13]~1\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~569\,
	regout => \memory1|RAM~67_regout\);

-- Location: LC_X8_Y5_N3
\memory1|RAM~51\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~570\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~569\ & (\memory1|RAM~83_regout\)) # (!\memory1|RAM~569\ & ((E1L38Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~569\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~83_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[13]~1\,
	datad => \memory1|RAM~569\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~570\,
	regout => \memory1|RAM~51_regout\);

-- Location: LC_X13_Y4_N3
\memory1|RAM~179\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~179_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~693_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~179_regout\);

-- Location: LC_X14_Y4_N0
\memory1|RAM~211\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~211_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~211_regout\);

-- Location: LC_X12_Y6_N3
\memory1|RAM~195\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~195_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~692_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~195_regout\);

-- Location: LC_X12_Y6_N9
\memory1|RAM~163\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~163_regout\ = DFFEAS((((!\mux8|Y[13]~1\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[13]~1\,
	aclr => GND,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~163_regout\);

-- Location: LC_X12_Y6_N5
\memory1|RAM~567\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~567_combout\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & (!\memory1|RAM~195_regout\)) # (!\mux4_1|Mux14~1_combout\ & ((!\memory1|RAM~163_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~195_regout\,
	datab => \memory1|RAM~163_regout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~567_combout\);

-- Location: LC_X12_Y5_N2
\memory1|RAM~568\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~568_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~567_combout\ & ((!\memory1|RAM~211_regout\))) # (!\memory1|RAM~567_combout\ & (!\memory1|RAM~179_regout\)))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~567_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~179_regout\,
	datac => \memory1|RAM~211_regout\,
	datad => \memory1|RAM~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~568_combout\);

-- Location: LC_X12_Y5_N3
\memory1|RAM~571\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~571_combout\ = (\mux4_1|Mux13~1_combout\ & (\mux4_1|Mux12~1_combout\)) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~568_combout\))) # (!\mux4_1|Mux12~1_combout\ & (\memory1|RAM~570\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \memory1|RAM~570\,
	datad => \memory1|RAM~568_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~571_combout\);

-- Location: LC_X12_Y5_N4
\memory1|RAM~574\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~574_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~571_combout\ & (\memory1|RAM~573_combout\)) # (!\memory1|RAM~571_combout\ & ((\memory1|RAM~566_combout\))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~571_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~573_combout\,
	datac => \memory1|RAM~566_combout\,
	datad => \memory1|RAM~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~574_combout\);

-- Location: LC_X12_Y5_N5
\memory1|RAM~575\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~575_combout\ = ((\mux4_1|Mux11~1_combout\ & (\memory1|RAM~564_combout\)) # (!\mux4_1|Mux11~1_combout\ & ((\memory1|RAM~574_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~564_combout\,
	datad => \memory1|RAM~574_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~575_combout\);

-- Location: LC_X12_Y5_N1
\memory1|memout[13]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(13) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~575_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~575_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(13));

-- Location: LC_X12_Y5_N9
\instruction_register|q[13]\ : maxv_lcell
-- Equation(s):
-- \instruction_register|q\(13) = DFFEAS((((\memory1|memout\(13)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \memory1|memout\(13),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|q\(13));

-- Location: LC_X3_Y7_N9
\t2|q[14]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(14) = DFFEAS(((!\T~combout\(17) & (!\T~combout\(18) & \alu1|Mux1~1\))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(17),
	datac => \T~combout\(18),
	datad => \alu1|Mux1~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(14));

-- Location: LC_X3_Y7_N6
\mux8_2|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux1~0_combout\ = (\mux8_2|Mux3~0_combout\ & ((\T~combout\(15) & ((\instruction_register|q\(7)))) # (!\T~combout\(15) & (\t2|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(15),
	datab => \t2|q\(14),
	datac => \mux8_2|Mux3~0_combout\,
	datad => \instruction_register|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux1~0_combout\);

-- Location: LC_X3_Y7_N5
\alu1|sub1|ist_sub:14:F1|DIFF~0\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:14:F1|DIFF~0_combout\ = \mux8_2|Mux1~0_combout\ $ (((\mux8_1|Mux1~1_combout\ & ((\instruction_register|q\(7)))) # (!\mux8_1|Mux1~1_combout\ & (\mux8_1|Mux1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "569a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux1~0_combout\,
	datab => \mux8_1|Mux1~1_combout\,
	datac => \mux8_1|Mux1~3\,
	datad => \instruction_register|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:14:F1|DIFF~0_combout\);

-- Location: LC_X3_Y6_N7
\alu1|add1|ist_add:14:F1|s0\ : maxv_lcell
-- Equation(s):
-- \alu1|add1|ist_add:14:F1|s0~combout\ = \alu1|sub1|ist_sub:14:F1|DIFF~0_combout\ $ (((\mux8_2|Mux2~0_combout\ & ((\alu1|add1|ist_add:12:F1|cout~0_combout\) # (\mux8_1|Mux2~2_combout\))) # (!\mux8_2|Mux2~0_combout\ & 
-- (\alu1|add1|ist_add:12:F1|cout~0_combout\ & \mux8_1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "366c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux2~0_combout\,
	datab => \alu1|sub1|ist_sub:14:F1|DIFF~0_combout\,
	datac => \alu1|add1|ist_add:12:F1|cout~0_combout\,
	datad => \mux8_1|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|add1|ist_add:14:F1|s0~combout\);

-- Location: LC_X3_Y7_N8
\alu1|sub1|ist_sub:14:F1|DIFF\ : maxv_lcell
-- Equation(s):
-- \alu1|sub1|ist_sub:14:F1|DIFF~combout\ = \alu1|sub1|ist_sub:14:F1|DIFF~0_combout\ $ (((\mux8_2|Mux2~0_combout\ & ((\alu1|sub1|ist_sub:12:F1|Borrow~0_combout\) # (!\mux8_1|Mux2~2_combout\))) # (!\mux8_2|Mux2~0_combout\ & (!\mux8_1|Mux2~2_combout\ & 
-- \alu1|sub1|ist_sub:12:F1|Borrow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4bd2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux2~0_combout\,
	datab => \mux8_1|Mux2~2_combout\,
	datac => \alu1|sub1|ist_sub:14:F1|DIFF~0_combout\,
	datad => \alu1|sub1|ist_sub:12:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|sub1|ist_sub:14:F1|DIFF~combout\);

-- Location: LC_X3_Y7_N0
\alu1|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux1~0_combout\ = (\T~combout\(27) & (\T~combout\(26))) # (!\T~combout\(27) & ((\T~combout\(26) & ((\alu1|sub1|ist_sub:14:F1|DIFF~combout\))) # (!\T~combout\(26) & (\alu1|add1|ist_add:14:F1|s0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(27),
	datab => \T~combout\(26),
	datac => \alu1|add1|ist_add:14:F1|s0~combout\,
	datad => \alu1|sub1|ist_sub:14:F1|DIFF~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux1~0_combout\);

-- Location: LC_X3_Y7_N1
\t3|q[14]\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux1~1\ = (\T~combout\(27) & ((\mux8_1|Mux1~4_combout\ & ((\alu1|Mux1~0_combout\) # (!\mux8_2|Mux1~0_combout\))) # (!\mux8_1|Mux1~4_combout\ & ((\mux8_2|Mux1~0_combout\) # (!\alu1|Mux1~0_combout\))))) # (!\T~combout\(27) & 
-- (((\alu1|Mux1~0_combout\))))
-- \t3|q\(14) = DFFEAS(\alu1|Mux1~1\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb4c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux1~4_combout\,
	datab => \T~combout\(27),
	datac => \mux8_2|Mux1~0_combout\,
	datad => \alu1|Mux1~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux1~1\,
	regout => \t3|q\(14));

-- Location: LC_X3_Y7_N7
\PC|q[14]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(14) = DFFEAS((\T~combout\(21) & (((\alu1|Mux1~1\)))) # (!\T~combout\(21) & (\t2|q\(14))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(14), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(21),
	datab => \t2|q\(14),
	datac => \t3|q\(14),
	datad => \alu1|Mux1~1\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(14));

-- Location: LC_X5_Y8_N6
\mux8_1|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux1~2_combout\ = (\mux8_1|Mux9~2_combout\ & (\mux8_1|Mux1~0_combout\ & (\t2|q\(14)))) # (!\mux8_1|Mux9~2_combout\ & (((\PC|q\(14))) # (!\mux8_1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux9~2_combout\,
	datab => \mux8_1|Mux1~0_combout\,
	datac => \t2|q\(14),
	datad => \PC|q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux1~2_combout\);

-- Location: LC_X5_Y8_N7
\PC1|q[14]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux1~3\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux1~2_combout\ & (\t1|q\(14))) # (!\mux8_1|Mux1~2_combout\ & ((K2_q[14]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(14),
	datac => \PC|q\(14),
	datad => \mux8_1|Mux1~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux1~3\,
	regout => \PC1|q\(14));

-- Location: LC_X3_Y7_N3
\mux8_1|Mux1~4\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux1~4_combout\ = ((\mux8_1|Mux1~1_combout\ & (\instruction_register|q\(7))) # (!\mux8_1|Mux1~1_combout\ & ((\mux8_1|Mux1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instruction_register|q\(7),
	datac => \mux8_1|Mux1~3\,
	datad => \mux8_1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux1~4_combout\);

-- Location: LC_X3_Y7_N2
\t1|q[14]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(14) = DFFEAS(((\T~combout\(16) & ((\alu1|Mux1~1\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(16),
	datad => \alu1|Mux1~1\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(14));

-- Location: LC_X6_Y5_N8
\mux8|Y[14]~2\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[14]~2_combout\ = (\T~combout\(25) & (((\t3|q\(14))))) # (!\T~combout\(25) & (\t1|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|q\(14),
	datab => \T~combout\(25),
	datac => \t3|q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[14]~2_combout\);

-- Location: LC_X11_Y10_N4
\memory1|RAM~388\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~388_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~661_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~388_regout\);

-- Location: LC_X12_Y10_N3
\memory1|RAM~516\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~516_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~516_regout\);

-- Location: LC_X11_Y10_N3
\memory1|RAM~324\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~324_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~324_regout\);

-- Location: LC_X12_Y10_N9
\memory1|RAM~452\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~452_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~663_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~452_regout\);

-- Location: LC_X11_Y10_N8
\memory1|RAM~576\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~576_combout\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\) # (!\memory1|RAM~452_regout\)))) # (!\mux4_1|Mux12~1_combout\ & (!\memory1|RAM~324_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f035",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~324_regout\,
	datab => \memory1|RAM~452_regout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~576_combout\);

-- Location: LC_X11_Y10_N9
\memory1|RAM~577\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~577_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~576_combout\ & ((!\memory1|RAM~516_regout\))) # (!\memory1|RAM~576_combout\ & (!\memory1|RAM~388_regout\)))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~576_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~388_regout\,
	datac => \memory1|RAM~516_regout\,
	datad => \memory1|RAM~576_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~577_combout\);

-- Location: LC_X11_Y9_N7
\memory1|RAM~468\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~468_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~685_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~468_regout\);

-- Location: LC_X16_Y8_N2
\memory1|RAM~532\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~532_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~532_regout\);

-- Location: LC_X14_Y8_N2
\memory1|RAM~340\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~340_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~340_regout\);

-- Location: LC_X14_Y8_N7
\memory1|RAM~404\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~404_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~687_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~404_regout\);

-- Location: LC_X11_Y8_N7
\memory1|RAM~583\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~583_combout\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\) # (!\memory1|RAM~404_regout\)))) # (!\mux4_1|Mux13~1_combout\ & (!\memory1|RAM~340_regout\ & ((!\mux4_1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f035",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~340_regout\,
	datab => \memory1|RAM~404_regout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \mux4_1|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~583_combout\);

-- Location: LC_X11_Y8_N8
\memory1|RAM~584\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~584_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~583_combout\ & ((!\memory1|RAM~532_regout\))) # (!\memory1|RAM~583_combout\ & (!\memory1|RAM~468_regout\)))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~583_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~468_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \memory1|RAM~532_regout\,
	datad => \memory1|RAM~583_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~584_combout\);

-- Location: LC_X11_Y8_N4
\memory1|RAM~500\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~500_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~500_regout\);

-- Location: LC_X9_Y9_N7
\memory1|RAM~436\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~436_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~669_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~436_regout\);

-- Location: LC_X10_Y10_N1
\memory1|RAM~308\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~308_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~308_regout\);

-- Location: LC_X10_Y10_N9
\memory1|RAM~372\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~372_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~671_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~372_regout\);

-- Location: LC_X9_Y10_N6
\memory1|RAM~578\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~578_combout\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((!\memory1|RAM~372_regout\))) # (!\mux4_1|Mux13~1_combout\ & (!\memory1|RAM~308_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf11",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~308_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \memory1|RAM~372_regout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~578_combout\);

-- Location: LC_X9_Y10_N7
\memory1|RAM~579\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~579_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~578_combout\ & (!\memory1|RAM~500_regout\)) # (!\memory1|RAM~578_combout\ & ((!\memory1|RAM~436_regout\))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~578_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~500_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \memory1|RAM~436_regout\,
	datad => \memory1|RAM~578_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~579_combout\);

-- Location: LC_X6_Y9_N0
\memory1|RAM~484\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~484_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~484_regout\);

-- Location: LC_X9_Y10_N1
\memory1|RAM~356\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~356_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~677_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~356_regout\);

-- Location: LC_X9_Y10_N8
\memory1|RAM~292\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~292_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~292_regout\);

-- Location: LC_X14_Y10_N4
\memory1|RAM~420\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~420_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~679_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~420_regout\);

-- Location: LC_X9_Y10_N2
\memory1|RAM~580\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~580_combout\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\) # (!\memory1|RAM~420_regout\)))) # (!\mux4_1|Mux12~1_combout\ & (!\memory1|RAM~292_regout\ & ((!\mux4_1|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc1d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~292_regout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \memory1|RAM~420_regout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~580_combout\);

-- Location: LC_X9_Y10_N3
\memory1|RAM~581\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~581_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~580_combout\ & (!\memory1|RAM~484_regout\)) # (!\memory1|RAM~580_combout\ & ((!\memory1|RAM~356_regout\))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~580_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~484_regout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \memory1|RAM~356_regout\,
	datad => \memory1|RAM~580_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~581_combout\);

-- Location: LC_X9_Y10_N0
\memory1|RAM~582\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~582_combout\ = (\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\) # ((\memory1|RAM~579_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (!\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~581_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \memory1|RAM~579_combout\,
	datad => \memory1|RAM~581_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~582_combout\);

-- Location: LC_X10_Y7_N0
\memory1|RAM~585\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~585_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~582_combout\ & ((\memory1|RAM~584_combout\))) # (!\memory1|RAM~582_combout\ & (\memory1|RAM~577_combout\)))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~582_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~577_combout\,
	datac => \memory1|RAM~584_combout\,
	datad => \memory1|RAM~582_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~585_combout\);

-- Location: LC_X14_Y4_N7
\memory1|RAM~276\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~276_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~276_regout\);

-- Location: LC_X13_Y5_N9
\memory1|RAM~244\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~244_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~704_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~244_regout\);

-- Location: LC_X12_Y9_N0
\memory1|RAM~260\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~260_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~705_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~260_regout\);

-- Location: LC_X13_Y5_N0
\memory1|RAM~228\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~228_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~228_regout\);

-- Location: LC_X13_Y5_N1
\memory1|RAM~593\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~593_combout\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & (!\memory1|RAM~260_regout\)) # (!\mux4_1|Mux14~1_combout\ & ((!\memory1|RAM~228_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~260_regout\,
	datab => \memory1|RAM~228_regout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~593_combout\);

-- Location: LC_X13_Y5_N2
\memory1|RAM~594\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~594_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~593_combout\ & (!\memory1|RAM~276_regout\)) # (!\memory1|RAM~593_combout\ & ((!\memory1|RAM~244_regout\))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~593_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~276_regout\,
	datab => \memory1|RAM~244_regout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \memory1|RAM~593_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~594_combout\);

-- Location: LC_X14_Y4_N5
\memory1|RAM~212\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~212_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~212_regout\);

-- Location: LC_X12_Y6_N4
\memory1|RAM~196\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~196_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~692_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~196_regout\);

-- Location: LC_X13_Y6_N6
\memory1|RAM~164\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~164_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~164_regout\);

-- Location: LC_X13_Y6_N0
\memory1|RAM~180\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~180_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~693_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~180_regout\);

-- Location: LC_X13_Y6_N3
\memory1|RAM~586\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~586_combout\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & ((!\memory1|RAM~180_regout\))) # (!\mux4_1|Mux15~1_combout\ & (!\memory1|RAM~164_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f305",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~164_regout\,
	datab => \memory1|RAM~180_regout\,
	datac => \mux4_1|Mux14~1_combout\,
	datad => \mux4_1|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~586_combout\);

-- Location: LC_X13_Y6_N4
\memory1|RAM~587\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~587_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~586_combout\ & (!\memory1|RAM~212_regout\)) # (!\memory1|RAM~586_combout\ & ((!\memory1|RAM~196_regout\))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~586_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~212_regout\,
	datab => \memory1|RAM~196_regout\,
	datac => \mux4_1|Mux14~1_combout\,
	datad => \memory1|RAM~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~587_combout\);

-- Location: LC_X6_Y10_N2
\memory1|RAM~148\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~148_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~148_regout\);

-- Location: LC_X6_Y10_N4
\memory1|RAM~132\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~132_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~132_regout\);

-- Location: LC_X10_Y7_N1
\memory1|RAM~100\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~588\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)) # (!\memory1|RAM~132_regout\))) # (!\mux4_1|Mux14~1_combout\ & (((E1L78Q & !\mux4_1|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc74",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~132_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[14]~2_combout\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~588\,
	regout => \memory1|RAM~100_regout\);

-- Location: LC_X10_Y7_N7
\memory1|RAM~116\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~589\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~588\ & (!\memory1|RAM~148_regout\)) # (!\memory1|RAM~588\ & ((E1L91Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~588\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~148_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[14]~2_combout\,
	datad => \memory1|RAM~588\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~589\,
	regout => \memory1|RAM~116_regout\);

-- Location: LC_X9_Y7_N1
\memory1|RAM~68\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~68_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~700_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~68_regout\);

-- Location: LC_X8_Y7_N5
\memory1|RAM~52\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~52_regout\ = DFFEAS((((!\mux8|Y[14]~2_combout\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~701_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[14]~2_combout\,
	aclr => GND,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~52_regout\);

-- Location: LC_X8_Y7_N2
\memory1|RAM~36\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~590\ = (\mux4_1|Mux14~1_combout\ & (((\mux4_1|Mux15~1_combout\)))) # (!\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\ & (!\memory1|RAM~52_regout\)) # (!\mux4_1|Mux15~1_combout\ & ((E1L26Q)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~52_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \mux8|Y[14]~2_combout\,
	datad => \mux4_1|Mux15~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~590\,
	regout => \memory1|RAM~36_regout\);

-- Location: LC_X9_Y7_N2
\memory1|RAM~84\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~591\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~590\ & ((E1L65Q))) # (!\memory1|RAM~590\ & (!\memory1|RAM~68_regout\)))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~590\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f522",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \memory1|RAM~68_regout\,
	datac => \mux8|Y[14]~2_combout\,
	datad => \memory1|RAM~590\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~591\,
	regout => \memory1|RAM~84_regout\);

-- Location: LC_X10_Y7_N4
\memory1|RAM~592\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~592_combout\ = (\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\) # ((\memory1|RAM~589\)))) # (!\mux4_1|Mux13~1_combout\ & (!\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~591\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \mux4_1|Mux12~1_combout\,
	datac => \memory1|RAM~589\,
	datad => \memory1|RAM~591\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~592_combout\);

-- Location: LC_X10_Y7_N5
\memory1|RAM~595\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~595_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~592_combout\ & (\memory1|RAM~594_combout\)) # (!\memory1|RAM~592_combout\ & ((\memory1|RAM~587_combout\))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~592_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~594_combout\,
	datac => \memory1|RAM~587_combout\,
	datad => \memory1|RAM~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~595_combout\);

-- Location: LC_X10_Y7_N6
\memory1|RAM~596\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~596_combout\ = ((\mux4_1|Mux11~1_combout\ & (\memory1|RAM~585_combout\)) # (!\mux4_1|Mux11~1_combout\ & ((\memory1|RAM~595_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~585_combout\,
	datad => \memory1|RAM~595_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~596_combout\);

-- Location: LC_X11_Y7_N0
\memory1|memout[14]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(14) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~596_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~596_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(14));

-- Location: LC_X11_Y7_N5
\instruction_register|q[14]\ : maxv_lcell
-- Equation(s):
-- \instruction_register|q\(14) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \memory1|memout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|memout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|q\(14));

-- Location: LC_X4_Y7_N0
\t2|q[15]\ : maxv_lcell
-- Equation(s):
-- \t2|q\(15) = DFFEAS((!\T~combout\(17) & (((\alu1|Mux0~3\ & !\T~combout\(18))))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(17),
	datac => \alu1|Mux0~3\,
	datad => \T~combout\(18),
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t2|q\(15));

-- Location: LC_X4_Y8_N6
\mux8_2|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \mux8_2|Mux0~0_combout\ = (\mux8_2|Mux3~0_combout\ & ((\T~combout\(15) & ((\instruction_register|q\(8)))) # (!\T~combout\(15) & (\t2|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t2|q\(15),
	datab => \instruction_register|q\(8),
	datac => \mux8_2|Mux3~0_combout\,
	datad => \T~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_2|Mux0~0_combout\);

-- Location: LC_X3_Y7_N4
\alu1|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux0~1_combout\ = (\T~combout\(26) $ (((!\T~combout\(27) & \mux8_1|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \T~combout\(26),
	datac => \T~combout\(27),
	datad => \mux8_1|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux0~1_combout\);

-- Location: LC_X4_Y7_N3
\alu1|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux0~4_combout\ = (\T~combout\(26) & ((\mux8_2|Mux2~0_combout\ & ((\alu1|sub1|ist_sub:12:F1|Borrow~0_combout\) # (!\mux8_1|Mux2~2_combout\))) # (!\mux8_2|Mux2~0_combout\ & (!\mux8_1|Mux2~2_combout\ & \alu1|sub1|ist_sub:12:F1|Borrow~0_combout\)))) # 
-- (!\T~combout\(26) & (((\mux8_1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc38",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux2~0_combout\,
	datab => \T~combout\(26),
	datac => \mux8_1|Mux2~2_combout\,
	datad => \alu1|sub1|ist_sub:12:F1|Borrow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux0~4_combout\);

-- Location: LC_X4_Y7_N4
\alu1|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux0~5_combout\ = (\mux8_2|Mux2~0_combout\ & ((\alu1|Mux0~4_combout\) # ((!\mux8_1|Mux2~2_combout\ & \alu1|add1|ist_add:12:F1|cout~0_combout\)))) # (!\mux8_2|Mux2~0_combout\ & (\alu1|Mux0~4_combout\ & ((\alu1|add1|ist_add:12:F1|cout~0_combout\) # 
-- (!\mux8_1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_2|Mux2~0_combout\,
	datab => \mux8_1|Mux2~2_combout\,
	datac => \alu1|add1|ist_add:12:F1|cout~0_combout\,
	datad => \alu1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux0~5_combout\);

-- Location: LC_X4_Y7_N5
\alu1|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux0~2_combout\ = (\T~combout\(27) & (((\alu1|Mux0~1_combout\)))) # (!\T~combout\(27) & ((\mux8_2|Mux1~0_combout\ & ((\alu1|Mux0~1_combout\) # (\alu1|Mux0~5_combout\))) # (!\mux8_2|Mux1~0_combout\ & (\alu1|Mux0~1_combout\ & \alu1|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T~combout\(27),
	datab => \mux8_2|Mux1~0_combout\,
	datac => \alu1|Mux0~1_combout\,
	datad => \alu1|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux0~2_combout\);

-- Location: LC_X4_Y7_N6
\t3|q[15]\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux0~3\ = (\T~combout\(27) & ((\alu1|Mux0~0_combout\ & ((\alu1|Mux0~2_combout\) # (!\mux8_2|Mux0~0_combout\))) # (!\alu1|Mux0~0_combout\ & ((\mux8_2|Mux0~0_combout\) # (!\alu1|Mux0~2_combout\))))) # (!\T~combout\(27) & (\alu1|Mux0~0_combout\ $ 
-- (\mux8_2|Mux0~0_combout\ $ (\alu1|Mux0~2_combout\))))
-- \t3|q\(15) = DFFEAS(\alu1|Mux0~3\, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e93e",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(27),
	datab => \alu1|Mux0~0_combout\,
	datac => \mux8_2|Mux0~0_combout\,
	datad => \alu1|Mux0~2_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux0~3\,
	regout => \t3|q\(15));

-- Location: LC_X4_Y7_N2
\t1|q[15]\ : maxv_lcell
-- Equation(s):
-- \t1|q\(15) = DFFEAS((\T~combout\(16) & (((\alu1|Mux0~3\)))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(16),
	datac => \alu1|Mux0~3\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|q\(15));

-- Location: LC_X4_Y7_N7
\PC|q[15]\ : maxv_lcell
-- Equation(s):
-- \PC|q\(15) = DFFEAS((\T~combout\(21) & (((\alu1|Mux0~3\)))) # (!\T~combout\(21) & (\t2|q\(15))), GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , \T~combout\(6), \t3|q\(15), , \PC|q[9]~0_combout\, \T~combout\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \T~combout\(21),
	datab => \t2|q\(15),
	datac => \t3|q\(15),
	datad => \alu1|Mux0~3\,
	aclr => \reset~combout\,
	sclr => \PC|q[9]~0_combout\,
	sload => \T~combout\(22),
	ena => \T~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|q\(15));

-- Location: LC_X5_Y8_N2
\mux8_1|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux0~0_combout\ = (\mux8_1|Mux9~2_combout\ & (((\t2|q\(15) & \mux8_1|Mux1~0_combout\)))) # (!\mux8_1|Mux9~2_combout\ & ((\PC|q\(15)) # ((!\mux8_1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e455",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux8_1|Mux9~2_combout\,
	datab => \PC|q\(15),
	datac => \t2|q\(15),
	datad => \mux8_1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux0~0_combout\);

-- Location: LC_X5_Y8_N0
\PC1|q[15]\ : maxv_lcell
-- Equation(s):
-- \mux8_1|Mux0~1\ = (\mux8_1|Mux9~0_combout\ & ((\mux8_1|Mux0~0_combout\ & (\t1|q\(15))) # (!\mux8_1|Mux0~0_combout\ & ((K2_q[15]))))) # (!\mux8_1|Mux9~0_combout\ & (((\mux8_1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \mux8_1|Mux9~0_combout\,
	datab => \t1|q\(15),
	datac => \PC|q\(15),
	datad => \mux8_1|Mux0~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \T~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8_1|Mux0~1\,
	regout => \PC1|q\(15));

-- Location: LC_X4_Y8_N5
\alu1|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \alu1|Mux0~0_combout\ = ((\mux8_1|Mux1~1_combout\ & (\instruction_register|q\(8))) # (!\mux8_1|Mux1~1_combout\ & ((\mux8_1|Mux0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \instruction_register|q\(8),
	datac => \mux8_1|Mux0~1\,
	datad => \mux8_1|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu1|Mux0~0_combout\);

-- Location: LC_X6_Y5_N4
\memory1|RAM~101\ : maxv_lcell
-- Equation(s):
-- \mux8|Y[15]~3\ = ((\T~combout\(25) & (\t3|q\(15))) # (!\T~combout\(25) & ((\t1|q\(15)))))
-- \memory1|RAM~101_regout\ = DFFEAS(\mux8|Y[15]~3\, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~698_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \T~combout\(25),
	datac => \t3|q\(15),
	datad => \t1|q\(15),
	aclr => GND,
	ena => \memory1|RAM~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mux8|Y[15]~3\,
	regout => \memory1|RAM~101_regout\);

-- Location: LC_X7_Y4_N9
\memory1|RAM~149\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~149_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~699_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~699_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~149_regout\);

-- Location: LC_X8_Y4_N6
\memory1|RAM~133\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~133_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~697_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~697_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~133_regout\);

-- Location: LC_X8_Y4_N2
\memory1|RAM~117\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~607\ = (\mux4_1|Mux15~1_combout\ & (((E1L92Q) # (\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~101_regout\ & ((!\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~101_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[15]~3\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~607\,
	regout => \memory1|RAM~117_regout\);

-- Location: LC_X8_Y4_N3
\memory1|RAM~608\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~608_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~607\ & (!\memory1|RAM~149_regout\)) # (!\memory1|RAM~607\ & ((!\memory1|RAM~133_regout\))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~607\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~149_regout\,
	datab => \mux4_1|Mux14~1_combout\,
	datac => \memory1|RAM~133_regout\,
	datad => \memory1|RAM~607\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~608_combout\);

-- Location: LC_X13_Y3_N4
\memory1|RAM~277\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~277_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~707_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~277_regout\);

-- Location: LC_X13_Y3_N9
\memory1|RAM~261\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~261_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~705_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~261_regout\);

-- Location: LC_X12_Y3_N9
\memory1|RAM~245\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~245_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~704_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~245_regout\);

-- Location: LC_X12_Y3_N7
\memory1|RAM~229\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~229_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~706_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~229_regout\);

-- Location: LC_X13_Y3_N6
\memory1|RAM~614\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~614_combout\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)) # (!\memory1|RAM~245_regout\))) # (!\mux4_1|Mux15~1_combout\ & (((!\memory1|RAM~229_regout\ & !\mux4_1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f053",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~245_regout\,
	datab => \memory1|RAM~229_regout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~614_combout\);

-- Location: LC_X13_Y3_N7
\memory1|RAM~615\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~615_combout\ = (\mux4_1|Mux14~1_combout\ & ((\memory1|RAM~614_combout\ & (!\memory1|RAM~277_regout\)) # (!\memory1|RAM~614_combout\ & ((!\memory1|RAM~261_regout\))))) # (!\mux4_1|Mux14~1_combout\ & (((\memory1|RAM~614_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~277_regout\,
	datab => \memory1|RAM~261_regout\,
	datac => \mux4_1|Mux14~1_combout\,
	datad => \memory1|RAM~614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~615_combout\);

-- Location: LC_X15_Y7_N0
\memory1|RAM~85\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~85_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~703_combout\, \mux8|Y[15]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[15]~3\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~703_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~85_regout\);

-- Location: LC_X16_Y7_N9
\memory1|RAM~37\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~37_regout\ = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , \memory1|RAM~702_combout\, \mux8|Y[15]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[15]~3\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~37_regout\);

-- Location: LC_X12_Y7_N9
\memory1|RAM~69\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~611\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & ((E1L53Q))) # (!\mux4_1|Mux14~1_combout\ & (\memory1|RAM~37_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~37_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[15]~3\,
	datad => \mux4_1|Mux14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~611\,
	regout => \memory1|RAM~69_regout\);

-- Location: LC_X12_Y7_N7
\memory1|RAM~53\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~612\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~611\ & (\memory1|RAM~85_regout\)) # (!\memory1|RAM~611\ & ((E1L40Q))))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~611\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \memory1|RAM~85_regout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \mux8|Y[15]~3\,
	datad => \memory1|RAM~611\,
	aclr => GND,
	sload => VCC,
	ena => \memory1|RAM~701_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~612\,
	regout => \memory1|RAM~53_regout\);

-- Location: LC_X13_Y4_N4
\memory1|RAM~181\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~181_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~693_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~693_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~181_regout\);

-- Location: LC_X14_Y4_N4
\memory1|RAM~213\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~213_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~695_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~695_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~213_regout\);

-- Location: LC_X12_Y6_N8
\memory1|RAM~165\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~165_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~694_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~165_regout\);

-- Location: LC_X12_Y6_N0
\memory1|RAM~197\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~197_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~692_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~197_regout\);

-- Location: LC_X12_Y7_N1
\memory1|RAM~609\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~609_combout\ = (\mux4_1|Mux15~1_combout\ & (((\mux4_1|Mux14~1_combout\)))) # (!\mux4_1|Mux15~1_combout\ & ((\mux4_1|Mux14~1_combout\ & ((!\memory1|RAM~197_regout\))) # (!\mux4_1|Mux14~1_combout\ & (!\memory1|RAM~165_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f305",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~165_regout\,
	datab => \memory1|RAM~197_regout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \mux4_1|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~609_combout\);

-- Location: LC_X12_Y7_N3
\memory1|RAM~610\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~610_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~609_combout\ & ((!\memory1|RAM~213_regout\))) # (!\memory1|RAM~609_combout\ & (!\memory1|RAM~181_regout\)))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~609_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~181_regout\,
	datab => \memory1|RAM~213_regout\,
	datac => \mux4_1|Mux15~1_combout\,
	datad => \memory1|RAM~609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~610_combout\);

-- Location: LC_X12_Y7_N2
\memory1|RAM~613\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~613_combout\ = (\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\) # ((\memory1|RAM~610_combout\)))) # (!\mux4_1|Mux12~1_combout\ & (!\mux4_1|Mux13~1_combout\ & (\memory1|RAM~612\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \mux4_1|Mux13~1_combout\,
	datac => \memory1|RAM~612\,
	datad => \memory1|RAM~610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~613_combout\);

-- Location: LC_X12_Y7_N0
\memory1|RAM~616\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~616_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~613_combout\ & ((\memory1|RAM~615_combout\))) # (!\memory1|RAM~613_combout\ & (\memory1|RAM~608_combout\)))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~613_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux13~1_combout\,
	datab => \memory1|RAM~608_combout\,
	datac => \memory1|RAM~615_combout\,
	datad => \memory1|RAM~613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~616_combout\);

-- Location: LC_X14_Y3_N2
\memory1|RAM~501\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~501_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~675_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~675_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~501_regout\);

-- Location: LC_X15_Y6_N2
\memory1|RAM~373\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~373_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~671_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~671_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~373_regout\);

-- Location: LC_X16_Y5_N1
\memory1|RAM~437\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~437_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~669_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~669_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~437_regout\);

-- Location: LC_X15_Y6_N7
\memory1|RAM~309\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~309_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~673_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~673_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~309_regout\);

-- Location: LC_X15_Y6_N8
\memory1|RAM~597\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~597_combout\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & (!\memory1|RAM~437_regout\)) # (!\mux4_1|Mux12~1_combout\ & ((!\memory1|RAM~309_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~437_regout\,
	datab => \memory1|RAM~309_regout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \mux4_1|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~597_combout\);

-- Location: LC_X15_Y6_N0
\memory1|RAM~598\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~598_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~597_combout\ & (!\memory1|RAM~501_regout\)) # (!\memory1|RAM~597_combout\ & ((!\memory1|RAM~373_regout\))))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~597_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~501_regout\,
	datab => \memory1|RAM~373_regout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \memory1|RAM~597_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~598_combout\);

-- Location: LC_X15_Y5_N8
\memory1|RAM~405\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~405_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~687_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~405_regout\);

-- Location: LC_X15_Y5_N0
\memory1|RAM~533\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~533_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~691_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~691_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~533_regout\);

-- Location: LC_X16_Y5_N3
\memory1|RAM~469\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~469_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~685_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~469_regout\);

-- Location: LC_X14_Y8_N1
\memory1|RAM~341\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~341_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~689_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~689_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~341_regout\);

-- Location: LC_X15_Y5_N1
\memory1|RAM~604\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~604_combout\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)))) # (!\mux4_1|Mux13~1_combout\ & ((\mux4_1|Mux12~1_combout\ & (!\memory1|RAM~469_regout\)) # (!\mux4_1|Mux12~1_combout\ & ((!\memory1|RAM~341_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~469_regout\,
	datab => \memory1|RAM~341_regout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \mux4_1|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~604_combout\);

-- Location: LC_X15_Y5_N3
\memory1|RAM~605\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~605_combout\ = (\mux4_1|Mux13~1_combout\ & ((\memory1|RAM~604_combout\ & ((!\memory1|RAM~533_regout\))) # (!\memory1|RAM~604_combout\ & (!\memory1|RAM~405_regout\)))) # (!\mux4_1|Mux13~1_combout\ & (((\memory1|RAM~604_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~405_regout\,
	datab => \memory1|RAM~533_regout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \memory1|RAM~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~605_combout\);

-- Location: LC_X6_Y5_N6
\memory1|RAM~485\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~485_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~683_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~485_regout\);

-- Location: LC_X11_Y4_N3
\memory1|RAM~421\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~421_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~679_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~679_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~421_regout\);

-- Location: LC_X11_Y5_N8
\memory1|RAM~293\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~293_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~681_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~293_regout\);

-- Location: LC_X11_Y5_N7
\memory1|RAM~357\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~357_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~677_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~677_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~357_regout\);

-- Location: LC_X11_Y5_N1
\memory1|RAM~601\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~601_combout\ = (\mux4_1|Mux12~1_combout\ & (((\mux4_1|Mux13~1_combout\)))) # (!\mux4_1|Mux12~1_combout\ & ((\mux4_1|Mux13~1_combout\ & ((!\memory1|RAM~357_regout\))) # (!\mux4_1|Mux13~1_combout\ & (!\memory1|RAM~293_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f305",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~293_regout\,
	datab => \memory1|RAM~357_regout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \mux4_1|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~601_combout\);

-- Location: LC_X11_Y5_N2
\memory1|RAM~602\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~602_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~601_combout\ & (!\memory1|RAM~485_regout\)) # (!\memory1|RAM~601_combout\ & ((!\memory1|RAM~421_regout\))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~601_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~485_regout\,
	datab => \memory1|RAM~421_regout\,
	datac => \mux4_1|Mux12~1_combout\,
	datad => \memory1|RAM~601_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~602_combout\);

-- Location: LC_X12_Y10_N6
\memory1|RAM~517\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~517_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~667_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~517_regout\);

-- Location: LC_X11_Y10_N5
\memory1|RAM~389\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~389_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~661_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~389_regout\);

-- Location: LC_X11_Y10_N2
\memory1|RAM~325\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~325_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~665_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~325_regout\);

-- Location: LC_X11_Y7_N9
\memory1|RAM~599\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~599_combout\ = (\mux4_1|Mux13~1_combout\ & (((\mux4_1|Mux12~1_combout\)) # (!\memory1|RAM~389_regout\))) # (!\mux4_1|Mux13~1_combout\ & (((!\memory1|RAM~325_regout\ & !\mux4_1|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f053",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory1|RAM~389_regout\,
	datab => \memory1|RAM~325_regout\,
	datac => \mux4_1|Mux13~1_combout\,
	datad => \mux4_1|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~599_combout\);

-- Location: LC_X12_Y10_N5
\memory1|RAM~453\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~453_regout\ = DFFEAS((((!\mux8|Y[15]~3\))), GLOBAL(\clock~combout\), VCC, , \memory1|RAM~663_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \mux8|Y[15]~3\,
	aclr => GND,
	ena => \memory1|RAM~663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|RAM~453_regout\);

-- Location: LC_X12_Y7_N8
\memory1|RAM~600\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~600_combout\ = (\mux4_1|Mux12~1_combout\ & ((\memory1|RAM~599_combout\ & (!\memory1|RAM~517_regout\)) # (!\memory1|RAM~599_combout\ & ((!\memory1|RAM~453_regout\))))) # (!\mux4_1|Mux12~1_combout\ & (((\memory1|RAM~599_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "707a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux12~1_combout\,
	datab => \memory1|RAM~517_regout\,
	datac => \memory1|RAM~599_combout\,
	datad => \memory1|RAM~453_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~600_combout\);

-- Location: LC_X12_Y7_N4
\memory1|RAM~603\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~603_combout\ = (\mux4_1|Mux14~1_combout\ & ((\mux4_1|Mux15~1_combout\) # ((\memory1|RAM~600_combout\)))) # (!\mux4_1|Mux14~1_combout\ & (!\mux4_1|Mux15~1_combout\ & (\memory1|RAM~602_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux14~1_combout\,
	datab => \mux4_1|Mux15~1_combout\,
	datac => \memory1|RAM~602_combout\,
	datad => \memory1|RAM~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~603_combout\);

-- Location: LC_X12_Y7_N5
\memory1|RAM~606\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~606_combout\ = (\mux4_1|Mux15~1_combout\ & ((\memory1|RAM~603_combout\ & ((\memory1|RAM~605_combout\))) # (!\memory1|RAM~603_combout\ & (\memory1|RAM~598_combout\)))) # (!\mux4_1|Mux15~1_combout\ & (((\memory1|RAM~603_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4_1|Mux15~1_combout\,
	datab => \memory1|RAM~598_combout\,
	datac => \memory1|RAM~605_combout\,
	datad => \memory1|RAM~603_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~606_combout\);

-- Location: LC_X12_Y7_N6
\memory1|RAM~617\ : maxv_lcell
-- Equation(s):
-- \memory1|RAM~617_combout\ = ((\mux4_1|Mux11~1_combout\ & ((\memory1|RAM~606_combout\))) # (!\mux4_1|Mux11~1_combout\ & (\memory1|RAM~616_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mux4_1|Mux11~1_combout\,
	datac => \memory1|RAM~616_combout\,
	datad => \memory1|RAM~606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory1|RAM~617_combout\);

-- Location: LC_X11_Y7_N4
\memory1|memout[15]\ : maxv_lcell
-- Equation(s):
-- \memory1|memout\(15) = DFFEAS(GND, GLOBAL(\clock~combout\), VCC, , !\T~combout\(2), \memory1|RAM~617_combout\, !GLOBAL(\T~combout\(23)), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|RAM~617_combout\,
	aclr => GND,
	aload => \ALT_INV_T~combout\(23),
	ena => \ALT_INV_T~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory1|memout\(15));

-- Location: LC_X11_Y7_N1
\instruction_register|q[15]\ : maxv_lcell
-- Equation(s):
-- \instruction_register|q\(15) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\reset~combout\), , , \memory1|memout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \memory1|memout\(15),
	aclr => \reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instruction_register|q\(15));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\op_code[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \instruction_register|q\(12),
	oe => VCC,
	padio => ww_op_code(0));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\op_code[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \instruction_register|q\(13),
	oe => VCC,
	padio => ww_op_code(1));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\op_code[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \instruction_register|q\(14),
	oe => VCC,
	padio => ww_op_code(2));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\op_code[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \instruction_register|q\(15),
	oe => VCC,
	padio => ww_op_code(3));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\condition[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \instruction_register|q\(0),
	oe => VCC,
	padio => ww_condition(0));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\condition[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \instruction_register|q\(1),
	oe => VCC,
	padio => ww_condition(1));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RX);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_start);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\finish~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_finish);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(0));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(3));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(4));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(5));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(9));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(24));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(28));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(29));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_S(4));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_S(5));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(0));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(1));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(3));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(4));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(5));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(6));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(7));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(8));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(9));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(10));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(11));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(12));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(13));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(14));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\P0[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_P0(15));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\T[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_T(8));
END structure;


