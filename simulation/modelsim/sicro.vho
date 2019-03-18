-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "12/04/2017 12:48:21"

-- 
-- Device: Altera EP4CE30F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sicro IS
    PORT (
	Clock : IN std_logic;
	HSync : OUT std_logic;
	VSync : OUT std_logic;
	R : OUT std_logic_vector(3 DOWNTO 0);
	G : OUT std_logic_vector(3 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0)
	);
END sicro;

-- Design Ports Information
-- HSync	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VSync	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sicro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_HSync : std_logic;
SIGNAL ww_VSync : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HSync~output_o\ : std_logic;
SIGNAL \VSync~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \clkr~0_combout\ : std_logic;
SIGNAL \clkr~feeder_combout\ : std_logic;
SIGNAL \clkr~q\ : std_logic;
SIGNAL \clkr~clkctrl_outclk\ : std_logic;
SIGNAL \HPOS[0]~10_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \HPOS[0]~11\ : std_logic;
SIGNAL \HPOS[1]~12_combout\ : std_logic;
SIGNAL \HPOS[1]~13\ : std_logic;
SIGNAL \HPOS[2]~14_combout\ : std_logic;
SIGNAL \HPOS[2]~15\ : std_logic;
SIGNAL \HPOS[3]~16_combout\ : std_logic;
SIGNAL \HPOS[3]~17\ : std_logic;
SIGNAL \HPOS[4]~18_combout\ : std_logic;
SIGNAL \HPOS[4]~19\ : std_logic;
SIGNAL \HPOS[5]~20_combout\ : std_logic;
SIGNAL \HPOS[5]~21\ : std_logic;
SIGNAL \HPOS[6]~22_combout\ : std_logic;
SIGNAL \HPOS[6]~23\ : std_logic;
SIGNAL \HPOS[7]~24_combout\ : std_logic;
SIGNAL \HPOS[7]~25\ : std_logic;
SIGNAL \HPOS[8]~26_combout\ : std_logic;
SIGNAL \HPOS[8]~27\ : std_logic;
SIGNAL \HPOS[9]~28_combout\ : std_logic;
SIGNAL \always1~3_combout\ : std_logic;
SIGNAL \always1~2_combout\ : std_logic;
SIGNAL \always1~4_combout\ : std_logic;
SIGNAL \always1~20_combout\ : std_logic;
SIGNAL \HSync~reg0_q\ : std_logic;
SIGNAL \VPOS[0]~10_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \VPOS[0]~11\ : std_logic;
SIGNAL \VPOS[1]~12_combout\ : std_logic;
SIGNAL \VPOS[1]~13\ : std_logic;
SIGNAL \VPOS[2]~14_combout\ : std_logic;
SIGNAL \VPOS[2]~15\ : std_logic;
SIGNAL \VPOS[3]~16_combout\ : std_logic;
SIGNAL \VPOS[3]~17\ : std_logic;
SIGNAL \VPOS[4]~18_combout\ : std_logic;
SIGNAL \VPOS[4]~19\ : std_logic;
SIGNAL \VPOS[5]~20_combout\ : std_logic;
SIGNAL \VPOS[5]~21\ : std_logic;
SIGNAL \VPOS[6]~22_combout\ : std_logic;
SIGNAL \VPOS[6]~23\ : std_logic;
SIGNAL \VPOS[7]~24_combout\ : std_logic;
SIGNAL \VPOS[7]~25\ : std_logic;
SIGNAL \VPOS[8]~26_combout\ : std_logic;
SIGNAL \VPOS[8]~27\ : std_logic;
SIGNAL \VPOS[9]~28_combout\ : std_logic;
SIGNAL \always1~7_combout\ : std_logic;
SIGNAL \always1~6_combout\ : std_logic;
SIGNAL \always1~8_combout\ : std_logic;
SIGNAL \VSync~reg0_q\ : std_logic;
SIGNAL \always1~13_combout\ : std_logic;
SIGNAL \always1~12_combout\ : std_logic;
SIGNAL \always1~14_combout\ : std_logic;
SIGNAL \always1~15_combout\ : std_logic;
SIGNAL \always1~9_combout\ : std_logic;
SIGNAL \always1~10_combout\ : std_logic;
SIGNAL \always1~11_combout\ : std_logic;
SIGNAL \always1~16_combout\ : std_logic;
SIGNAL \R[0]~reg0feeder_combout\ : std_logic;
SIGNAL \R[0]~reg0_q\ : std_logic;
SIGNAL \R[1]~reg0feeder_combout\ : std_logic;
SIGNAL \R[1]~reg0_q\ : std_logic;
SIGNAL \R[2]~reg0feeder_combout\ : std_logic;
SIGNAL \R[2]~reg0_q\ : std_logic;
SIGNAL \R[3]~reg0_q\ : std_logic;
SIGNAL \G[0]~reg0feeder_combout\ : std_logic;
SIGNAL \G[0]~reg0_q\ : std_logic;
SIGNAL \G[1]~reg0feeder_combout\ : std_logic;
SIGNAL \G[1]~reg0_q\ : std_logic;
SIGNAL \G[2]~reg0feeder_combout\ : std_logic;
SIGNAL \G[2]~reg0_q\ : std_logic;
SIGNAL \G[3]~reg0_q\ : std_logic;
SIGNAL \always1~5_combout\ : std_logic;
SIGNAL \always1~17_combout\ : std_logic;
SIGNAL \always1~19_combout\ : std_logic;
SIGNAL \always1~18_combout\ : std_logic;
SIGNAL \B~0_combout\ : std_logic;
SIGNAL \B[0]~reg0feeder_combout\ : std_logic;
SIGNAL \B[0]~reg0_q\ : std_logic;
SIGNAL \B[1]~reg0_q\ : std_logic;
SIGNAL \B[2]~reg0_q\ : std_logic;
SIGNAL \B[3]~reg0_q\ : std_logic;
SIGNAL HPOS : std_logic_vector(9 DOWNTO 0);
SIGNAL VPOS : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
HSync <= ww_HSync;
VSync <= ww_VSync;
R <= ww_R;
G <= ww_G;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkr~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkr~q\);

-- Location: IOOBUF_X50_Y43_N16
\HSync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HSync~reg0_q\,
	devoe => ww_devoe,
	o => \HSync~output_o\);

-- Location: IOOBUF_X52_Y43_N30
\VSync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VSync~reg0_q\,
	devoe => ww_devoe,
	o => \VSync~output_o\);

-- Location: IOOBUF_X32_Y43_N30
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[0]~reg0_q\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X29_Y43_N23
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X32_Y43_N16
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[2]~reg0_q\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X32_Y43_N23
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R[3]~reg0_q\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X45_Y43_N23
\G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[0]~reg0_q\,
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X38_Y43_N23
\G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[1]~reg0_q\,
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[2]~reg0_q\,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X41_Y43_N16
\G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G[3]~reg0_q\,
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X38_Y43_N2
\B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]~reg0_q\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]~reg0_q\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X45_Y43_N16
\B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]~reg0_q\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X50_Y43_N9
\B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]~reg0_q\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOIBUF_X0_Y21_N22
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: LCCOMB_X1_Y21_N18
\clkr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkr~0_combout\ = !\clkr~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkr~q\,
	combout => \clkr~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\clkr~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkr~feeder_combout\ = \clkr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkr~0_combout\,
	combout => \clkr~feeder_combout\);

-- Location: FF_X1_Y21_N13
clkr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \clkr~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkr~q\);

-- Location: CLKCTRL_G0
\clkr~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkr~clkctrl_outclk\);

-- Location: LCCOMB_X43_Y42_N10
\HPOS[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPOS[0]~10_combout\ = HPOS(0) $ (VCC)
-- \HPOS[0]~11\ = CARRY(HPOS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(0),
	datad => VCC,
	combout => \HPOS[0]~10_combout\,
	cout => \HPOS[0]~11\);

-- Location: LCCOMB_X43_Y42_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!HPOS(6) & !HPOS(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => HPOS(6),
	datad => HPOS(5),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y42_N30
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (HPOS(8) & (HPOS(9) & ((HPOS(7)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(8),
	datab => HPOS(7),
	datac => HPOS(9),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X43_Y42_N11
\HPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \HPOS[0]~10_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(0));

-- Location: LCCOMB_X43_Y42_N12
\HPOS[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPOS[1]~12_combout\ = (HPOS(1) & (!\HPOS[0]~11\)) # (!HPOS(1) & ((\HPOS[0]~11\) # (GND)))
-- \HPOS[1]~13\ = CARRY((!\HPOS[0]~11\) # (!HPOS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(1),
	datad => VCC,
	cin => \HPOS[0]~11\,
	combout => \HPOS[1]~12_combout\,
	cout => \HPOS[1]~13\);

-- Location: FF_X43_Y42_N13
\HPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \HPOS[1]~12_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(1));

-- Location: LCCOMB_X43_Y42_N14
\HPOS[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPOS[2]~14_combout\ = (HPOS(2) & (\HPOS[1]~13\ $ (GND))) # (!HPOS(2) & (!\HPOS[1]~13\ & VCC))
-- \HPOS[2]~15\ = CARRY((HPOS(2) & !\HPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(2),
	datad => VCC,
	cin => \HPOS[1]~13\,
	combout => \HPOS[2]~14_combout\,
	cout => \HPOS[2]~15\);

-- Location: FF_X43_Y42_N15
\HPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \HPOS[2]~14_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(2));

-- Location: LCCOMB_X43_Y42_N16
\HPOS[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPOS[3]~16_combout\ = (HPOS(3) & (!\HPOS[2]~15\)) # (!HPOS(3) & ((\HPOS[2]~15\) # (GND)))
-- \HPOS[3]~17\ = CARRY((!\HPOS[2]~15\) # (!HPOS(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HPOS(3),
	datad => VCC,
	cin => \HPOS[2]~15\,
	combout => \HPOS[3]~16_combout\,
	cout => \HPOS[3]~17\);

-- Location: FF_X43_Y42_N17
\HPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \HPOS[3]~16_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(3));

-- Location: LCCOMB_X43_Y42_N18
\HPOS[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPOS[4]~18_combout\ = (HPOS(4) & (\HPOS[3]~17\ $ (GND))) # (!HPOS(4) & (!\HPOS[3]~17\ & VCC))
-- \HPOS[4]~19\ = CARRY((HPOS(4) & !\HPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HPOS(4),
	datad => VCC,
	cin => \HPOS[3]~17\,
	combout => \HPOS[4]~18_combout\,
	cout => \HPOS[4]~19\);

-- Location: FF_X43_Y42_N19
\HPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \HPOS[4]~18_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(4));

-- Location: LCCOMB_X43_Y42_N20
\HPOS[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPOS[5]~20_combout\ = (HPOS(5) & (!\HPOS[4]~19\)) # (!HPOS(5) & ((\HPOS[4]~19\) # (GND)))
-- \HPOS[5]~21\ = CARRY((!\HPOS[4]~19\) # (!HPOS(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(5),
	datad => VCC,
	cin => \HPOS[4]~19\,
	combout => \HPOS[5]~20_combout\,
	cout => \HPOS[5]~21\);

-- Location: FF_X43_Y42_N21
\HPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \HPOS[5]~20_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(5));

-- Location: LCCOMB_X43_Y42_N22
\HPOS[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPOS[6]~22_combout\ = (HPOS(6) & (\HPOS[5]~21\ $ (GND))) # (!HPOS(6) & (!\HPOS[5]~21\ & VCC))
-- \HPOS[6]~23\ = CARRY((HPOS(6) & !\HPOS[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(6),
	datad => VCC,
	cin => \HPOS[5]~21\,
	combout => \HPOS[6]~22_combout\,
	cout => \HPOS[6]~23\);

-- Location: FF_X43_Y42_N23
\HPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \HPOS[6]~22_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(6));

-- Location: LCCOMB_X43_Y42_N24
\HPOS[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPOS[7]~24_combout\ = (HPOS(7) & (!\HPOS[6]~23\)) # (!HPOS(7) & ((\HPOS[6]~23\) # (GND)))
-- \HPOS[7]~25\ = CARRY((!\HPOS[6]~23\) # (!HPOS(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => HPOS(7),
	datad => VCC,
	cin => \HPOS[6]~23\,
	combout => \HPOS[7]~24_combout\,
	cout => \HPOS[7]~25\);

-- Location: FF_X43_Y42_N25
\HPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \HPOS[7]~24_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(7));

-- Location: LCCOMB_X43_Y42_N26
\HPOS[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPOS[8]~26_combout\ = (HPOS(8) & (\HPOS[7]~25\ $ (GND))) # (!HPOS(8) & (!\HPOS[7]~25\ & VCC))
-- \HPOS[8]~27\ = CARRY((HPOS(8) & !\HPOS[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(8),
	datad => VCC,
	cin => \HPOS[7]~25\,
	combout => \HPOS[8]~26_combout\,
	cout => \HPOS[8]~27\);

-- Location: FF_X43_Y42_N27
\HPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \HPOS[8]~26_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(8));

-- Location: LCCOMB_X43_Y42_N28
\HPOS[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPOS[9]~28_combout\ = \HPOS[8]~27\ $ (HPOS(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => HPOS(9),
	cin => \HPOS[8]~27\,
	combout => \HPOS[9]~28_combout\);

-- Location: FF_X43_Y42_N29
\HPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \HPOS[9]~28_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => HPOS(9));

-- Location: LCCOMB_X43_Y42_N6
\always1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~3_combout\ = (!HPOS(1) & (!HPOS(3) & (!HPOS(2) & !HPOS(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(1),
	datab => HPOS(3),
	datac => HPOS(2),
	datad => HPOS(0),
	combout => \always1~3_combout\);

-- Location: LCCOMB_X44_Y42_N28
\always1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~2_combout\ = (HPOS(8)) # ((HPOS(5) & (HPOS(6) & HPOS(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(5),
	datab => HPOS(6),
	datac => HPOS(8),
	datad => HPOS(4),
	combout => \always1~2_combout\);

-- Location: LCCOMB_X44_Y42_N18
\always1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~4_combout\ = (\always1~2_combout\) # ((\LessThan0~0_combout\ & ((\always1~3_combout\) # (!HPOS(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => HPOS(4),
	datac => \always1~3_combout\,
	datad => \always1~2_combout\,
	combout => \always1~4_combout\);

-- Location: LCCOMB_X44_Y42_N24
\always1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~20_combout\ = (HPOS(9) & (HPOS(7) & !\always1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => HPOS(9),
	datac => HPOS(7),
	datad => \always1~4_combout\,
	combout => \always1~20_combout\);

-- Location: FF_X44_Y42_N25
\HSync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \always1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HSync~reg0_q\);

-- Location: LCCOMB_X41_Y42_N0
\VPOS[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VPOS[0]~10_combout\ = VPOS(0) $ (VCC)
-- \VPOS[0]~11\ = CARRY(VPOS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VPOS(0),
	datad => VCC,
	combout => \VPOS[0]~10_combout\,
	cout => \VPOS[0]~11\);

-- Location: LCCOMB_X41_Y42_N22
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!VPOS(5) & (!VPOS(4) & !VPOS(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(5),
	datac => VPOS(4),
	datad => VPOS(8),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X41_Y42_N20
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!VPOS(6) & (!VPOS(7) & ((!VPOS(3)) # (!VPOS(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(6),
	datab => VPOS(2),
	datac => VPOS(7),
	datad => VPOS(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X42_Y42_N14
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (VPOS(9) & ((!\LessThan1~0_combout\) # (!\LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => VPOS(9),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: FF_X41_Y42_N1
\VPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \VPOS[0]~10_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(0));

-- Location: LCCOMB_X41_Y42_N2
\VPOS[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VPOS[1]~12_combout\ = (VPOS(1) & (!\VPOS[0]~11\)) # (!VPOS(1) & ((\VPOS[0]~11\) # (GND)))
-- \VPOS[1]~13\ = CARRY((!\VPOS[0]~11\) # (!VPOS(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(1),
	datad => VCC,
	cin => \VPOS[0]~11\,
	combout => \VPOS[1]~12_combout\,
	cout => \VPOS[1]~13\);

-- Location: FF_X41_Y42_N3
\VPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \VPOS[1]~12_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(1));

-- Location: LCCOMB_X41_Y42_N4
\VPOS[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VPOS[2]~14_combout\ = (VPOS(2) & (\VPOS[1]~13\ $ (GND))) # (!VPOS(2) & (!\VPOS[1]~13\ & VCC))
-- \VPOS[2]~15\ = CARRY((VPOS(2) & !\VPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VPOS(2),
	datad => VCC,
	cin => \VPOS[1]~13\,
	combout => \VPOS[2]~14_combout\,
	cout => \VPOS[2]~15\);

-- Location: FF_X41_Y42_N5
\VPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \VPOS[2]~14_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(2));

-- Location: LCCOMB_X41_Y42_N6
\VPOS[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VPOS[3]~16_combout\ = (VPOS(3) & (!\VPOS[2]~15\)) # (!VPOS(3) & ((\VPOS[2]~15\) # (GND)))
-- \VPOS[3]~17\ = CARRY((!\VPOS[2]~15\) # (!VPOS(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VPOS(3),
	datad => VCC,
	cin => \VPOS[2]~15\,
	combout => \VPOS[3]~16_combout\,
	cout => \VPOS[3]~17\);

-- Location: FF_X41_Y42_N7
\VPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \VPOS[3]~16_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(3));

-- Location: LCCOMB_X41_Y42_N8
\VPOS[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VPOS[4]~18_combout\ = (VPOS(4) & (\VPOS[3]~17\ $ (GND))) # (!VPOS(4) & (!\VPOS[3]~17\ & VCC))
-- \VPOS[4]~19\ = CARRY((VPOS(4) & !\VPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(4),
	datad => VCC,
	cin => \VPOS[3]~17\,
	combout => \VPOS[4]~18_combout\,
	cout => \VPOS[4]~19\);

-- Location: FF_X41_Y42_N9
\VPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \VPOS[4]~18_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(4));

-- Location: LCCOMB_X41_Y42_N10
\VPOS[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \VPOS[5]~20_combout\ = (VPOS(5) & (!\VPOS[4]~19\)) # (!VPOS(5) & ((\VPOS[4]~19\) # (GND)))
-- \VPOS[5]~21\ = CARRY((!\VPOS[4]~19\) # (!VPOS(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(5),
	datad => VCC,
	cin => \VPOS[4]~19\,
	combout => \VPOS[5]~20_combout\,
	cout => \VPOS[5]~21\);

-- Location: FF_X41_Y42_N11
\VPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \VPOS[5]~20_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(5));

-- Location: LCCOMB_X41_Y42_N12
\VPOS[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \VPOS[6]~22_combout\ = (VPOS(6) & (\VPOS[5]~21\ $ (GND))) # (!VPOS(6) & (!\VPOS[5]~21\ & VCC))
-- \VPOS[6]~23\ = CARRY((VPOS(6) & !\VPOS[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(6),
	datad => VCC,
	cin => \VPOS[5]~21\,
	combout => \VPOS[6]~22_combout\,
	cout => \VPOS[6]~23\);

-- Location: FF_X41_Y42_N13
\VPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \VPOS[6]~22_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(6));

-- Location: LCCOMB_X41_Y42_N14
\VPOS[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \VPOS[7]~24_combout\ = (VPOS(7) & (!\VPOS[6]~23\)) # (!VPOS(7) & ((\VPOS[6]~23\) # (GND)))
-- \VPOS[7]~25\ = CARRY((!\VPOS[6]~23\) # (!VPOS(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VPOS(7),
	datad => VCC,
	cin => \VPOS[6]~23\,
	combout => \VPOS[7]~24_combout\,
	cout => \VPOS[7]~25\);

-- Location: FF_X41_Y42_N15
\VPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \VPOS[7]~24_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(7));

-- Location: LCCOMB_X41_Y42_N16
\VPOS[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \VPOS[8]~26_combout\ = (VPOS(8) & (\VPOS[7]~25\ $ (GND))) # (!VPOS(8) & (!\VPOS[7]~25\ & VCC))
-- \VPOS[8]~27\ = CARRY((VPOS(8) & !\VPOS[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => VPOS(8),
	datad => VCC,
	cin => \VPOS[7]~25\,
	combout => \VPOS[8]~26_combout\,
	cout => \VPOS[8]~27\);

-- Location: FF_X41_Y42_N17
\VPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \VPOS[8]~26_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(8));

-- Location: LCCOMB_X41_Y42_N18
\VPOS[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \VPOS[9]~28_combout\ = \VPOS[8]~27\ $ (VPOS(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VPOS(9),
	cin => \VPOS[8]~27\,
	combout => \VPOS[9]~28_combout\);

-- Location: FF_X41_Y42_N19
\VPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \VPOS[9]~28_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VPOS(9));

-- Location: LCCOMB_X41_Y42_N24
\always1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~7_combout\ = (VPOS(6) & (VPOS(8) & (VPOS(7) & VPOS(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(6),
	datab => VPOS(8),
	datac => VPOS(7),
	datad => VPOS(5),
	combout => \always1~7_combout\);

-- Location: LCCOMB_X42_Y42_N20
\always1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~6_combout\ = ((VPOS(2)) # ((VPOS(4)) # (!VPOS(3)))) # (!VPOS(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(0),
	datab => VPOS(2),
	datac => VPOS(3),
	datad => VPOS(4),
	combout => \always1~6_combout\);

-- Location: LCCOMB_X44_Y42_N6
\always1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~8_combout\ = (!VPOS(9) & (VPOS(1) & (\always1~7_combout\ & !\always1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(9),
	datab => VPOS(1),
	datac => \always1~7_combout\,
	datad => \always1~6_combout\,
	combout => \always1~8_combout\);

-- Location: FF_X44_Y42_N7
\VSync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VSync~reg0_q\);

-- Location: LCCOMB_X43_Y42_N4
\always1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~13_combout\ = (HPOS(6) & (!HPOS(9) & (HPOS(8) & HPOS(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(6),
	datab => HPOS(9),
	datac => HPOS(8),
	datad => HPOS(7),
	combout => \always1~13_combout\);

-- Location: LCCOMB_X41_Y42_N30
\always1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~12_combout\ = (!VPOS(6) & (VPOS(8) & (!VPOS(7) & !VPOS(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(6),
	datab => VPOS(8),
	datac => VPOS(7),
	datad => VPOS(9),
	combout => \always1~12_combout\);

-- Location: LCCOMB_X43_Y42_N2
\always1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~14_combout\ = (HPOS(2) & ((HPOS(0)) # ((HPOS(1)) # (!HPOS(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(0),
	datab => HPOS(5),
	datac => HPOS(2),
	datad => HPOS(1),
	combout => \always1~14_combout\);

-- Location: LCCOMB_X43_Y42_N8
\always1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~15_combout\ = (HPOS(5) & (!HPOS(3) & (!HPOS(4) & !\always1~14_combout\))) # (!HPOS(5) & (HPOS(3) & (HPOS(4) & \always1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(5),
	datab => HPOS(3),
	datac => HPOS(4),
	datad => \always1~14_combout\,
	combout => \always1~15_combout\);

-- Location: LCCOMB_X41_Y42_N26
\always1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~9_combout\ = (!VPOS(3) & (!VPOS(4) & (!VPOS(2) & !VPOS(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(3),
	datab => VPOS(4),
	datac => VPOS(2),
	datad => VPOS(1),
	combout => \always1~9_combout\);

-- Location: LCCOMB_X41_Y42_N28
\always1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~10_combout\ = (VPOS(3) & ((VPOS(1)) # ((VPOS(2)) # (VPOS(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(3),
	datab => VPOS(1),
	datac => VPOS(2),
	datad => VPOS(0),
	combout => \always1~10_combout\);

-- Location: LCCOMB_X42_Y42_N2
\always1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~11_combout\ = (VPOS(5) & (((\always1~9_combout\)))) # (!VPOS(5) & (VPOS(4) & ((\always1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => VPOS(4),
	datab => VPOS(5),
	datac => \always1~9_combout\,
	datad => \always1~10_combout\,
	combout => \always1~11_combout\);

-- Location: LCCOMB_X42_Y42_N6
\always1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~16_combout\ = (\always1~13_combout\ & ((\always1~15_combout\) # ((\always1~12_combout\ & \always1~11_combout\)))) # (!\always1~13_combout\ & (\always1~12_combout\ & ((\always1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~13_combout\,
	datab => \always1~12_combout\,
	datac => \always1~15_combout\,
	datad => \always1~11_combout\,
	combout => \always1~16_combout\);

-- Location: LCCOMB_X42_Y42_N24
\R[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[0]~reg0feeder_combout\ = \always1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always1~16_combout\,
	combout => \R[0]~reg0feeder_combout\);

-- Location: FF_X42_Y42_N25
\R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \R[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[0]~reg0_q\);

-- Location: LCCOMB_X42_Y42_N18
\R[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[1]~reg0feeder_combout\ = \always1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always1~16_combout\,
	combout => \R[1]~reg0feeder_combout\);

-- Location: FF_X42_Y42_N19
\R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \R[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[1]~reg0_q\);

-- Location: LCCOMB_X42_Y42_N8
\R[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \R[2]~reg0feeder_combout\ = \always1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always1~16_combout\,
	combout => \R[2]~reg0feeder_combout\);

-- Location: FF_X42_Y42_N9
\R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \R[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[2]~reg0_q\);

-- Location: FF_X42_Y42_N23
\R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	asdata => \always1~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R[3]~reg0_q\);

-- Location: LCCOMB_X42_Y42_N28
\G[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[0]~reg0feeder_combout\ = \always1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always1~16_combout\,
	combout => \G[0]~reg0feeder_combout\);

-- Location: FF_X42_Y42_N29
\G[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \G[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[0]~reg0_q\);

-- Location: LCCOMB_X42_Y42_N10
\G[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[1]~reg0feeder_combout\ = \always1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always1~16_combout\,
	combout => \G[1]~reg0feeder_combout\);

-- Location: FF_X42_Y42_N11
\G[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \G[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[1]~reg0_q\);

-- Location: LCCOMB_X42_Y42_N16
\G[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G[2]~reg0feeder_combout\ = \always1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \always1~16_combout\,
	combout => \G[2]~reg0feeder_combout\);

-- Location: FF_X42_Y42_N17
\G[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \G[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[2]~reg0_q\);

-- Location: FF_X42_Y42_N7
\G[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \always1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G[3]~reg0_q\);

-- Location: LCCOMB_X42_Y42_N30
\always1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~5_combout\ = (HPOS(9) & HPOS(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => HPOS(9),
	datad => HPOS(7),
	combout => \always1~5_combout\);

-- Location: LCCOMB_X42_Y42_N12
\always1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~17_combout\ = (\always1~5_combout\ & ((HPOS(4)) # ((!\always1~3_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~5_combout\,
	datab => HPOS(4),
	datac => \LessThan0~0_combout\,
	datad => \always1~3_combout\,
	combout => \always1~17_combout\);

-- Location: LCCOMB_X42_Y42_N0
\always1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~19_combout\ = (VPOS(9)) # ((HPOS(8) & HPOS(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => HPOS(8),
	datab => HPOS(9),
	datad => VPOS(9),
	combout => \always1~19_combout\);

-- Location: LCCOMB_X42_Y42_N22
\always1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \always1~18_combout\ = (\always1~7_combout\ & ((VPOS(0)) # (!\always1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~9_combout\,
	datab => VPOS(0),
	datad => \always1~7_combout\,
	combout => \always1~18_combout\);

-- Location: LCCOMB_X42_Y42_N26
\B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B~0_combout\ = (\always1~16_combout\) # ((!\always1~17_combout\ & (!\always1~19_combout\ & !\always1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always1~17_combout\,
	datab => \always1~19_combout\,
	datac => \always1~18_combout\,
	datad => \always1~16_combout\,
	combout => \B~0_combout\);

-- Location: LCCOMB_X42_Y42_N4
\B[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B[0]~reg0feeder_combout\ = \B~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~0_combout\,
	combout => \B[0]~reg0feeder_combout\);

-- Location: FF_X42_Y42_N5
\B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \B[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[0]~reg0_q\);

-- Location: FF_X42_Y42_N31
\B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	asdata => \B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[1]~reg0_q\);

-- Location: FF_X42_Y42_N1
\B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	asdata => \B~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[2]~reg0_q\);

-- Location: FF_X42_Y42_N27
\B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkr~clkctrl_outclk\,
	d => \B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B[3]~reg0_q\);

ww_HSync <= \HSync~output_o\;

ww_VSync <= \VSync~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_G(0) <= \G[0]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;
END structure;


