-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Dec  3 14:42:08 2018
-- Host        : MY-LAPTOP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top system_red1_0 -prefix
--               system_red1_0_ system_xlslice_0_0_sim_netlist.vhdl
-- Design      : system_xlslice_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_red1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_red1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_red1_0 : entity is "system_xlslice_0_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_red1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_red1_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2017.4";
end system_red1_0;

architecture STRUCTURE of system_red1_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
  Dout(3 downto 0) <= \^din\(5 downto 2);
  \^din\(5 downto 2) <= Din(5 downto 2);
end STRUCTURE;
