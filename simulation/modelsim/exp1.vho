-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "04/06/2023 11:38:27"

-- 
-- Device: Altera EP3C40F780C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_adder IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c0 : IN std_logic;
	s : OUT std_logic;
	c1 : OUT std_logic
	);
END full_adder;

-- Design Ports Information
-- s	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF full_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL \s~output_o\ : std_logic;
SIGNAL \c1~output_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \c0~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \ha2|s~0_combout\ : std_logic;
SIGNAL \c1~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c0 <= c0;
s <= ww_s;
c1 <= ww_c1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y29_N16
\s~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ha2|s~0_combout\,
	devoe => ww_devoe,
	o => \s~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\c1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c1~0_combout\,
	devoe => ww_devoe,
	o => \c1~output_o\);

-- Location: IOIBUF_X0_Y29_N1
\a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\c0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0,
	o => \c0~input_o\);

-- Location: IOIBUF_X0_Y29_N8
\b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X1_Y29_N16
\ha2|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ha2|s~0_combout\ = \a~input_o\ $ (\c0~input_o\ $ (\b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \c0~input_o\,
	datad => \b~input_o\,
	combout => \ha2|s~0_combout\);

-- Location: LCCOMB_X1_Y29_N18
\c1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c1~0_combout\ = (\a~input_o\ & ((\c0~input_o\) # (\b~input_o\))) # (!\a~input_o\ & (\c0~input_o\ & \b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \c0~input_o\,
	datad => \b~input_o\,
	combout => \c1~0_combout\);

ww_s <= \s~output_o\;

ww_c1 <= \c1~output_o\;
END structure;


