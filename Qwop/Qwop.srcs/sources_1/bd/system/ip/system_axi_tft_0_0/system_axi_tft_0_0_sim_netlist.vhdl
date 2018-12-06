-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Dec  5 20:10:44 2018
-- Host        : MY-LAPTOP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Xilinx/Projects/ECE-253-Final-Project/Qwop/Qwop.srcs/sources_1/bd/system/ip/system_axi_tft_0_0/system_axi_tft_0_0_sim_netlist.vhdl
-- Design      : system_axi_tft_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_addr_cntl is
  port (
    \out\ : out STD_LOGIC;
    sig_addr2stat_cmd_fifo_empty : out STD_LOGIC;
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_aclk : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    sig_pcc2addr_burst : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rd_addr_valid_reg0 : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_pcc2addr_cmd_valid : in STD_LOGIC;
    sig_llink2rd_allow_addr_req : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \sig_xfer_len_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_addr_cntl : entity is "axi_master_burst_addr_cntl";
end system_axi_tft_0_0_axi_master_burst_addr_cntl;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_addr_cntl is
  signal sig_addr2stat_calc_error : STD_LOGIC;
  signal \^sig_addr2stat_cmd_fifo_empty\ : STD_LOGIC;
  signal sig_addr_reg_full : STD_LOGIC;
  signal sig_next_addr_reg0 : STD_LOGIC;
  signal sig_posted_to_axi : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_posted_to_axi : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_posted_to_axi : signal is "no";
  signal sig_posted_to_axi_2 : STD_LOGIC;
  attribute RTL_KEEP of sig_posted_to_axi_2 : signal is "true";
  attribute equivalent_register_removal of sig_posted_to_axi_2 : signal is "no";
  signal sig_push_addr_reg1_out : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of sig_posted_to_axi_2_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_2_reg : label is "no";
  attribute KEEP of sig_posted_to_axi_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_reg : label is "no";
begin
  \out\ <= sig_posted_to_axi;
  sig_addr2stat_cmd_fifo_empty <= \^sig_addr2stat_cmd_fifo_empty\;
sig_addr_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => '0',
      Q => \^sig_addr2stat_cmd_fifo_empty\,
      S => sig_next_addr_reg0
    );
sig_addr_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_push_addr_reg1_out,
      Q => sig_addr_reg_full,
      R => sig_next_addr_reg0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_pcc2data_calc_error,
      Q => sig_addr2stat_calc_error,
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(0),
      Q => m_axi_araddr(0),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(10),
      Q => m_axi_araddr(10),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(11),
      Q => m_axi_araddr(11),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(12),
      Q => m_axi_araddr(12),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(13),
      Q => m_axi_araddr(13),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(14),
      Q => m_axi_araddr(14),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(15),
      Q => m_axi_araddr(15),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(16),
      Q => m_axi_araddr(16),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(17),
      Q => m_axi_araddr(17),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(18),
      Q => m_axi_araddr(18),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(19),
      Q => m_axi_araddr(19),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(1),
      Q => m_axi_araddr(1),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(20),
      Q => m_axi_araddr(20),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(21),
      Q => m_axi_araddr(21),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(22),
      Q => m_axi_araddr(22),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(23),
      Q => m_axi_araddr(23),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(24),
      Q => m_axi_araddr(24),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(25),
      Q => m_axi_araddr(25),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(26),
      Q => m_axi_araddr(26),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(27),
      Q => m_axi_araddr(27),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(28),
      Q => m_axi_araddr(28),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(29),
      Q => m_axi_araddr(29),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(2),
      Q => m_axi_araddr(2),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(30),
      Q => m_axi_araddr(30),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(31),
      Q => m_axi_araddr(31),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(3),
      Q => m_axi_araddr(3),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(4),
      Q => m_axi_araddr(4),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(5),
      Q => m_axi_araddr(5),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(6),
      Q => m_axi_araddr(6),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(7),
      Q => m_axi_araddr(7),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(8),
      Q => m_axi_araddr(8),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(9),
      Q => m_axi_araddr(9),
      R => sig_next_addr_reg0
    );
\sig_next_burst_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_pcc2addr_burst(0),
      Q => m_axi_arburst(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(0),
      Q => m_axi_arlen(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(1),
      Q => m_axi_arlen(1),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(2),
      Q => m_axi_arlen(2),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(3),
      Q => m_axi_arlen(3),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(4),
      Q => m_axi_arlen(4),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(5),
      Q => m_axi_arlen(5),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(6),
      Q => m_axi_arlen(6),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(7),
      Q => m_axi_arlen(7),
      R => sig_next_addr_reg0
    );
\sig_next_size_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => '1',
      Q => m_axi_arsize(0),
      R => sig_next_addr_reg0
    );
sig_posted_to_axi_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_push_addr_reg1_out,
      Q => sig_posted_to_axi_2,
      R => sig_rdwr_reset_reg_reg
    );
sig_posted_to_axi_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_push_addr_reg1_out,
      Q => sig_posted_to_axi,
      R => sig_rdwr_reset_reg_reg
    );
sig_rd_addr_valid_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEAAA"
    )
        port map (
      I0 => sig_rdwr_reset_reg_reg,
      I1 => sig_cmd2all_doing_read,
      I2 => m_axi_arready,
      I3 => sig_addr_reg_full,
      I4 => sig_addr2stat_calc_error,
      O => sig_next_addr_reg0
    );
sig_rd_addr_valid_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^sig_addr2stat_cmd_fifo_empty\,
      I1 => sig_cmd2all_doing_read,
      I2 => sig_pcc2addr_cmd_valid,
      I3 => sig_llink2rd_allow_addr_req,
      O => sig_push_addr_reg1_out
    );
sig_rd_addr_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_rd_addr_valid_reg0,
      Q => m_axi_arvalid,
      R => sig_next_addr_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_cmd_status is
  port (
    sig_cmd2pcc_cmd_valid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd_mst_be : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd2all_doing_read : out STD_LOGIC;
    sig_status_reg_full_reg_0 : out STD_LOGIC;
    sig_status_reg_empty : out STD_LOGIC;
    md_error : out STD_LOGIC;
    sig_rdwr2llink_int_err : out STD_LOGIC;
    bus2ip_mst_cmdack : out STD_LOGIC;
    sig_push_status1_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rd_sts_tag_reg0 : out STD_LOGIC;
    sig_rd_llink_enable : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_mstrd_req : in STD_LOGIC;
    IP2Bus_Mst_Type : in STD_LOGIC;
    sig_rd_sts_slverr_reg_reg : in STD_LOGIC;
    sig_llink_busy_reg : in STD_LOGIC;
    sig_rsc2stat_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_push_input_reg16_out : in STD_LOGIC;
    sig_btt_cntr0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_doing_read_reg : in STD_LOGIC;
    sig_pcc_taking_command : in STD_LOGIC;
    \tft_base_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_cmd_status : entity is "axi_master_burst_cmd_status";
end system_axi_tft_0_0_axi_master_burst_cmd_status;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_cmd_status is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^bus2ip_mst_cmdack\ : STD_LOGIC;
  signal \^sig_cmd2all_doing_read\ : STD_LOGIC;
  signal sig_cmd_cmplt_reg_i_1_n_0 : STD_LOGIC;
  signal sig_cmd_empty_reg : STD_LOGIC;
  signal sig_cmd_empty_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_cmd_mst_be\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_cmd_mstrd_req : STD_LOGIC;
  signal sig_cmd_type_req : STD_LOGIC;
  signal sig_cmdack_reg_i_1_n_0 : STD_LOGIC;
  signal sig_doing_read_reg_i_1_n_0 : STD_LOGIC;
  signal sig_init_reg1 : STD_LOGIC;
  signal sig_init_reg2 : STD_LOGIC;
  signal sig_int_error_pulse_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_push_status1_out\ : STD_LOGIC;
  signal \^sig_rdwr2llink_int_err\ : STD_LOGIC;
  signal \^sig_status_reg_empty\ : STD_LOGIC;
  signal sig_status_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_status_reg_full : STD_LOGIC;
  signal sig_status_reg_full_i_1_n_0 : STD_LOGIC;
  signal \^sig_status_reg_full_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_btt_cntr[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sig_btt_cntr[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of sig_error_sh_reg_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of sig_rd_sts_reg_full_i_1 : label is "soft_lutpair8";
begin
  E(0) <= \^e\(0);
  bus2ip_mst_cmdack <= \^bus2ip_mst_cmdack\;
  sig_cmd2all_doing_read <= \^sig_cmd2all_doing_read\;
  sig_cmd_mst_be(0) <= \^sig_cmd_mst_be\(0);
  sig_push_status1_out <= \^sig_push_status1_out\;
  sig_rdwr2llink_int_err <= \^sig_rdwr2llink_int_err\;
  sig_status_reg_empty <= \^sig_status_reg_empty\;
  sig_status_reg_full_reg_0 <= \^sig_status_reg_full_reg_0\;
\sig_btt_cntr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \^sig_cmd_mst_be\(0),
      I1 => sig_cmd_type_req,
      I2 => sig_push_input_reg16_out,
      I3 => sig_btt_cntr0(0),
      O => D(0)
    );
\sig_btt_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => sig_cmd_type_req,
      I1 => \^sig_cmd_mst_be\(0),
      I2 => sig_push_input_reg16_out,
      I3 => sig_btt_cntr0(1),
      O => D(1)
    );
sig_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000070"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_llink_busy_reg,
      I2 => sig_status_reg_full,
      I3 => \^sig_status_reg_full_reg_0\,
      I4 => \out\,
      O => sig_cmd_cmplt_reg_i_1_n_0
    );
sig_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_cmplt_reg_i_1_n_0,
      Q => \^sig_status_reg_full_reg_0\,
      R => '0'
    );
sig_cmd_empty_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2FFF2F2"
    )
        port map (
      I0 => sig_init_reg1,
      I1 => sig_init_reg2,
      I2 => \^sig_status_reg_full_reg_0\,
      I3 => ip2bus_mstrd_req,
      I4 => sig_cmd_empty_reg,
      O => sig_cmd_empty_reg_i_1_n_0
    );
sig_cmd_empty_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_empty_reg_i_1_n_0,
      Q => sig_cmd_empty_reg,
      R => \out\
    );
sig_cmd_full_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_cmd_empty_reg,
      I1 => ip2bus_mstrd_req,
      O => \^e\(0)
    );
sig_cmd_full_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => '1',
      Q => sig_cmd2pcc_cmd_valid,
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(3),
      Q => Q(3),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(4),
      Q => Q(4),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(5),
      Q => Q(5),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(6),
      Q => Q(6),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(7),
      Q => Q(7),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(8),
      Q => Q(8),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(9),
      Q => Q(9),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(10),
      Q => Q(10),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(11),
      Q => Q(11),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(12),
      Q => Q(12),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(13),
      Q => Q(13),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(14),
      Q => Q(14),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(15),
      Q => Q(15),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(16),
      Q => Q(16),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(17),
      Q => Q(17),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(18),
      Q => Q(18),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(19),
      Q => Q(19),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(20),
      Q => Q(20),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(21),
      Q => Q(21),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(22),
      Q => Q(22),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(23),
      Q => Q(23),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(24),
      Q => Q(24),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(0),
      Q => Q(0),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(1),
      Q => Q(1),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => \tft_base_addr_reg[0]\(2),
      Q => Q(2),
      R => SR(0)
    );
\sig_cmd_mst_be_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => '1',
      Q => \^sig_cmd_mst_be\(0),
      R => SR(0)
    );
sig_cmd_mstrd_req_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => ip2bus_mstrd_req,
      Q => sig_cmd_mstrd_req,
      R => SR(0)
    );
sig_cmd_type_req_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \^e\(0),
      D => IP2Bus_Mst_Type,
      Q => sig_cmd_type_req,
      R => SR(0)
    );
sig_cmdack_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ip2bus_mstrd_req,
      I1 => sig_cmd_empty_reg,
      I2 => \^bus2ip_mst_cmdack\,
      I3 => \out\,
      O => sig_cmdack_reg_i_1_n_0
    );
sig_cmdack_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmdack_reg_i_1_n_0,
      Q => \^bus2ip_mst_cmdack\,
      R => '0'
    );
sig_doing_read_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_pcc_taking_command,
      I2 => sig_cmd_mstrd_req,
      I3 => \^sig_status_reg_full_reg_0\,
      I4 => \out\,
      O => sig_doing_read_reg_i_1_n_0
    );
sig_doing_read_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_doing_read_reg_i_1_n_0,
      Q => \^sig_cmd2all_doing_read\,
      R => '0'
    );
sig_error_sh_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sig_rsc2stat_status_valid,
      I1 => \^sig_cmd2all_doing_read\,
      I2 => \^sig_status_reg_empty\,
      O => \^sig_push_status1_out\
    );
sig_error_sh_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_rd_sts_slverr_reg_reg,
      Q => md_error,
      R => \out\
    );
sig_init_reg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => sig_init_reg1,
      R => \out\
    );
sig_init_reg2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_init_reg1,
      Q => sig_init_reg2,
      R => \out\
    );
sig_int_error_pulse_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => sig_llink_busy_reg,
      I1 => \^sig_cmd2all_doing_read\,
      I2 => sig_rsc2stat_status(0),
      I3 => \^sig_push_status1_out\,
      I4 => \^sig_rdwr2llink_int_err\,
      I5 => \out\,
      O => sig_int_error_pulse_reg_i_1_n_0
    );
sig_int_error_pulse_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_int_error_pulse_reg_i_1_n_0,
      Q => \^sig_rdwr2llink_int_err\,
      R => '0'
    );
sig_llink_busy_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_doing_read_reg,
      O => sig_rd_llink_enable
    );
sig_rd_sts_reg_full_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => sig_rdwr_reset_reg_reg,
      I1 => \^sig_status_reg_empty\,
      I2 => \^sig_cmd2all_doing_read\,
      I3 => sig_rsc2stat_status_valid,
      O => sig_rd_sts_tag_reg0
    );
sig_status_reg_empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2FFF2FFF2FFF2"
    )
        port map (
      I0 => sig_init_reg1,
      I1 => sig_init_reg2,
      I2 => \^sig_status_reg_full_reg_0\,
      I3 => \^sig_status_reg_empty\,
      I4 => \^sig_cmd2all_doing_read\,
      I5 => sig_rsc2stat_status_valid,
      O => sig_status_reg_empty_i_1_n_0
    );
sig_status_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_status_reg_empty_i_1_n_0,
      Q => \^sig_status_reg_empty\,
      R => \out\
    );
sig_status_reg_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D555C000"
    )
        port map (
      I0 => \^sig_status_reg_full_reg_0\,
      I1 => \^sig_status_reg_empty\,
      I2 => \^sig_cmd2all_doing_read\,
      I3 => sig_rsc2stat_status_valid,
      I4 => sig_status_reg_full,
      I5 => \out\,
      O => sig_status_reg_full_i_1_n_0
    );
sig_status_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_status_reg_full_i_1_n_0,
      Q => sig_status_reg_full,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_pcc is
  port (
    sig_pcc2addr_burst : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc2data_cmd_cmplt : out STD_LOGIC;
    sig_pcc2data_calc_error : out STD_LOGIC;
    sig_pcc2data_eof : out STD_LOGIC;
    sig_pcc2data_sequential : out STD_LOGIC;
    sig_pcc2addr_cmd_valid : out STD_LOGIC;
    sig_pcc2data_cmd_valid : out STD_LOGIC;
    \sig_btt_cntr_reg[7]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_ADDR_32.sig_first_xfer_reg_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_ADDR_32.sig_addr_cntr_msh_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc_taking_command : out STD_LOGIC;
    sig_last_dbeat_reg : out STD_LOGIC;
    \sig_next_len_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_rd_addr_valid_reg0 : out STD_LOGIC;
    \sig_next_addr_reg_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_cmd_mst_addr_reg[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_cmd_mst_addr_reg[27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \sig_cmd_mst_addr_reg[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sig_cmd_reset_reg_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd2pcc_cmd_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sig_rdc2pcc_cmd_ready : in STD_LOGIC;
    sig_addr2stat_cmd_fifo_empty : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_llink2rd_allow_addr_req : in STD_LOGIC;
    sig_cmd_mst_be : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_pcc : entity is "axi_master_burst_pcc";
end system_axi_tft_0_0_axi_master_burst_pcc;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_pcc is
  signal \FSM_sequential_sig_pcc_sm_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_msh_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_first_xfer_i_1_n_0\ : STD_LOGIC;
  signal \^gen_addr_32.sig_first_xfer_reg_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in2_in : STD_LOGIC;
  signal sig_addr_cntr_incr_imreg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sig_adjusted_addr_incr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sig_btt_cntr : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal sig_btt_cntr0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \sig_btt_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[10]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[11]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[11]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[11]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[11]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[3]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[7]_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[7]_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[9]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_5_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_6_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_7_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_n_1 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_n_2 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_n_3 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1 : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_n_3\ : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_5_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_6_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_7_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_8_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_9_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_2 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_3 : STD_LOGIC;
  signal sig_btt_residue_slice : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \sig_byte_change_minus1/i__n_0\ : STD_LOGIC;
  signal sig_calc_error_pushed : STD_LOGIC;
  signal sig_calc_error_pushed_i_1_n_0 : STD_LOGIC;
  signal sig_calc_error_reg_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2addr_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2data_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_reg_n_0 : STD_LOGIC;
  signal sig_first_xfer : STD_LOGIC;
  signal sig_input_burst_type_reg : STD_LOGIC;
  signal sig_input_burst_type_reg_i_1_n_0 : STD_LOGIC;
  signal sig_input_eof_reg : STD_LOGIC;
  signal sig_input_eof_reg_i_1_n_0 : STD_LOGIC;
  signal sig_input_reg_empty : STD_LOGIC;
  signal sig_input_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_5_n_0 : STD_LOGIC;
  signal sig_ld_xfer_reg : STD_LOGIC;
  signal sig_ld_xfer_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_next_len_reg_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_parent_done : STD_LOGIC;
  signal sig_parent_done_i_1_n_0 : STD_LOGIC;
  signal \^sig_pcc2addr_cmd_valid\ : STD_LOGIC;
  signal sig_pcc2all_calc_err : STD_LOGIC;
  signal \^sig_pcc2data_calc_error\ : STD_LOGIC;
  signal \^sig_pcc2data_cmd_valid\ : STD_LOGIC;
  signal sig_pcc_sm_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_pcc_sm_state : signal is "yes";
  signal sig_predict_addr_lsh_im3_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_push_xfer_reg15_out : STD_LOGIC;
  signal sig_sm_halt_ns : STD_LOGIC;
  signal sig_sm_halt_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg_ns : STD_LOGIC;
  signal sig_sm_ld_calc2_reg : STD_LOGIC;
  signal sig_sm_ld_calc2_reg_ns : STD_LOGIC;
  signal sig_sm_pop_input_reg : STD_LOGIC;
  signal sig_sm_pop_input_reg_ns : STD_LOGIC;
  signal sig_xfer_addr_reg0 : STD_LOGIC;
  signal sig_xfer_address : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal sig_xfer_cmd_cmplt_reg0 : STD_LOGIC;
  signal sig_xfer_eof_reg0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_1_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_2_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_3_n_0 : STD_LOGIC;
  signal \sig_xfer_len_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal sig_xfer_reg_empty : STD_LOGIC;
  signal sig_xfer_reg_empty_i_3_n_0 : STD_LOGIC;
  signal \NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_btt_cntr_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sig_btt_eq_b2mbaa1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sig_btt_lt_b2mbaa1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sig_btt_lt_b2mbaa1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sig_pcc_sm_state[0]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_sig_pcc_sm_state[1]_i_2\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_sig_pcc_sm_state_reg[0]\ : label is "init:000,wait_for_cmd:001,calc_1:010,calc_2:011,wait_on_xfer_push:100,chk_if_done:101,error_trap:110";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_sig_pcc_sm_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sig_pcc_sm_state_reg[1]\ : label is "init:000,wait_for_cmd:001,calc_1:010,calc_2:011,wait_on_xfer_push:100,chk_if_done:101,error_trap:110";
  attribute KEEP of \FSM_sequential_sig_pcc_sm_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sig_pcc_sm_state_reg[2]\ : label is "init:000,wait_for_cmd:001,calc_1:010,calc_2:011,wait_on_xfer_push:100,chk_if_done:101,error_trap:110";
  attribute KEEP of \FSM_sequential_sig_pcc_sm_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sig_btt_cntr[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of sig_btt_eq_b2mbaa1_carry_i_7 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sig_btt_lt_b2mbaa1_carry__0_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sig_btt_lt_b2mbaa1_carry__0_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of sig_btt_lt_b2mbaa1_carry_i_9 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of sig_doing_read_reg_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of sig_xfer_cmd_cmplt_reg_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of sig_xfer_eof_reg_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[7]_i_1\ : label is "soft_lutpair17";
begin
  \GEN_ADDR_32.sig_first_xfer_reg_0\ <= \^gen_addr_32.sig_first_xfer_reg_0\;
  \sig_next_len_reg_reg[7]\(7 downto 0) <= \^sig_next_len_reg_reg[7]\(7 downto 0);
  sig_pcc2addr_cmd_valid <= \^sig_pcc2addr_cmd_valid\;
  sig_pcc2data_calc_error <= \^sig_pcc2data_calc_error\;
  sig_pcc2data_cmd_valid <= \^sig_pcc2data_cmd_valid\;
\FSM_sequential_sig_pcc_sm_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00330033B833B8FF"
    )
        port map (
      I0 => \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\,
      I1 => sig_pcc_sm_state(0),
      I2 => sig_push_xfer_reg15_out,
      I3 => sig_pcc_sm_state(2),
      I4 => \^gen_addr_32.sig_first_xfer_reg_0\,
      I5 => sig_pcc_sm_state(1),
      O => \FSM_sequential_sig_pcc_sm_state[0]_i_1_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_parent_done,
      I1 => sig_calc_error_pushed,
      O => \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A1A5A4A4A0A4A"
    )
        port map (
      I0 => sig_pcc_sm_state(1),
      I1 => sig_pcc_sm_state(2),
      I2 => sig_pcc_sm_state(0),
      I3 => sig_parent_done,
      I4 => sig_calc_error_pushed,
      I5 => \^gen_addr_32.sig_first_xfer_reg_0\,
      O => \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sig_pcc2all_calc_err,
      I1 => sig_input_reg_empty,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_sm_halt_reg,
      O => \^gen_addr_32.sig_first_xfer_reg_0\
    );
\FSM_sequential_sig_pcc_sm_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C8C"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => sig_pcc_sm_state(2),
      I2 => sig_pcc_sm_state(0),
      I3 => sig_pcc_sm_state(1),
      O => \FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0\
    );
\FSM_sequential_sig_pcc_sm_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \FSM_sequential_sig_pcc_sm_state[0]_i_1_n_0\,
      Q => sig_pcc_sm_state(0),
      R => \out\
    );
\FSM_sequential_sig_pcc_sm_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0\,
      Q => sig_pcc_sm_state(1),
      R => \out\
    );
\FSM_sequential_sig_pcc_sm_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0\,
      Q => sig_pcc_sm_state(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB000800080008"
    )
        port map (
      I0 => sig_btt_residue_slice(0),
      I1 => sig_btt_lt_b2mbaa1,
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_cntr(10),
      I4 => sig_first_xfer,
      I5 => sig_xfer_address(0),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD0DDDD"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2_n_0\,
      I2 => sig_btt_cntr(10),
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_lt_b2mbaa1,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I1 => \sig_btt_lt_b2mbaa1_carry__0_i_5_n_0\,
      I2 => sig_xfer_address(8),
      I3 => sig_xfer_address(9),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB88888"
    )
        port map (
      I0 => sig_btt_residue_slice(1),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\,
      I2 => sig_xfer_address(0),
      I3 => sig_xfer_address(1),
      I4 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBBB888888888"
    )
        port map (
      I0 => sig_btt_residue_slice(2),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\,
      I2 => sig_xfer_address(1),
      I3 => sig_xfer_address(0),
      I4 => sig_xfer_address(2),
      I5 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => sig_btt_residue_slice(3),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => sig_xfer_address(3),
      I1 => sig_xfer_address(1),
      I2 => sig_xfer_address(0),
      I3 => sig_xfer_address(2),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => sig_btt_residue_slice(4),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => sig_xfer_address(4),
      I1 => sig_xfer_address(2),
      I2 => sig_xfer_address(0),
      I3 => sig_xfer_address(1),
      I4 => sig_xfer_address(3),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => sig_btt_residue_slice(5),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => sig_xfer_address(4),
      I1 => sig_xfer_address(2),
      I2 => sig_xfer_address(0),
      I3 => sig_xfer_address(1),
      I4 => sig_xfer_address(3),
      I5 => sig_xfer_address(5),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88888B8"
    )
        port map (
      I0 => sig_btt_residue_slice(6),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_xfer_address(6),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B888B8B88888B8"
    )
        port map (
      I0 => sig_btt_residue_slice(7),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_xfer_address(7),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0\,
      I5 => sig_xfer_address(6),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa1,
      I1 => sig_btt_cntr(11),
      I2 => sig_btt_cntr(10),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sig_xfer_address(3),
      I1 => sig_xfer_address(1),
      I2 => sig_xfer_address(0),
      I3 => sig_xfer_address(2),
      I4 => sig_xfer_address(4),
      I5 => sig_xfer_address(5),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => sig_btt_residue_slice(8),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => sig_xfer_address(8),
      I1 => sig_xfer_address(6),
      I2 => sig_xfer_address(7),
      I3 => sig_xfer_address(4),
      I4 => sig_xfer_address(5),
      I5 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => sig_btt_residue_slice(9),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_eq_b2mbaa1_carry_i_5_n_0,
      I1 => sig_xfer_address(9),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(10),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(6),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(7),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(8),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(9),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(0)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(3),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\,
      O => p_1_in(10)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(4),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\,
      O => p_1_in(11)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(5),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\,
      O => p_1_in(12)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(6),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\,
      O => p_1_in(13)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(7),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\,
      O => p_1_in(14)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \^gen_addr_32.sig_first_xfer_reg_0\,
      I1 => sig_ld_xfer_reg,
      I2 => sig_xfer_reg_empty,
      I3 => sig_input_burst_type_reg,
      O => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(8),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => p_0_in,
      O => p_1_in(15)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(1)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(2)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(3)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(4)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(5)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(6)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(0),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\,
      O => p_1_in(7)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(1),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\,
      O => p_1_in(8)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(2),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\,
      O => p_1_in(9)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(0),
      Q => sig_xfer_address(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(10),
      Q => sig_xfer_address(10),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(11),
      Q => sig_xfer_address(11),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(12),
      Q => sig_xfer_address(12),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(13),
      Q => sig_xfer_address(13),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(14),
      Q => sig_xfer_address(14),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(15),
      Q => p_1_in2_in,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(1),
      Q => sig_xfer_address(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(2),
      Q => sig_xfer_address(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(3),
      Q => sig_xfer_address(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(4),
      Q => sig_xfer_address(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(5),
      Q => sig_xfer_address(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(6),
      Q => sig_xfer_address(6),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(7),
      Q => sig_xfer_address(7),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(8),
      Q => sig_xfer_address(8),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => p_1_in(9),
      Q => sig_xfer_address(9),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^gen_addr_32.sig_first_xfer_reg_0\,
      I1 => p_0_in,
      I2 => p_1_in2_in,
      I3 => sig_input_burst_type_reg,
      I4 => sig_xfer_reg_empty,
      I5 => sig_ld_xfer_reg,
      O => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[27]\(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[27]\(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[31]\(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[31]\(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[31]\(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[31]\(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => O(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[23]\(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[23]\(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[23]\(2),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[23]\(3),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[27]\(0),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \sig_cmd_mst_addr_reg[27]\(1),
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => sig_btt_residue_slice(3),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBBB888888888"
    )
        port map (
      I0 => sig_btt_residue_slice(2),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\,
      I2 => sig_xfer_address(1),
      I3 => sig_xfer_address(0),
      I4 => sig_xfer_address(2),
      I5 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0DFDF808"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => sig_xfer_address(0),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\,
      I3 => sig_btt_residue_slice(1),
      I4 => sig_xfer_address(1),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455575503000000"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_btt_residue_slice(0),
      I5 => sig_xfer_address(0),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B888B8B88888B8"
    )
        port map (
      I0 => sig_btt_residue_slice(7),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_xfer_address(7),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0\,
      I5 => sig_xfer_address(6),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88888B8"
    )
        port map (
      I0 => sig_btt_residue_slice(6),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_xfer_address(6),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0\,
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => sig_btt_residue_slice(5),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => sig_btt_residue_slice(4),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => sig_btt_residue_slice(9),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF020002000200"
    )
        port map (
      I0 => sig_btt_residue_slice(8),
      I1 => sig_btt_cntr(10),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_first_xfer,
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_3_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(0),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(1),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(2),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(3),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => sig_xfer_address(1 downto 0),
      O(3 downto 0) => sig_adjusted_addr_incr(3 downto 0),
      S(3) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(4),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(5),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(6),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(7),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_0\,
      CO(3) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_adjusted_addr_incr(7 downto 4),
      S(3) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(8),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(9),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[9]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => sig_adjusted_addr_incr(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_2_n_0\,
      S(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[9]_i_3_n_0\
    );
\GEN_ADDR_32.sig_first_xfer_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054545454545454"
    )
        port map (
      I0 => \out\,
      I1 => \^gen_addr_32.sig_first_xfer_reg_0\,
      I2 => sig_first_xfer,
      I3 => sig_ld_xfer_reg,
      I4 => sig_xfer_reg_empty,
      I5 => sig_input_burst_type_reg,
      O => \GEN_ADDR_32.sig_first_xfer_i_1_n_0\
    );
\GEN_ADDR_32.sig_first_xfer_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \GEN_ADDR_32.sig_first_xfer_i_1_n_0\,
      Q => sig_first_xfer,
      R => '0'
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(10),
      I1 => sig_addr_cntr_incr_imreg(10),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(9),
      I1 => sig_addr_cntr_incr_imreg(9),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(8),
      I1 => sig_addr_cntr_incr_imreg(8),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(3),
      I1 => sig_addr_cntr_incr_imreg(3),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(2),
      I1 => sig_addr_cntr_incr_imreg(2),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(1),
      I1 => sig_addr_cntr_incr_imreg(1),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(0),
      I1 => sig_addr_cntr_incr_imreg(0),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(7),
      I1 => sig_addr_cntr_incr_imreg(7),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(6),
      I1 => sig_addr_cntr_incr_imreg(6),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(5),
      I1 => sig_addr_cntr_incr_imreg(5),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(4),
      I1 => sig_addr_cntr_incr_imreg(4),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(0),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(10),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(11),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\,
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => sig_xfer_address(10 downto 8),
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(11 downto 8),
      S(3) => sig_xfer_address(11),
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(12),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(13),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(14),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(15),
      Q => p_0_in,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\,
      CO(3) => \NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(15 downto 12),
      S(3) => p_1_in2_in,
      S(2 downto 0) => sig_xfer_address(14 downto 12)
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(1),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(2),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(3),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sig_xfer_address(3 downto 0),
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(3 downto 0),
      S(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(4),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(5),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(6),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(7),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\,
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sig_xfer_address(7 downto 4),
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(7 downto 4),
      S(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(8),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(9),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\,
      R => \out\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(16),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(15),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(14),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(13),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(20),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(19),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(18),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(17),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(24),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      O => S(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(23),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      O => S(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(22),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      O => S(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(21),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      O => S(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(9),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      O => DI(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(12),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[3]_0\(3)
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(11),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[3]_0\(2)
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(10),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[3]_0\(1)
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555C555555"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      I1 => Q(9),
      I2 => sig_sm_halt_reg,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_input_reg_empty,
      I5 => sig_pcc2all_calc_err,
      O => \GEN_ADDR_32.sig_addr_cntr_msh_reg[3]_0\(0)
    );
\sig_btt_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(0),
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[0]_i_1_n_0\
    );
\sig_btt_cntr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(10),
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[10]_i_1_n_0\
    );
\sig_btt_cntr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(11),
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[11]_i_1_n_0\
    );
\sig_btt_cntr[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_btt_cntr(11),
      O => \sig_btt_cntr[11]_i_3_n_0\
    );
\sig_btt_cntr[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_cntr(10),
      I1 => sig_addr_cntr_incr_imreg(10),
      O => \sig_btt_cntr[11]_i_4_n_0\
    );
\sig_btt_cntr[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(9),
      I1 => sig_addr_cntr_incr_imreg(9),
      O => \sig_btt_cntr[11]_i_5_n_0\
    );
\sig_btt_cntr[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(8),
      I1 => sig_addr_cntr_incr_imreg(8),
      O => \sig_btt_cntr[11]_i_6_n_0\
    );
\sig_btt_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(1),
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[1]_i_1_n_0\
    );
\sig_btt_cntr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(3),
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[3]_i_1_n_0\
    );
\sig_btt_cntr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(3),
      I1 => sig_addr_cntr_incr_imreg(3),
      O => \sig_btt_cntr[3]_i_3_n_0\
    );
\sig_btt_cntr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(2),
      I1 => sig_addr_cntr_incr_imreg(2),
      O => \sig_btt_cntr[3]_i_4_n_0\
    );
\sig_btt_cntr[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(1),
      I1 => sig_addr_cntr_incr_imreg(1),
      O => \sig_btt_cntr[3]_i_5_n_0\
    );
\sig_btt_cntr[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(0),
      I1 => sig_addr_cntr_incr_imreg(0),
      O => \sig_btt_cntr[3]_i_6_n_0\
    );
\sig_btt_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(4),
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[4]_i_1_n_0\
    );
\sig_btt_cntr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(5),
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[5]_i_1_n_0\
    );
\sig_btt_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(6),
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[6]_i_1_n_0\
    );
\sig_btt_cntr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(7),
      I1 => sig_addr_cntr_incr_imreg(7),
      O => \sig_btt_cntr[7]_i_3_n_0\
    );
\sig_btt_cntr[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(6),
      I1 => sig_addr_cntr_incr_imreg(6),
      O => \sig_btt_cntr[7]_i_4_n_0\
    );
\sig_btt_cntr[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(5),
      I1 => sig_addr_cntr_incr_imreg(5),
      O => \sig_btt_cntr[7]_i_5_n_0\
    );
\sig_btt_cntr[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(4),
      I1 => sig_addr_cntr_incr_imreg(4),
      O => \sig_btt_cntr[7]_i_6_n_0\
    );
\sig_btt_cntr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(8),
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[8]_i_1_n_0\
    );
\sig_btt_cntr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(9),
      I1 => sig_sm_halt_reg,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[9]_i_1_n_0\
    );
\sig_btt_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr[0]_i_1_n_0\,
      Q => sig_btt_residue_slice(0),
      R => \out\
    );
\sig_btt_cntr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr[10]_i_1_n_0\,
      Q => sig_btt_cntr(10),
      R => \out\
    );
\sig_btt_cntr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr[11]_i_1_n_0\,
      Q => sig_btt_cntr(11),
      R => \out\
    );
\sig_btt_cntr_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_reg[7]_i_2_n_0\,
      CO(3) => \NLW_sig_btt_cntr_reg[11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \sig_btt_cntr_reg[11]_i_2_n_1\,
      CO(1) => \sig_btt_cntr_reg[11]_i_2_n_2\,
      CO(0) => \sig_btt_cntr_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => sig_btt_cntr(10),
      DI(1 downto 0) => sig_btt_residue_slice(9 downto 8),
      O(3 downto 0) => sig_btt_cntr0(11 downto 8),
      S(3) => \sig_btt_cntr[11]_i_3_n_0\,
      S(2) => \sig_btt_cntr[11]_i_4_n_0\,
      S(1) => \sig_btt_cntr[11]_i_5_n_0\,
      S(0) => \sig_btt_cntr[11]_i_6_n_0\
    );
\sig_btt_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr[1]_i_1_n_0\,
      Q => sig_btt_residue_slice(1),
      R => \out\
    );
\sig_btt_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => D(0),
      Q => sig_btt_residue_slice(2),
      R => \out\
    );
\sig_btt_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr[3]_i_1_n_0\,
      Q => sig_btt_residue_slice(3),
      R => \out\
    );
\sig_btt_cntr_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sig_btt_cntr_reg[3]_i_2_n_0\,
      CO(2) => \sig_btt_cntr_reg[3]_i_2_n_1\,
      CO(1) => \sig_btt_cntr_reg[3]_i_2_n_2\,
      CO(0) => \sig_btt_cntr_reg[3]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => sig_btt_residue_slice(3 downto 0),
      O(3) => sig_btt_cntr0(3),
      O(2) => \sig_btt_cntr_reg[7]_0\(0),
      O(1 downto 0) => sig_btt_cntr0(1 downto 0),
      S(3) => \sig_btt_cntr[3]_i_3_n_0\,
      S(2) => \sig_btt_cntr[3]_i_4_n_0\,
      S(1) => \sig_btt_cntr[3]_i_5_n_0\,
      S(0) => \sig_btt_cntr[3]_i_6_n_0\
    );
\sig_btt_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr[4]_i_1_n_0\,
      Q => sig_btt_residue_slice(4),
      R => \out\
    );
\sig_btt_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr[5]_i_1_n_0\,
      Q => sig_btt_residue_slice(5),
      R => \out\
    );
\sig_btt_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr[6]_i_1_n_0\,
      Q => sig_btt_residue_slice(6),
      R => \out\
    );
\sig_btt_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => D(1),
      Q => sig_btt_residue_slice(7),
      R => \out\
    );
\sig_btt_cntr_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr_reg[3]_i_2_n_0\,
      CO(3) => \sig_btt_cntr_reg[7]_i_2_n_0\,
      CO(2) => \sig_btt_cntr_reg[7]_i_2_n_1\,
      CO(1) => \sig_btt_cntr_reg[7]_i_2_n_2\,
      CO(0) => \sig_btt_cntr_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sig_btt_residue_slice(7 downto 4),
      O(3) => \sig_btt_cntr_reg[7]_0\(1),
      O(2 downto 0) => sig_btt_cntr0(6 downto 4),
      S(3) => \sig_btt_cntr[7]_i_3_n_0\,
      S(2) => \sig_btt_cntr[7]_i_4_n_0\,
      S(1) => \sig_btt_cntr[7]_i_5_n_0\,
      S(0) => \sig_btt_cntr[7]_i_6_n_0\
    );
\sig_btt_cntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr[8]_i_1_n_0\,
      Q => sig_btt_residue_slice(8),
      R => \out\
    );
\sig_btt_cntr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1_n_0\,
      D => \sig_btt_cntr[9]_i_1_n_0\,
      Q => sig_btt_residue_slice(9),
      R => \out\
    );
sig_btt_eq_b2mbaa1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_eq_b2mbaa1,
      CO(2) => sig_btt_eq_b2mbaa1_carry_n_1,
      CO(1) => sig_btt_eq_b2mbaa1_carry_n_2,
      CO(0) => sig_btt_eq_b2mbaa1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_sig_btt_eq_b2mbaa1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sig_btt_eq_b2mbaa1_carry_i_1_n_0,
      S(2) => sig_btt_eq_b2mbaa1_carry_i_2_n_0,
      S(1) => sig_btt_eq_b2mbaa1_carry_i_3_n_0,
      S(0) => sig_btt_eq_b2mbaa1_carry_i_4_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"94"
    )
        port map (
      I0 => sig_btt_eq_b2mbaa1_carry_i_5_n_0,
      I1 => sig_xfer_address(9),
      I2 => sig_btt_residue_slice(9),
      O => sig_btt_eq_b2mbaa1_carry_i_1_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004929204"
    )
        port map (
      I0 => sig_btt_residue_slice(6),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0\,
      I2 => sig_xfer_address(6),
      I3 => sig_btt_residue_slice(7),
      I4 => sig_xfer_address(7),
      I5 => sig_btt_eq_b2mbaa1_carry_i_6_n_0,
      O => sig_btt_eq_b2mbaa1_carry_i_2_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001686801"
    )
        port map (
      I0 => sig_btt_residue_slice(4),
      I1 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I2 => sig_xfer_address(4),
      I3 => sig_btt_residue_slice(5),
      I4 => sig_xfer_address(5),
      I5 => sig_btt_eq_b2mbaa1_carry_i_7_n_0,
      O => sig_btt_eq_b2mbaa1_carry_i_3_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006600060000009"
    )
        port map (
      I0 => sig_btt_residue_slice(2),
      I1 => sig_xfer_address(2),
      I2 => sig_xfer_address(0),
      I3 => sig_btt_residue_slice(0),
      I4 => sig_btt_residue_slice(1),
      I5 => sig_xfer_address(1),
      O => sig_btt_eq_b2mbaa1_carry_i_4_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sig_xfer_address(8),
      I1 => sig_xfer_address(6),
      I2 => sig_xfer_address(7),
      I3 => sig_xfer_address(4),
      I4 => sig_xfer_address(5),
      I5 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      O => sig_btt_eq_b2mbaa1_carry_i_5_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_btt_residue_slice(8),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0\,
      O => sig_btt_eq_b2mbaa1_carry_i_6_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => sig_btt_residue_slice(3),
      I1 => sig_xfer_address(2),
      I2 => sig_xfer_address(0),
      I3 => sig_xfer_address(1),
      I4 => sig_xfer_address(3),
      O => sig_btt_eq_b2mbaa1_carry_i_7_n_0
    );
sig_btt_lt_b2mbaa1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_lt_b2mbaa1_carry_n_0,
      CO(2) => sig_btt_lt_b2mbaa1_carry_n_1,
      CO(1) => sig_btt_lt_b2mbaa1_carry_n_2,
      CO(0) => sig_btt_lt_b2mbaa1_carry_n_3,
      CYINIT => '0',
      DI(3) => sig_btt_lt_b2mbaa1_carry_i_1_n_0,
      DI(2) => sig_btt_lt_b2mbaa1_carry_i_2_n_0,
      DI(1) => sig_btt_lt_b2mbaa1_carry_i_3_n_0,
      DI(0) => sig_btt_lt_b2mbaa1_carry_i_4_n_0,
      O(3 downto 0) => NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sig_btt_lt_b2mbaa1_carry_i_5_n_0,
      S(2) => sig_btt_lt_b2mbaa1_carry_i_6_n_0,
      S(1) => sig_btt_lt_b2mbaa1_carry_i_7_n_0,
      S(0) => sig_btt_lt_b2mbaa1_carry_i_8_n_0
    );
\sig_btt_lt_b2mbaa1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sig_btt_lt_b2mbaa1_carry_n_0,
      CO(3 downto 2) => \NLW_sig_btt_lt_b2mbaa1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => sig_btt_lt_b2mbaa1,
      CO(0) => \sig_btt_lt_b2mbaa1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \sig_btt_lt_b2mbaa1_carry__0_i_1_n_0\,
      DI(0) => \sig_btt_lt_b2mbaa1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_sig_btt_lt_b2mbaa1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \sig_btt_lt_b2mbaa1_carry__0_i_3_n_0\,
      S(0) => \sig_btt_lt_b2mbaa1_carry__0_i_4_n_0\
    );
\sig_btt_lt_b2mbaa1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I1 => \sig_btt_lt_b2mbaa1_carry__0_i_5_n_0\,
      I2 => sig_xfer_address(8),
      I3 => sig_xfer_address(9),
      O => \sig_btt_lt_b2mbaa1_carry__0_i_1_n_0\
    );
\sig_btt_lt_b2mbaa1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11141774"
    )
        port map (
      I0 => sig_btt_residue_slice(9),
      I1 => sig_xfer_address(9),
      I2 => \sig_btt_lt_b2mbaa1_carry__0_i_6_n_0\,
      I3 => sig_xfer_address(8),
      I4 => sig_btt_residue_slice(8),
      O => \sig_btt_lt_b2mbaa1_carry__0_i_2_n_0\
    );
\sig_btt_lt_b2mbaa1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2_n_0\,
      O => \sig_btt_lt_b2mbaa1_carry__0_i_3_n_0\
    );
\sig_btt_lt_b2mbaa1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06606009"
    )
        port map (
      I0 => sig_xfer_address(9),
      I1 => sig_btt_residue_slice(9),
      I2 => sig_xfer_address(8),
      I3 => \sig_btt_lt_b2mbaa1_carry__0_i_6_n_0\,
      I4 => sig_btt_residue_slice(8),
      O => \sig_btt_lt_b2mbaa1_carry__0_i_4_n_0\
    );
\sig_btt_lt_b2mbaa1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_xfer_address(6),
      I1 => sig_xfer_address(7),
      I2 => sig_xfer_address(4),
      I3 => sig_xfer_address(5),
      O => \sig_btt_lt_b2mbaa1_carry__0_i_5_n_0\
    );
\sig_btt_lt_b2mbaa1_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I1 => sig_xfer_address(5),
      I2 => sig_xfer_address(4),
      I3 => sig_xfer_address(7),
      I4 => sig_xfer_address(6),
      O => \sig_btt_lt_b2mbaa1_carry__0_i_6_n_0\
    );
sig_btt_lt_b2mbaa1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"104551C7"
    )
        port map (
      I0 => sig_btt_residue_slice(7),
      I1 => sig_xfer_address(6),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0\,
      I3 => sig_xfer_address(7),
      I4 => sig_btt_residue_slice(6),
      O => sig_btt_lt_b2mbaa1_carry_i_1_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11141774"
    )
        port map (
      I0 => sig_btt_residue_slice(5),
      I1 => sig_xfer_address(5),
      I2 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I3 => sig_xfer_address(4),
      I4 => sig_btt_residue_slice(4),
      O => sig_btt_lt_b2mbaa1_carry_i_2_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000155541115777C"
    )
        port map (
      I0 => sig_btt_residue_slice(3),
      I1 => sig_xfer_address(2),
      I2 => sig_xfer_address(0),
      I3 => sig_xfer_address(1),
      I4 => sig_xfer_address(3),
      I5 => sig_btt_residue_slice(2),
      O => sig_btt_lt_b2mbaa1_carry_i_3_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"145C"
    )
        port map (
      I0 => sig_btt_residue_slice(1),
      I1 => sig_xfer_address(0),
      I2 => sig_xfer_address(1),
      I3 => sig_btt_residue_slice(0),
      O => sig_btt_lt_b2mbaa1_carry_i_4_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60060960"
    )
        port map (
      I0 => sig_xfer_address(7),
      I1 => sig_btt_residue_slice(7),
      I2 => sig_xfer_address(6),
      I3 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_3_n_0\,
      I4 => sig_btt_residue_slice(6),
      O => sig_btt_lt_b2mbaa1_carry_i_5_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06606009"
    )
        port map (
      I0 => sig_xfer_address(5),
      I1 => sig_btt_residue_slice(5),
      I2 => sig_xfer_address(4),
      I3 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I4 => sig_btt_residue_slice(4),
      O => sig_btt_lt_b2mbaa1_carry_i_6_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1112222444488881"
    )
        port map (
      I0 => sig_btt_residue_slice(2),
      I1 => sig_xfer_address(3),
      I2 => sig_xfer_address(1),
      I3 => sig_xfer_address(0),
      I4 => sig_xfer_address(2),
      I5 => sig_btt_residue_slice(3),
      O => sig_btt_lt_b2mbaa1_carry_i_7_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6009"
    )
        port map (
      I0 => sig_xfer_address(1),
      I1 => sig_btt_residue_slice(1),
      I2 => sig_btt_residue_slice(0),
      I3 => sig_xfer_address(0),
      O => sig_btt_lt_b2mbaa1_carry_i_8_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_xfer_address(3),
      I1 => sig_xfer_address(1),
      I2 => sig_xfer_address(0),
      I3 => sig_xfer_address(2),
      O => sig_btt_lt_b2mbaa1_carry_i_9_n_0
    );
\sig_byte_change_minus1/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      O => \sig_byte_change_minus1/i__n_0\
    );
sig_calc_error_pushed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => sig_pcc2all_calc_err,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => sig_calc_error_pushed,
      O => sig_calc_error_pushed_i_1_n_0
    );
sig_calc_error_pushed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_calc_error_pushed_i_1_n_0,
      Q => sig_calc_error_pushed,
      R => \out\
    );
sig_calc_error_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCDCCC"
    )
        port map (
      I0 => sig_cmd_mst_be(0),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_sm_halt_reg,
      O => sig_calc_error_reg_i_1_n_0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_calc_error_reg_i_1_n_0,
      Q => sig_pcc2all_calc_err,
      R => \out\
    );
sig_cmd2addr_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0544554455445544"
    )
        port map (
      I0 => \out\,
      I1 => sig_push_xfer_reg15_out,
      I2 => sig_llink2rd_allow_addr_req,
      I3 => \^sig_pcc2addr_cmd_valid\,
      I4 => sig_cmd2all_doing_read,
      I5 => sig_addr2stat_cmd_fifo_empty,
      O => sig_cmd2addr_valid_i_1_n_0
    );
sig_cmd2addr_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2addr_valid_i_1_n_0,
      Q => \^sig_pcc2addr_cmd_valid\,
      R => '0'
    );
sig_cmd2data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \out\,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => \^sig_pcc2data_cmd_valid\,
      I4 => sig_rdc2pcc_cmd_ready,
      O => sig_cmd2data_valid_i_1_n_0
    );
sig_cmd2data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2data_valid_i_1_n_0,
      Q => \^sig_pcc2data_cmd_valid\,
      R => '0'
    );
sig_cmd2dre_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \out\,
      I1 => sig_first_xfer,
      I2 => sig_ld_xfer_reg,
      I3 => sig_xfer_reg_empty,
      I4 => sig_cmd2dre_valid_reg_n_0,
      O => sig_cmd2dre_valid_i_1_n_0
    );
sig_cmd2dre_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2dre_valid_i_1_n_0,
      Q => sig_cmd2dre_valid_reg_n_0,
      R => '0'
    );
sig_cmd_full_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABAAAAAA"
    )
        port map (
      I0 => sig_cmd_reset_reg_reg,
      I1 => E(0),
      I2 => sig_calc_error_pushed,
      I3 => sig_input_reg_empty,
      I4 => sig_cmd2pcc_cmd_valid,
      I5 => sig_sm_halt_reg,
      O => SR(0)
    );
sig_doing_read_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => sig_input_reg_empty,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_sm_halt_reg,
      O => sig_pcc_taking_command
    );
sig_input_burst_type_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => sig_input_burst_type_reg,
      I1 => \^gen_addr_32.sig_first_xfer_reg_0\,
      I2 => sig_calc_error_pushed,
      I3 => \out\,
      I4 => sig_sm_pop_input_reg,
      O => sig_input_burst_type_reg_i_1_n_0
    );
sig_input_burst_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_input_burst_type_reg_i_1_n_0,
      Q => sig_input_burst_type_reg,
      R => '0'
    );
sig_input_eof_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => sig_input_eof_reg,
      I1 => \^gen_addr_32.sig_first_xfer_reg_0\,
      I2 => sig_calc_error_pushed,
      I3 => \out\,
      I4 => sig_sm_pop_input_reg,
      O => sig_input_eof_reg_i_1_n_0
    );
sig_input_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_input_eof_reg_i_1_n_0,
      Q => sig_input_eof_reg,
      R => '0'
    );
sig_input_reg_empty_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF2"
    )
        port map (
      I0 => sig_input_reg_empty,
      I1 => \^gen_addr_32.sig_first_xfer_reg_0\,
      I2 => sig_calc_error_pushed,
      I3 => \out\,
      I4 => sig_sm_pop_input_reg,
      O => sig_input_reg_empty_i_1_n_0
    );
sig_input_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_input_reg_empty_i_1_n_0,
      Q => sig_input_reg_empty,
      R => '0'
    );
sig_last_dbeat_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^sig_next_len_reg_reg[7]\(2),
      I1 => \^sig_next_len_reg_reg[7]\(1),
      I2 => \^sig_next_len_reg_reg[7]\(7),
      I3 => \^sig_next_len_reg_reg[7]\(4),
      I4 => sig_last_dbeat_i_5_n_0,
      O => sig_last_dbeat_reg
    );
sig_last_dbeat_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^sig_next_len_reg_reg[7]\(3),
      I1 => \^sig_next_len_reg_reg[7]\(0),
      I2 => \^sig_next_len_reg_reg[7]\(6),
      I3 => \^sig_next_len_reg_reg[7]\(5),
      O => sig_last_dbeat_i_5_n_0
    );
sig_ld_xfer_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000555500400040"
    )
        port map (
      I0 => \out\,
      I1 => sig_pcc_sm_state(1),
      I2 => sig_pcc_sm_state(0),
      I3 => sig_pcc_sm_state(2),
      I4 => sig_xfer_reg_empty,
      I5 => sig_ld_xfer_reg,
      O => sig_ld_xfer_reg_i_1_n_0
    );
sig_ld_xfer_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_ld_xfer_reg_i_1_n_0,
      Q => sig_ld_xfer_reg,
      R => '0'
    );
sig_parent_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015551000"
    )
        port map (
      I0 => \out\,
      I1 => sig_xfer_is_seq_reg_i_1_n_0,
      I2 => sig_ld_xfer_reg,
      I3 => sig_xfer_reg_empty,
      I4 => sig_parent_done,
      I5 => \^gen_addr_32.sig_first_xfer_reg_0\,
      O => sig_parent_done_i_1_n_0
    );
sig_parent_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_parent_done_i_1_n_0,
      Q => sig_parent_done,
      R => '0'
    );
sig_rd_addr_valid_reg_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sig_pcc2data_calc_error\,
      O => sig_rd_addr_valid_reg0
    );
sig_sm_halt_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3803"
    )
        port map (
      I0 => sig_calc_error_pushed,
      I1 => sig_pcc_sm_state(0),
      I2 => sig_pcc_sm_state(1),
      I3 => sig_pcc_sm_state(2),
      O => sig_sm_halt_ns
    );
sig_sm_halt_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_sm_halt_ns,
      Q => sig_sm_halt_reg,
      S => \out\
    );
sig_sm_ld_calc1_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000404440"
    )
        port map (
      I0 => sig_pcc_sm_state(1),
      I1 => sig_pcc_sm_state(0),
      I2 => \^gen_addr_32.sig_first_xfer_reg_0\,
      I3 => sig_pcc_sm_state(2),
      I4 => sig_parent_done,
      I5 => sig_calc_error_pushed,
      O => sig_sm_ld_calc1_reg_ns
    );
sig_sm_ld_calc1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_sm_ld_calc1_reg_ns,
      Q => sig_sm_ld_calc1_reg,
      R => \out\
    );
sig_sm_ld_calc2_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sig_pcc_sm_state(1),
      I1 => sig_pcc_sm_state(2),
      I2 => sig_pcc_sm_state(0),
      O => sig_sm_ld_calc2_reg_ns
    );
sig_sm_ld_calc2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_sm_ld_calc2_reg_ns,
      Q => sig_sm_ld_calc2_reg,
      R => \out\
    );
sig_sm_pop_input_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => sig_pcc_sm_state(2),
      I1 => sig_pcc_sm_state(1),
      I2 => sig_pcc_sm_state(0),
      I3 => sig_parent_done,
      I4 => sig_calc_error_pushed,
      O => sig_sm_pop_input_reg_ns
    );
sig_sm_pop_input_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_sm_pop_input_reg_ns,
      Q => sig_sm_pop_input_reg,
      R => \out\
    );
\sig_xfer_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(0),
      Q => \sig_next_addr_reg_reg[31]\(0),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(10),
      Q => \sig_next_addr_reg_reg[31]\(10),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(11),
      Q => \sig_next_addr_reg_reg[31]\(11),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(12),
      Q => \sig_next_addr_reg_reg[31]\(12),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(13),
      Q => \sig_next_addr_reg_reg[31]\(13),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(14),
      Q => \sig_next_addr_reg_reg[31]\(14),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => p_1_in2_in,
      Q => \sig_next_addr_reg_reg[31]\(15),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      Q => \sig_next_addr_reg_reg[31]\(16),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      Q => \sig_next_addr_reg_reg[31]\(17),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      Q => \sig_next_addr_reg_reg[31]\(18),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      Q => \sig_next_addr_reg_reg[31]\(19),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(1),
      Q => \sig_next_addr_reg_reg[31]\(1),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      Q => \sig_next_addr_reg_reg[31]\(20),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      Q => \sig_next_addr_reg_reg[31]\(21),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      Q => \sig_next_addr_reg_reg[31]\(22),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      Q => \sig_next_addr_reg_reg[31]\(23),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      Q => \sig_next_addr_reg_reg[31]\(24),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      Q => \sig_next_addr_reg_reg[31]\(25),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      Q => \sig_next_addr_reg_reg[31]\(26),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      Q => \sig_next_addr_reg_reg[31]\(27),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      Q => \sig_next_addr_reg_reg[31]\(28),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      Q => \sig_next_addr_reg_reg[31]\(29),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(2),
      Q => \sig_next_addr_reg_reg[31]\(2),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      Q => \sig_next_addr_reg_reg[31]\(30),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      Q => \sig_next_addr_reg_reg[31]\(31),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(3),
      Q => \sig_next_addr_reg_reg[31]\(3),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(4),
      Q => \sig_next_addr_reg_reg[31]\(4),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(5),
      Q => \sig_next_addr_reg_reg[31]\(5),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(6),
      Q => \sig_next_addr_reg_reg[31]\(6),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(7),
      Q => \sig_next_addr_reg_reg[31]\(7),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(8),
      Q => \sig_next_addr_reg_reg[31]\(8),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(9),
      Q => \sig_next_addr_reg_reg[31]\(9),
      R => sig_xfer_addr_reg0
    );
sig_xfer_calc_err_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_pcc2all_calc_err,
      Q => \^sig_pcc2data_calc_error\,
      R => sig_xfer_addr_reg0
    );
sig_xfer_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_pcc2all_calc_err,
      I1 => sig_xfer_is_seq_reg_i_1_n_0,
      O => sig_xfer_cmd_cmplt_reg0
    );
sig_xfer_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_cmd_cmplt_reg0,
      Q => sig_pcc2data_cmd_cmplt,
      R => sig_xfer_addr_reg0
    );
sig_xfer_eof_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_input_eof_reg,
      I1 => sig_xfer_is_seq_reg_i_1_n_0,
      O => sig_xfer_eof_reg0
    );
sig_xfer_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_eof_reg0,
      Q => sig_pcc2data_eof,
      R => sig_xfer_addr_reg0
    );
sig_xfer_is_seq_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF01FFFFFFF1F"
    )
        port map (
      I0 => sig_btt_eq_b2mbaa1,
      I1 => sig_btt_lt_b2mbaa1,
      I2 => sig_xfer_is_seq_reg_i_2_n_0,
      I3 => sig_btt_cntr(10),
      I4 => sig_btt_cntr(11),
      I5 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2_n_0\,
      O => sig_xfer_is_seq_reg_i_1_n_0
    );
sig_xfer_is_seq_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_btt_residue_slice(5),
      I1 => sig_btt_residue_slice(3),
      I2 => sig_btt_residue_slice(9),
      I3 => sig_btt_residue_slice(4),
      I4 => sig_xfer_is_seq_reg_i_3_n_0,
      O => sig_xfer_is_seq_reg_i_2_n_0
    );
sig_xfer_is_seq_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_btt_residue_slice(2),
      I1 => sig_btt_residue_slice(6),
      I2 => sig_btt_residue_slice(8),
      I3 => sig_btt_residue_slice(0),
      I4 => sig_btt_residue_slice(7),
      I5 => sig_btt_residue_slice(1),
      O => sig_xfer_is_seq_reg_i_3_n_0
    );
sig_xfer_is_seq_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_is_seq_reg_i_1_n_0,
      Q => sig_pcc2data_sequential,
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      O => \sig_xfer_len_reg[0]_i_1_n_0\
    );
\sig_xfer_len_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      O => \sig_xfer_len_reg[1]_i_1_n_0\
    );
\sig_xfer_len_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      O => \sig_xfer_len_reg[2]_i_1_n_0\
    );
\sig_xfer_len_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      O => \sig_xfer_len_reg[3]_i_1_n_0\
    );
\sig_xfer_len_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sig_byte_change_minus1/i__n_0\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\,
      O => \sig_xfer_len_reg[4]_i_1_n_0\
    );
\sig_xfer_len_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\,
      I1 => \sig_byte_change_minus1/i__n_0\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7]\,
      O => \sig_xfer_len_reg[5]_i_1_n_0\
    );
\sig_xfer_len_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7]\,
      I1 => \sig_byte_change_minus1/i__n_0\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8]\,
      O => \sig_xfer_len_reg[6]_i_1_n_0\
    );
\sig_xfer_len_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\,
      I2 => \sig_byte_change_minus1/i__n_0\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[9]\,
      O => \sig_xfer_len_reg[7]_i_1_n_0\
    );
\sig_xfer_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[0]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(0),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[1]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(1),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[2]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(2),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[3]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(3),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[4]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(4),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[5]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(5),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[6]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(6),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[7]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(7),
      R => sig_xfer_addr_reg0
    );
sig_xfer_reg_empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABABBBBBBBA"
    )
        port map (
      I0 => \out\,
      I1 => sig_xfer_reg_empty_i_3_n_0,
      I2 => sig_rdc2pcc_cmd_ready,
      I3 => \^sig_pcc2addr_cmd_valid\,
      I4 => sig_cmd2dre_valid_reg_n_0,
      I5 => \^sig_pcc2data_cmd_valid\,
      O => sig_xfer_addr_reg0
    );
sig_xfer_reg_empty_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_ld_xfer_reg,
      I1 => sig_xfer_reg_empty,
      O => sig_push_xfer_reg15_out
    );
sig_xfer_reg_empty_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF8888FFFF8888"
    )
        port map (
      I0 => sig_xfer_reg_empty,
      I1 => sig_ld_xfer_reg,
      I2 => sig_addr2stat_cmd_fifo_empty,
      I3 => sig_cmd2all_doing_read,
      I4 => \^sig_pcc2addr_cmd_valid\,
      I5 => sig_llink2rd_allow_addr_req,
      O => sig_xfer_reg_empty_i_3_n_0
    );
sig_xfer_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => '0',
      Q => sig_xfer_reg_empty,
      S => sig_xfer_addr_reg0
    );
sig_xfer_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_input_burst_type_reg,
      Q => sig_pcc2addr_burst(0),
      R => sig_xfer_addr_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_rd_llink is
  port (
    eof_n_reg : out STD_LOGIC;
    eof_n_reg_0 : out STD_LOGIC;
    sig_llink2rd_allow_addr_req : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \AXI_DATA_WIDTH_32.mstr_src_rdy_n_reg\ : out STD_LOGIC;
    \trans_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mstrd_eof_n : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_rdwr2llink_int_err : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    sig_m_valid_dup_reg : in STD_LOGIC;
    sig_doing_read_reg : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_m_valid_out_reg : in STD_LOGIC;
    mstr_src_rdy_n : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    sig_last_reg_out_reg : in STD_LOGIC;
    eof_n : in STD_LOGIC;
    sig_rd_llink_enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_rd_llink : entity is "axi_master_burst_rd_llink";
end system_axi_tft_0_0_axi_master_burst_rd_llink;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_rd_llink is
  signal \I_WR_LLINK_ADAPTER/sig_wr_error_reg\ : STD_LOGIC;
  signal \^eof_n_reg\ : STD_LOGIC;
  signal \^eof_n_reg_0\ : STD_LOGIC;
  signal sig_allow_rd_requests_i_1_n_0 : STD_LOGIC;
  signal \^sig_llink2rd_allow_addr_req\ : STD_LOGIC;
  signal sig_llink_busy0 : STD_LOGIC;
  signal sig_llink_busy_i_1_n_0 : STD_LOGIC;
  signal sig_rd_discontinue_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of eof_n_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sig_data_reg_out[23]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of sig_llink_busy_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \trans_cnt[0]_i_2\ : label is "soft_lutpair11";
begin
  eof_n_reg <= \^eof_n_reg\;
  eof_n_reg_0 <= \^eof_n_reg_0\;
  sig_llink2rd_allow_addr_req <= \^sig_llink2rd_allow_addr_req\;
\AXI_DATA_WIDTH_32.mstr_src_rdy_n_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF07FF"
    )
        port map (
      I0 => \^eof_n_reg_0\,
      I1 => \^eof_n_reg\,
      I2 => sig_m_valid_out_reg,
      I3 => mstr_src_rdy_n,
      I4 => bus2ip_mreset,
      O => \AXI_DATA_WIDTH_32.mstr_src_rdy_n_reg\
    );
eof_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => sig_last_reg_out_reg,
      I1 => \^eof_n_reg\,
      I2 => \^eof_n_reg_0\,
      O => bus2ip_mstrd_eof_n
    );
sig_allow_rd_requests_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540000055405540"
    )
        port map (
      I0 => \out\,
      I1 => \^eof_n_reg_0\,
      I2 => IP2Bus_MstRd_dst_rdy,
      I3 => \^sig_llink2rd_allow_addr_req\,
      I4 => sig_doing_read_reg,
      I5 => sig_cmd2all_doing_read,
      O => sig_allow_rd_requests_i_1_n_0
    );
sig_allow_rd_requests_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_allow_rd_requests_i_1_n_0,
      Q => \^sig_llink2rd_allow_addr_req\,
      R => '0'
    );
\sig_data_reg_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^eof_n_reg_0\,
      I1 => IP2Bus_MstRd_dst_rdy,
      I2 => sig_m_valid_dup_reg,
      O => E(0)
    );
sig_llink_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF2AAA"
    )
        port map (
      I0 => \^eof_n_reg_0\,
      I1 => IP2Bus_MstRd_dst_rdy,
      I2 => sig_last_reg_out_reg,
      I3 => sig_m_valid_out_reg,
      I4 => sig_rd_llink_enable,
      I5 => sig_llink_busy0,
      O => sig_llink_busy_i_1_n_0
    );
sig_llink_busy_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \out\,
      I1 => IP2Bus_MstRd_dst_rdy,
      I2 => \^eof_n_reg_0\,
      I3 => \^eof_n_reg\,
      O => sig_llink_busy0
    );
sig_llink_busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_llink_busy_i_1_n_0,
      Q => \^eof_n_reg_0\,
      R => '0'
    );
sig_rd_discontinue_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002F0F2F0"
    )
        port map (
      I0 => sig_rdwr2llink_int_err,
      I1 => \I_WR_LLINK_ADAPTER/sig_wr_error_reg\,
      I2 => \^eof_n_reg\,
      I3 => \^eof_n_reg_0\,
      I4 => IP2Bus_MstRd_dst_rdy,
      I5 => \out\,
      O => sig_rd_discontinue_i_1_n_0
    );
sig_rd_discontinue_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_rd_discontinue_i_1_n_0,
      Q => \^eof_n_reg\,
      R => '0'
    );
sig_rd_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_rdwr2llink_int_err,
      Q => \I_WR_LLINK_ADAPTER/sig_wr_error_reg\,
      R => \out\
    );
\trans_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => \^eof_n_reg_0\,
      I1 => \^eof_n_reg\,
      I2 => sig_last_reg_out_reg,
      I3 => eof_n,
      O => \trans_cnt_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_rd_status_cntl is
  port (
    sig_rsc2stat_status_valid : out STD_LOGIC;
    sig_rsc2rdc_ready : out STD_LOGIC;
    sig_error_sh_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rsc2stat_status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_error_sh_reg_reg_0 : out STD_LOGIC;
    sig_rd_sts_tag_reg0 : in STD_LOGIC;
    sig_push_rd_sts_reg : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_rd_sts_interr_reg0 : in STD_LOGIC;
    sig_rd_sts_decerr_reg0 : in STD_LOGIC;
    sig_rd_sts_slverr_reg0 : in STD_LOGIC;
    sig_push_status1_out : in STD_LOGIC;
    md_error : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_rd_status_cntl : entity is "axi_master_burst_rd_status_cntl";
end system_axi_tft_0_0_axi_master_burst_rd_status_cntl;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_rd_status_cntl is
  signal \^sig_error_sh_reg_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sig_rsc2stat_status\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  sig_error_sh_reg_reg(0) <= \^sig_error_sh_reg_reg\(0);
  sig_rsc2stat_status(1 downto 0) <= \^sig_rsc2stat_status\(1 downto 0);
sig_error_sh_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => \^sig_rsc2stat_status\(1),
      I1 => \^sig_rsc2stat_status\(0),
      I2 => \^sig_error_sh_reg_reg\(0),
      I3 => sig_push_status1_out,
      I4 => md_error,
      O => sig_error_sh_reg_reg_0
    );
sig_rd_sts_decerr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_decerr_reg0,
      Q => \^sig_rsc2stat_status\(0),
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_interr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_interr_reg0,
      Q => \^sig_error_sh_reg_reg\(0),
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => '0',
      Q => sig_rsc2rdc_ready,
      S => sig_rd_sts_tag_reg0
    );
sig_rd_sts_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => '1',
      Q => sig_rsc2stat_status_valid,
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_slverr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_slverr_reg0,
      Q => \^sig_rsc2stat_status\(1),
      R => sig_rd_sts_tag_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_rddata_cntl is
  port (
    sig_rdc2pcc_cmd_ready : out STD_LOGIC;
    sig_next_eof_reg : out STD_LOGIC;
    sig_next_eof_reg_reg_0 : out STD_LOGIC;
    sig_s_ready_dup_reg : out STD_LOGIC;
    sig_rdc2rdskid_tlast : out STD_LOGIC;
    sig_rd_sts_interr_reg0 : out STD_LOGIC;
    sig_rd_sts_decerr_reg0 : out STD_LOGIC;
    sig_rd_sts_slverr_reg0 : out STD_LOGIC;
    sig_push_rd_sts_reg : out STD_LOGIC;
    sig_pcc2data_cmd_cmplt : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_pcc2data_sequential : in STD_LOGIC;
    sig_pcc2data_eof : in STD_LOGIC;
    sig_s_ready_out_reg : in STD_LOGIC;
    sig_s_ready_out_reg_0 : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \sig_xfer_len_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_pcc2data_cmd_valid : in STD_LOGIC;
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_status_reg_empty : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rd_sts_interr_reg_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rsc2stat_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rsc2rdc_ready : in STD_LOGIC;
    \sig_xfer_len_reg_reg[2]\ : in STD_LOGIC;
    sig_posted_to_axi_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_rddata_cntl : entity is "axi_master_burst_rddata_cntl";
end system_axi_tft_0_0_axi_master_burst_rddata_cntl;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_rddata_cntl is
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_addr_posted_cntr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sig_addr_posted_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal sig_clr_dqual_reg : STD_LOGIC;
  signal sig_cmd_cmplt_last_dbeat : STD_LOGIC;
  signal sig_coelsc_decerr_reg0 : STD_LOGIC;
  signal sig_coelsc_interr_reg0 : STD_LOGIC;
  signal sig_coelsc_slverr_reg0 : STD_LOGIC;
  signal sig_coelsc_tag_reg0 : STD_LOGIC;
  signal sig_dbeat_cntr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sig_dbeat_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal sig_dqual_reg_empty : STD_LOGIC;
  signal sig_dqual_reg_full : STD_LOGIC;
  signal sig_last_dbeat_i_1_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_2_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_4_n_0 : STD_LOGIC;
  signal sig_last_dbeat_reg_n_0 : STD_LOGIC;
  signal sig_last_mmap_dbeat : STD_LOGIC;
  signal sig_ld_new_cmd_reg : STD_LOGIC;
  signal sig_ld_new_cmd_reg_i_1_n_0 : STD_LOGIC;
  signal sig_next_calc_error_reg : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_4_n_0 : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_5_n_0 : STD_LOGIC;
  signal \^sig_next_eof_reg\ : STD_LOGIC;
  signal \^sig_next_eof_reg_reg_0\ : STD_LOGIC;
  signal sig_next_sequential_reg : STD_LOGIC;
  signal sig_push_coelsc_reg : STD_LOGIC;
  signal sig_rd2llink_xfer_cmplt : STD_LOGIC;
  signal \^sig_rdc2pcc_cmd_ready\ : STD_LOGIC;
  signal sig_rdc2rsc_calc_err : STD_LOGIC;
  signal sig_rdc2rsc_decerr : STD_LOGIC;
  signal sig_rdc2rsc_slverr : STD_LOGIC;
  signal sig_rdc2rsc_valid : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sig_coelsc_decerr_reg_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of sig_coelsc_interr_reg_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of sig_coelsc_reg_full_i_3 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of sig_coelsc_slverr_reg_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[4]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[7]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[7]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of sig_last_dbeat_i_4 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of sig_last_mmap_dbeat_reg_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of sig_last_skid_reg_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of sig_m_valid_dup_i_3 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of sig_rd_sts_interr_reg_i_1 : label is "soft_lutpair29";
begin
  sig_next_eof_reg <= \^sig_next_eof_reg\;
  sig_next_eof_reg_reg_0 <= \^sig_next_eof_reg_reg_0\;
  sig_rdc2pcc_cmd_ready <= \^sig_rdc2pcc_cmd_ready\;
m_axi_rready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF01FFFF"
    )
        port map (
      I0 => sig_addr_posted_cntr(1),
      I1 => sig_addr_posted_cntr(0),
      I2 => sig_addr_posted_cntr(2),
      I3 => sig_next_calc_error_reg,
      I4 => sig_dqual_reg_full,
      I5 => sig_rdc2rsc_valid,
      O => \^sig_next_eof_reg_reg_0\
    );
\sig_addr_posted_cntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F87878778787808"
    )
        port map (
      I0 => sig_cmd2all_doing_read,
      I1 => sig_posted_to_axi_reg,
      I2 => sig_rd2llink_xfer_cmplt,
      I3 => sig_addr_posted_cntr(1),
      I4 => sig_addr_posted_cntr(2),
      I5 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr[0]_i_1_n_0\
    );
\sig_addr_posted_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BCC2F0C2F0C2F0"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(0),
      I2 => sig_addr_posted_cntr(1),
      I3 => sig_rd2llink_xfer_cmplt,
      I4 => sig_posted_to_axi_reg,
      I5 => sig_cmd2all_doing_read,
      O => \sig_addr_posted_cntr[1]_i_1_n_0\
    );
\sig_addr_posted_cntr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAA8AAA8AAA8AA"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(0),
      I2 => sig_addr_posted_cntr(1),
      I3 => sig_rd2llink_xfer_cmplt,
      I4 => sig_posted_to_axi_reg,
      I5 => sig_cmd2all_doing_read,
      O => \sig_addr_posted_cntr[2]_i_1_n_0\
    );
\sig_addr_posted_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[0]_i_1_n_0\,
      Q => sig_addr_posted_cntr(0),
      R => \out\
    );
\sig_addr_posted_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[1]_i_1_n_0\,
      Q => sig_addr_posted_cntr(1),
      R => \out\
    );
\sig_addr_posted_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[2]_i_1_n_0\,
      Q => sig_addr_posted_cntr(2),
      R => \out\
    );
sig_coelsc_decerr_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => sig_rdc2rsc_decerr,
      I1 => m_axi_rresp(1),
      I2 => m_axi_rresp(0),
      O => sig_coelsc_decerr_reg0
    );
sig_coelsc_decerr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_decerr_reg0,
      Q => sig_rdc2rsc_decerr,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_interr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_next_calc_error_reg,
      I1 => sig_rdc2rsc_calc_err,
      O => sig_coelsc_interr_reg0
    );
sig_coelsc_interr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_interr_reg0,
      Q => sig_rdc2rsc_calc_err,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_reg_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF15FF00FF00FF00"
    )
        port map (
      I0 => sig_s_ready_out_reg,
      I1 => sig_ld_new_cmd_reg,
      I2 => sig_next_calc_error_reg,
      I3 => \out\,
      I4 => sig_rdc2rsc_valid,
      I5 => sig_rsc2rdc_ready,
      O => sig_coelsc_tag_reg0
    );
sig_coelsc_reg_full_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => sig_s_ready_out_reg,
      I1 => sig_ld_new_cmd_reg,
      I2 => sig_next_calc_error_reg,
      O => sig_push_coelsc_reg
    );
sig_coelsc_reg_full_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => sig_next_calc_error_reg,
      I1 => m_axi_rvalid,
      I2 => m_axi_rlast,
      I3 => sig_next_cmd_cmplt_reg,
      O => sig_cmd_cmplt_last_dbeat
    );
sig_coelsc_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_cmd_cmplt_last_dbeat,
      Q => sig_rdc2rsc_valid,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_slverr_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => sig_rdc2rsc_slverr,
      I1 => m_axi_rresp(0),
      I2 => m_axi_rresp(1),
      O => sig_coelsc_slverr_reg0
    );
sig_coelsc_slverr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_slverr_reg0,
      Q => sig_rdc2rsc_slverr,
      R => sig_coelsc_tag_reg0
    );
\sig_dbeat_cntr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(0),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_dbeat_cntr(0),
      O => p_1_in(0)
    );
\sig_dbeat_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(1),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_dbeat_cntr(1),
      I3 => sig_dbeat_cntr(0),
      O => p_1_in(1)
    );
\sig_dbeat_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(2),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_dbeat_cntr(1),
      I3 => sig_dbeat_cntr(0),
      I4 => sig_dbeat_cntr(2),
      O => p_1_in(2)
    );
\sig_dbeat_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(3),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_dbeat_cntr(2),
      I3 => sig_dbeat_cntr(0),
      I4 => sig_dbeat_cntr(1),
      I5 => sig_dbeat_cntr(3),
      O => p_1_in(3)
    );
\sig_dbeat_cntr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(4),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr[4]_i_2_n_0\,
      I3 => sig_dbeat_cntr(4),
      O => p_1_in(4)
    );
\sig_dbeat_cntr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_dbeat_cntr(0),
      I1 => sig_dbeat_cntr(1),
      I2 => sig_dbeat_cntr(2),
      I3 => sig_dbeat_cntr(3),
      O => \sig_dbeat_cntr[4]_i_2_n_0\
    );
\sig_dbeat_cntr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(5),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr[7]_i_4_n_0\,
      I3 => sig_dbeat_cntr(5),
      O => p_1_in(5)
    );
\sig_dbeat_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(6),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_dbeat_cntr(6),
      I3 => \sig_dbeat_cntr[7]_i_4_n_0\,
      I4 => sig_dbeat_cntr(5),
      O => p_1_in(6)
    );
\sig_dbeat_cntr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444FFFF44444444"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg_i_4_n_0,
      I1 => sig_dqual_reg_empty,
      I2 => sig_last_dbeat_reg_n_0,
      I3 => sig_next_sequential_reg,
      I4 => \sig_dbeat_cntr[7]_i_3_n_0\,
      I5 => sig_s_ready_out_reg,
      O => \sig_dbeat_cntr[7]_i_1_n_0\
    );
\sig_dbeat_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(7),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_dbeat_cntr(7),
      I3 => \sig_dbeat_cntr[7]_i_4_n_0\,
      I4 => sig_dbeat_cntr(6),
      I5 => sig_dbeat_cntr(5),
      O => p_1_in(7)
    );
\sig_dbeat_cntr[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \sig_dbeat_cntr[4]_i_2_n_0\,
      I1 => sig_dbeat_cntr(4),
      I2 => sig_dbeat_cntr(7),
      I3 => sig_dbeat_cntr(6),
      I4 => sig_dbeat_cntr(5),
      O => \sig_dbeat_cntr[7]_i_3_n_0\
    );
\sig_dbeat_cntr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_dbeat_cntr(4),
      I1 => sig_dbeat_cntr(3),
      I2 => sig_dbeat_cntr(2),
      I3 => sig_dbeat_cntr(1),
      I4 => sig_dbeat_cntr(0),
      O => \sig_dbeat_cntr[7]_i_4_n_0\
    );
\sig_dbeat_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => sig_dbeat_cntr(0),
      R => \out\
    );
\sig_dbeat_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => sig_dbeat_cntr(1),
      R => \out\
    );
\sig_dbeat_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => sig_dbeat_cntr(2),
      R => \out\
    );
\sig_dbeat_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => sig_dbeat_cntr(3),
      R => \out\
    );
\sig_dbeat_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => sig_dbeat_cntr(4),
      R => \out\
    );
\sig_dbeat_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => sig_dbeat_cntr(5),
      R => \out\
    );
\sig_dbeat_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => sig_dbeat_cntr(6),
      R => \out\
    );
\sig_dbeat_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => sig_dbeat_cntr(7),
      R => \out\
    );
sig_dqual_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => '0',
      Q => sig_dqual_reg_empty,
      S => sig_clr_dqual_reg
    );
sig_dqual_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => \^sig_rdc2pcc_cmd_ready\,
      Q => sig_dqual_reg_full,
      R => sig_clr_dqual_reg
    );
sig_last_dbeat_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E200FF00E20000"
    )
        port map (
      I0 => sig_last_dbeat_i_2_n_0,
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \sig_xfer_len_reg_reg[2]\,
      I3 => \out\,
      I4 => \sig_dbeat_cntr[7]_i_1_n_0\,
      I5 => sig_last_dbeat_reg_n_0,
      O => sig_last_dbeat_i_1_n_0
    );
sig_last_dbeat_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => sig_s_ready_out_reg,
      I1 => sig_dbeat_cntr(2),
      I2 => sig_dbeat_cntr(3),
      I3 => sig_dbeat_cntr(0),
      I4 => sig_dbeat_cntr(1),
      I5 => sig_last_dbeat_i_4_n_0,
      O => sig_last_dbeat_i_2_n_0
    );
sig_last_dbeat_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_dbeat_cntr(5),
      I1 => sig_dbeat_cntr(6),
      I2 => sig_dbeat_cntr(7),
      I3 => sig_dbeat_cntr(4),
      O => sig_last_dbeat_i_4_n_0
    );
sig_last_dbeat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_last_dbeat_i_1_n_0,
      Q => sig_last_dbeat_reg_n_0,
      R => '0'
    );
sig_last_mmap_dbeat_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^sig_next_eof_reg_reg_0\,
      I1 => sig_s_ready_out_reg_0,
      I2 => m_axi_rlast,
      I3 => m_axi_rvalid,
      O => sig_last_mmap_dbeat
    );
sig_last_mmap_dbeat_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_last_mmap_dbeat,
      Q => sig_rd2llink_xfer_cmplt,
      R => \out\
    );
sig_last_skid_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^sig_next_eof_reg\,
      I1 => m_axi_rlast,
      I2 => m_axi_rvalid,
      O => sig_rdc2rdskid_tlast
    );
sig_ld_new_cmd_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \out\,
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => sig_ld_new_cmd_reg,
      O => sig_ld_new_cmd_reg_i_1_n_0
    );
sig_ld_new_cmd_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_ld_new_cmd_reg_i_1_n_0,
      Q => sig_ld_new_cmd_reg,
      R => '0'
    );
sig_m_valid_dup_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sig_next_eof_reg_reg_0\,
      I1 => m_axi_rvalid,
      O => sig_s_ready_dup_reg
    );
sig_next_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_calc_error,
      Q => sig_next_calc_error_reg,
      R => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \out\,
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \^sig_next_eof_reg_reg_0\,
      I3 => sig_s_ready_out_reg_0,
      I4 => m_axi_rlast,
      I5 => m_axi_rvalid,
      O => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => sig_s_ready_out_reg,
      I1 => sig_next_sequential_reg,
      I2 => sig_last_dbeat_reg_n_0,
      I3 => sig_dqual_reg_empty,
      I4 => sig_next_cmd_cmplt_reg_i_4_n_0,
      O => \^sig_rdc2pcc_cmd_ready\
    );
sig_next_cmd_cmplt_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFFFFFFFBFF"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg_i_5_n_0,
      I1 => sig_cmd2all_doing_read,
      I2 => sig_next_calc_error_reg,
      I3 => sig_pcc2data_cmd_valid,
      I4 => sig_rsc2stat_status_valid,
      I5 => sig_status_reg_empty,
      O => sig_next_cmd_cmplt_reg_i_4_n_0
    );
sig_next_cmd_cmplt_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(0),
      I2 => sig_addr_posted_cntr(1),
      O => sig_next_cmd_cmplt_reg_i_5_n_0
    );
sig_next_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_cmd_cmplt,
      Q => sig_next_cmd_cmplt_reg,
      R => sig_clr_dqual_reg
    );
sig_next_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_eof,
      Q => \^sig_next_eof_reg\,
      R => sig_clr_dqual_reg
    );
sig_next_sequential_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_sequential,
      Q => sig_next_sequential_reg,
      R => sig_clr_dqual_reg
    );
sig_rd_sts_decerr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_decerr,
      I1 => sig_rsc2stat_status(0),
      O => sig_rd_sts_decerr_reg0
    );
sig_rd_sts_interr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_calc_err,
      I1 => sig_rd_sts_interr_reg_reg(0),
      O => sig_rd_sts_interr_reg0
    );
sig_rd_sts_reg_full_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_rdc2rsc_valid,
      I1 => sig_rsc2rdc_ready,
      O => sig_push_rd_sts_reg
    );
sig_rd_sts_slverr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_slverr,
      I1 => sig_rsc2stat_status(1),
      O => sig_rd_sts_slverr_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_reset is
  port (
    \out\ : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[0]\ : out STD_LOGIC;
    sig_rd_error_reg_reg : out STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    scndry_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_reset : entity is "axi_master_burst_reset";
end system_axi_tft_0_0_axi_master_burst_reset;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_reset is
  signal \sig_axi_por2rst__0\ : STD_LOGIC;
  signal sig_axi_por2rst_out : STD_LOGIC;
  signal sig_axi_por2rst_out_i_2_n_0 : STD_LOGIC;
  signal sig_axi_por_reg1 : STD_LOGIC;
  signal sig_axi_por_reg2 : STD_LOGIC;
  signal sig_axi_por_reg3 : STD_LOGIC;
  signal sig_axi_por_reg4 : STD_LOGIC;
  signal sig_axi_por_reg5 : STD_LOGIC;
  signal sig_axi_por_reg6 : STD_LOGIC;
  signal sig_axi_por_reg7 : STD_LOGIC;
  signal sig_axi_por_reg8 : STD_LOGIC;
  signal sig_cmd_reset_reg : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_cmd_reset_reg : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_cmd_reset_reg : signal is "no";
  signal sig_cmd_reset_reg_i_1_n_0 : STD_LOGIC;
  signal sig_llink_reset_reg : STD_LOGIC;
  attribute RTL_KEEP of sig_llink_reset_reg : signal is "true";
  attribute equivalent_register_removal of sig_llink_reset_reg : signal is "no";
  signal sig_rdwr_reset_reg : STD_LOGIC;
  attribute RTL_KEEP of sig_rdwr_reset_reg : signal is "true";
  attribute equivalent_register_removal of sig_rdwr_reset_reg : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_cmd_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_cmd_reset_reg_reg : label is "no";
  attribute KEEP of sig_llink_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_llink_reset_reg_reg : label is "no";
  attribute KEEP of sig_rdwr_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_rdwr_reset_reg_reg : label is "no";
begin
  \INFERRED_GEN.cnt_i_reg[0]\ <= sig_rdwr_reset_reg;
  \out\ <= sig_cmd_reset_reg;
  sig_rd_error_reg_reg <= sig_llink_reset_reg;
sig_axi_por2rst_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => sig_axi_por_reg4,
      I1 => sig_axi_por_reg5,
      I2 => sig_axi_por_reg3,
      I3 => sig_axi_por_reg2,
      I4 => sig_axi_por2rst_out_i_2_n_0,
      O => \sig_axi_por2rst__0\
    );
sig_axi_por2rst_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => sig_axi_por_reg7,
      I1 => sig_axi_por_reg6,
      I2 => sig_axi_por_reg1,
      I3 => sig_axi_por_reg8,
      O => sig_axi_por2rst_out_i_2_n_0
    );
sig_axi_por2rst_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_axi_por2rst__0\,
      Q => sig_axi_por2rst_out,
      R => '0'
    );
sig_axi_por_reg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => sig_axi_por_reg1,
      R => '0'
    );
sig_axi_por_reg2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg1,
      Q => sig_axi_por_reg2,
      R => '0'
    );
sig_axi_por_reg3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg2,
      Q => sig_axi_por_reg3,
      R => '0'
    );
sig_axi_por_reg4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg3,
      Q => sig_axi_por_reg4,
      R => '0'
    );
sig_axi_por_reg5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg4,
      Q => sig_axi_por_reg5,
      R => '0'
    );
sig_axi_por_reg6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg5,
      Q => sig_axi_por_reg6,
      R => '0'
    );
sig_axi_por_reg7_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg6,
      Q => sig_axi_por_reg7,
      R => '0'
    );
sig_axi_por_reg8_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg7,
      Q => sig_axi_por_reg8,
      R => '0'
    );
sig_cmd_reset_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => sig_axi_por2rst_out,
      I1 => m_axi_aresetn,
      I2 => scndry_out,
      O => sig_cmd_reset_reg_i_1_n_0
    );
sig_cmd_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_reset_reg_i_1_n_0,
      Q => sig_cmd_reset_reg,
      R => '0'
    );
sig_llink_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_reset_reg_i_1_n_0,
      Q => sig_llink_reset_reg,
      R => '0'
    );
sig_rdwr_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_reset_reg_i_1_n_0,
      Q => sig_rdwr_reset_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_skid2mm_buf is
  port (
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_skid2mm_buf : entity is "axi_master_burst_skid2mm_buf";
end system_axi_tft_0_0_axi_master_burst_skid2mm_buf;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_skid2mm_buf is
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal \sig_m_valid_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  signal \sig_strb_reg_out[3]_i_1_n_0\ : STD_LOGIC;
  signal sig_strb_skid_reg : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  m_axi_wstrb(0) <= \^m_axi_wstrb\(0);
  m_axi_wvalid <= sig_m_valid_out;
\sig_m_valid_dup_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01110000"
    )
        port map (
      I0 => sig_init_reg,
      I1 => \out\,
      I2 => m_axi_wready,
      I3 => sig_s_ready_dup,
      I4 => sig_m_valid_dup,
      O => \sig_m_valid_dup_i_1__0_n_0\
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => m_axi_wready,
      I2 => sig_init_reg,
      O => \sig_s_ready_dup_i_1__0_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_dup,
      R => \out\
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_out,
      R => \out\
    );
\sig_strb_reg_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEE0EE"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => sig_strb_skid_reg(3),
      I2 => m_axi_wready,
      I3 => sig_m_valid_dup,
      I4 => \^m_axi_wstrb\(0),
      O => \sig_strb_reg_out[3]_i_1_n_0\
    );
\sig_strb_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_strb_reg_out[3]_i_1_n_0\,
      Q => \^m_axi_wstrb\(0),
      R => \out\
    );
\sig_strb_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => '1',
      Q => sig_strb_skid_reg(3),
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_skid_buf is
  port (
    sig_m_valid_out_reg_0 : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    sig_llink_busy_reg : out STD_LOGIC;
    sig_rd2llink_strm_tlast : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \sig_dbeat_cntr_reg[0]\ : out STD_LOGIC;
    \AXI_BRAM_data_i_reg[40]\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_aclk : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_rdc2rdskid_tlast : in STD_LOGIC;
    \sig_addr_posted_cntr_reg[1]\ : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy_reg : in STD_LOGIC;
    \sig_addr_posted_cntr_reg[1]_0\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 17 downto 0 );
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    sig_next_eof_reg : in STD_LOGIC;
    sig_llink_busy_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_skid_buf : entity is "axi_master_burst_skid_buf";
end system_axi_tft_0_0_axi_master_burst_skid_buf;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_skid_buf is
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 23 downto 2 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 23 downto 2 );
  signal sig_last_reg_out_i_1_n_0 : STD_LOGIC;
  signal sig_last_reg_out_i_2_n_0 : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal sig_m_valid_dup_i_1_n_0 : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal \^sig_rd2llink_strm_tlast\ : STD_LOGIC;
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal sig_s_ready_dup_i_1_n_0 : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  \out\ <= sig_s_ready_out;
  sig_llink_busy_reg <= sig_m_valid_out;
  sig_m_valid_out_reg_0 <= sig_m_valid_dup;
  sig_rd2llink_strm_tlast <= \^sig_rd2llink_strm_tlast\;
m_axi_rready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_s_ready_out,
      I1 => \sig_addr_posted_cntr_reg[1]\,
      O => m_axi_rready
    );
\sig_data_reg_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(10),
      Q => \AXI_BRAM_data_i_reg[40]\(6),
      R => '0'
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(11),
      Q => \AXI_BRAM_data_i_reg[40]\(7),
      R => '0'
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(12),
      Q => \AXI_BRAM_data_i_reg[40]\(8),
      R => '0'
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(13),
      Q => \AXI_BRAM_data_i_reg[40]\(9),
      R => '0'
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(14),
      Q => \AXI_BRAM_data_i_reg[40]\(10),
      R => '0'
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(15),
      Q => \AXI_BRAM_data_i_reg[40]\(11),
      R => '0'
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(18),
      Q => \AXI_BRAM_data_i_reg[40]\(12),
      R => '0'
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(19),
      Q => \AXI_BRAM_data_i_reg[40]\(13),
      R => '0'
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(20),
      Q => \AXI_BRAM_data_i_reg[40]\(14),
      R => '0'
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(21),
      Q => \AXI_BRAM_data_i_reg[40]\(15),
      R => '0'
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(22),
      Q => \AXI_BRAM_data_i_reg[40]\(16),
      R => '0'
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(23),
      Q => \AXI_BRAM_data_i_reg[40]\(17),
      R => '0'
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(2),
      Q => \AXI_BRAM_data_i_reg[40]\(0),
      R => '0'
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(3),
      Q => \AXI_BRAM_data_i_reg[40]\(1),
      R => '0'
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(4),
      Q => \AXI_BRAM_data_i_reg[40]\(2),
      R => '0'
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(5),
      Q => \AXI_BRAM_data_i_reg[40]\(3),
      R => '0'
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(6),
      Q => \AXI_BRAM_data_i_reg[40]\(4),
      R => '0'
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg_0(0),
      D => sig_data_skid_mux_out(7),
      Q => \AXI_BRAM_data_i_reg[40]\(5),
      R => '0'
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(6),
      Q => sig_data_skid_reg(10),
      R => '0'
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(7),
      Q => sig_data_skid_reg(11),
      R => '0'
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(8),
      Q => sig_data_skid_reg(12),
      R => '0'
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(9),
      Q => sig_data_skid_reg(13),
      R => '0'
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(10),
      Q => sig_data_skid_reg(14),
      R => '0'
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(11),
      Q => sig_data_skid_reg(15),
      R => '0'
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(12),
      Q => sig_data_skid_reg(18),
      R => '0'
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(13),
      Q => sig_data_skid_reg(19),
      R => '0'
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(14),
      Q => sig_data_skid_reg(20),
      R => '0'
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(15),
      Q => sig_data_skid_reg(21),
      R => '0'
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(16),
      Q => sig_data_skid_reg(22),
      R => '0'
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(17),
      Q => sig_data_skid_reg(23),
      R => '0'
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(0),
      Q => sig_data_skid_reg(2),
      R => '0'
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(1),
      Q => sig_data_skid_reg(3),
      R => '0'
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(2),
      Q => sig_data_skid_reg(4),
      R => '0'
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(3),
      Q => sig_data_skid_reg(5),
      R => '0'
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(4),
      Q => sig_data_skid_reg(6),
      R => '0'
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(5),
      Q => sig_data_skid_reg(7),
      R => '0'
    );
sig_last_reg_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => sig_next_eof_reg,
      I1 => sig_last_reg_out_i_2_n_0,
      I2 => sig_s_ready_dup,
      I3 => sig_last_skid_reg,
      I4 => sig_llink_busy_reg_0(0),
      I5 => \^sig_rd2llink_strm_tlast\,
      O => sig_last_reg_out_i_1_n_0
    );
sig_last_reg_out_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => m_axi_rlast,
      O => sig_last_reg_out_i_2_n_0
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_last_reg_out_i_1_n_0,
      Q => \^sig_rd2llink_strm_tlast\,
      R => sig_rdwr_reset_reg_reg
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => sig_rdc2rdskid_tlast,
      Q => sig_last_skid_reg,
      R => sig_rdwr_reset_reg_reg
    );
sig_m_valid_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010101011111111"
    )
        port map (
      I0 => sig_init_reg,
      I1 => sig_rdwr_reset_reg_reg,
      I2 => sig_m_valid_dup,
      I3 => sig_s_ready_dup,
      I4 => IP2Bus_MstRd_dst_rdy_reg,
      I5 => \sig_addr_posted_cntr_reg[1]_0\,
      O => sig_m_valid_dup_i_1_n_0
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_out,
      R => '0'
    );
sig_next_cmd_cmplt_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sig_s_ready_out,
      I1 => m_axi_rvalid,
      I2 => \sig_addr_posted_cntr_reg[1]\,
      O => \sig_dbeat_cntr_reg[0]\
    );
sig_s_ready_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFF8F8F8FFF8"
    )
        port map (
      I0 => IP2Bus_MstRd_dst_rdy,
      I1 => sig_llink2cmd_rd_busy,
      I2 => sig_init_reg,
      I3 => sig_s_ready_dup,
      I4 => sig_m_valid_dup,
      I5 => \sig_addr_posted_cntr_reg[1]_0\,
      O => sig_s_ready_dup_i_1_n_0
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_dup,
      R => sig_rdwr_reset_reg_reg
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_out,
      R => sig_rdwr_reset_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_skid_buf_8 is
  port (
    m_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_init_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_skid_buf_8 : entity is "axi_master_burst_skid_buf";
end system_axi_tft_0_0_axi_master_burst_skid_buf_8;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_skid_buf_8 is
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal \sig_m_valid_dup_i_1__1_n_0\ : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__1_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
\sig_m_valid_dup_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sig_m_valid_dup,
      I1 => sig_init_reg,
      I2 => \out\,
      O => \sig_m_valid_dup_i_1__1_n_0\
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__1_n_0\,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__1_n_0\,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => sig_init_reg,
      O => \sig_s_ready_dup_i_1__1_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_dup,
      R => \out\
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_out,
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_tft_v2_0_19_h_sync is
  port (
    vsync_rst : out STD_LOGIC;
    get_line_start : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RED_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DE_i : out STD_LOGIC;
    HSYNC_i : out STD_LOGIC;
    clk_ce_pos0 : out STD_LOGIC;
    clk_ce_neg0 : out STD_LOGIC;
    clk_stb_d1_reg : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_rst : in STD_LOGIC;
    v_bp_cnt_tc : in STD_LOGIC;
    v_l_cnt_tc : in STD_LOGIC;
    \VSYNC_cs_reg[3]\ : in STD_LOGIC;
    clk_stb_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_tft_v2_0_19_h_sync : entity is "axi_tft_v2_0_19_h_sync";
end system_axi_tft_0_0_axi_tft_v2_0_19_h_sync;

architecture STRUCTURE of system_axi_tft_0_0_axi_tft_v2_0_19_h_sync is
  signal \BRAM_TFT_addr[0]_i_3_n_0\ : STD_LOGIC;
  signal HSYNC_cs : STD_LOGIC_VECTOR ( 0 to 4 );
  signal HSYNC_ns : STD_LOGIC_VECTOR ( 0 to 4 );
  signal \HSYNC_ns_inferred__3/i__n_0\ : STD_LOGIC;
  signal H_bp_cnt_tc2_i_1_n_0 : STD_LOGIC;
  signal H_bp_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal H_bp_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_3_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_4_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_5_n_0 : STD_LOGIC;
  signal \RED[5]_i_2_n_0\ : STD_LOGIC;
  signal h_bp_cnt : STD_LOGIC_VECTOR ( 5 to 5 );
  signal h_bp_cnt1 : STD_LOGIC;
  signal \h_bp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal h_bp_cnt_tc : STD_LOGIC;
  signal h_bp_cnt_tc2 : STD_LOGIC;
  signal h_fp_cnt : STD_LOGIC_VECTOR ( 0 to 3 );
  signal h_fp_cnt0 : STD_LOGIC;
  signal \h_fp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_fp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_fp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_fp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal h_fp_cnt_tc : STD_LOGIC;
  signal h_fp_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal h_p_cnt : STD_LOGIC_VECTOR ( 0 to 6 );
  signal h_p_cnt0 : STD_LOGIC;
  signal \h_p_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal h_p_cnt_0 : STD_LOGIC_VECTOR ( 0 to 6 );
  signal h_p_cnt_tc : STD_LOGIC;
  signal h_p_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal h_p_cnt_tc_reg_n_0 : STD_LOGIC;
  signal h_pix_cnt : STD_LOGIC_VECTOR ( 0 to 10 );
  signal h_pix_cnt0 : STD_LOGIC;
  signal \h_pix_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal h_pix_cnt_tc : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FDS_HSYNC_i_2 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \HSYNC_ns_inferred__3/i_\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of H_bp_cnt_tc_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of H_pix_cnt_tc_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \RED[5]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of clk_stb_d1_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \h_bp_cnt[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \h_bp_cnt[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \h_bp_cnt[5]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \h_fp_cnt[0]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \h_fp_cnt[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \h_fp_cnt[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of h_fp_cnt_tc_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \h_p_cnt[0]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \h_p_cnt[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \h_p_cnt[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \h_p_cnt[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \h_p_cnt[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of h_p_cnt_tc_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \h_pix_cnt[10]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \h_pix_cnt[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \h_pix_cnt[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \h_pix_cnt[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \h_pix_cnt[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \h_pix_cnt[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \h_pix_cnt[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \h_pix_cnt[8]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \h_pix_cnt[9]_i_1\ : label is "soft_lutpair31";
begin
\BRAM_TFT_addr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEFEFFE"
    )
        port map (
      I0 => \VSYNC_cs_reg[3]\,
      I1 => tft_rst,
      I2 => h_bp_cnt_tc,
      I3 => \BRAM_TFT_addr[0]_i_3_n_0\,
      I4 => h_bp_cnt_tc2,
      O => SR(0)
    );
\BRAM_TFT_addr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => HSYNC_cs(3),
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(0),
      I3 => HSYNC_cs(2),
      I4 => HSYNC_cs(1),
      I5 => \VSYNC_cs_reg[3]\,
      O => \BRAM_TFT_addr[0]_i_3_n_0\
    );
FDR_DE_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \VSYNC_cs_reg[3]\,
      I1 => HSYNC_cs(1),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(0),
      I4 => HSYNC_cs(4),
      I5 => HSYNC_cs(3),
      O => DE_i
    );
FDS_HSYNC_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => HSYNC_cs(1),
      I1 => HSYNC_cs(2),
      I2 => HSYNC_cs(4),
      I3 => HSYNC_cs(0),
      I4 => HSYNC_cs(3),
      O => HSYNC_i
    );
\HSYNC_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8080"
    )
        port map (
      I0 => \HSYNC_ns_inferred__3/i__n_0\,
      I1 => h_pix_cnt_tc,
      I2 => HSYNC_cs(1),
      I3 => h_fp_cnt_tc,
      I4 => HSYNC_cs(0),
      O => HSYNC_ns(0)
    );
\HSYNC_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8080"
    )
        port map (
      I0 => \HSYNC_ns_inferred__3/i__n_0\,
      I1 => h_bp_cnt_tc,
      I2 => HSYNC_cs(2),
      I3 => h_pix_cnt_tc,
      I4 => HSYNC_cs(1),
      O => HSYNC_ns(1)
    );
\HSYNC_cs[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8080"
    )
        port map (
      I0 => \HSYNC_ns_inferred__3/i__n_0\,
      I1 => h_p_cnt_tc_reg_n_0,
      I2 => HSYNC_cs(3),
      I3 => h_bp_cnt_tc,
      I4 => HSYNC_cs(2),
      O => HSYNC_ns(2)
    );
\HSYNC_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888AAAAA888A888"
    )
        port map (
      I0 => \HSYNC_ns_inferred__3/i__n_0\,
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(0),
      I3 => h_fp_cnt_tc,
      I4 => h_p_cnt_tc_reg_n_0,
      I5 => HSYNC_cs(3),
      O => HSYNC_ns(3)
    );
\HSYNC_cs[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \HSYNC_ns_inferred__3/i__n_0\,
      O => HSYNC_ns(4)
    );
\HSYNC_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => HSYNC_ns(0),
      Q => HSYNC_cs(0),
      R => tft_rst
    );
\HSYNC_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => HSYNC_ns(1),
      Q => HSYNC_cs(1),
      R => tft_rst
    );
\HSYNC_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => HSYNC_ns(2),
      Q => HSYNC_cs(2),
      R => tft_rst
    );
\HSYNC_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => HSYNC_ns(3),
      Q => HSYNC_cs(3),
      R => tft_rst
    );
\HSYNC_cs_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => HSYNC_ns(4),
      Q => HSYNC_cs(4),
      S => tft_rst
    );
\HSYNC_ns_inferred__3/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => HSYNC_cs(4),
      I1 => HSYNC_cs(3),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(0),
      O => \HSYNC_ns_inferred__3/i__n_0\
    );
H_bp_cnt_tc2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[1]\,
      I1 => \h_bp_cnt_reg_n_0_[3]\,
      I2 => \h_bp_cnt_reg_n_0_[5]\,
      I3 => \h_bp_cnt_reg_n_0_[2]\,
      I4 => \h_bp_cnt_reg_n_0_[4]\,
      I5 => \h_bp_cnt_reg_n_0_[0]\,
      O => H_bp_cnt_tc2_i_1_n_0
    );
H_bp_cnt_tc2_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => H_bp_cnt_tc2_i_1_n_0,
      Q => h_bp_cnt_tc2,
      R => h_bp_cnt1
    );
H_bp_cnt_tc_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => H_bp_cnt_tc_i_2_n_0,
      I1 => h_bp_cnt(5),
      O => H_bp_cnt_tc_i_1_n_0
    );
H_bp_cnt_tc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => HSYNC_cs(0),
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(3),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(2),
      I5 => tft_rst,
      O => H_bp_cnt_tc_i_2_n_0
    );
H_bp_cnt_tc_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[1]\,
      I1 => \h_bp_cnt_reg_n_0_[3]\,
      I2 => \h_bp_cnt_reg_n_0_[4]\,
      I3 => \h_bp_cnt_reg_n_0_[2]\,
      I4 => \h_bp_cnt_reg_n_0_[5]\,
      I5 => \h_bp_cnt_reg_n_0_[0]\,
      O => h_bp_cnt(5)
    );
H_bp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => H_bp_cnt_tc_i_1_n_0,
      Q => h_bp_cnt_tc,
      R => '0'
    );
H_pix_cnt_tc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAA8A"
    )
        port map (
      I0 => H_pix_cnt_tc_i_2_n_0,
      I1 => H_pix_cnt_tc_i_3_n_0,
      I2 => h_pix_cnt(10),
      I3 => h_pix_cnt(9),
      I4 => h_pix_cnt_tc,
      O => H_pix_cnt_tc_i_1_n_0
    );
H_pix_cnt_tc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => h_pix_cnt(0),
      I1 => h_pix_cnt(1),
      I2 => h_pix_cnt(8),
      I3 => h_pix_cnt(9),
      I4 => h_pix_cnt(10),
      I5 => H_pix_cnt_tc_i_4_n_0,
      O => H_pix_cnt_tc_i_2_n_0
    );
H_pix_cnt_tc_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => h_pix_cnt(7),
      I1 => h_pix_cnt(8),
      I2 => h_pix_cnt(6),
      I3 => h_pix_cnt(5),
      I4 => H_pix_cnt_tc_i_5_n_0,
      O => H_pix_cnt_tc_i_3_n_0
    );
H_pix_cnt_tc_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => h_pix_cnt(5),
      I1 => h_pix_cnt(4),
      I2 => h_pix_cnt(7),
      I3 => h_pix_cnt(6),
      I4 => h_pix_cnt(2),
      I5 => h_pix_cnt(3),
      O => H_pix_cnt_tc_i_4_n_0
    );
H_pix_cnt_tc_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => h_pix_cnt(4),
      I1 => h_pix_cnt(3),
      I2 => h_pix_cnt(0),
      I3 => h_pix_cnt(1),
      I4 => h_pix_cnt(2),
      O => H_pix_cnt_tc_i_5_n_0
    );
H_pix_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => H_pix_cnt_tc_i_1_n_0,
      Q => h_pix_cnt_tc,
      R => h_pix_cnt0
    );
\RED[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF20DF"
    )
        port map (
      I0 => \RED[5]_i_2_n_0\,
      I1 => HSYNC_cs(2),
      I2 => HSYNC_cs(1),
      I3 => h_bp_cnt_tc,
      I4 => \VSYNC_cs_reg[3]\,
      I5 => tft_rst,
      O => \RED_reg[5]\(0)
    );
\RED[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => HSYNC_cs(3),
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(0),
      O => \RED[5]_i_2_n_0\
    );
VSYNC_Rst_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => tft_rst,
      Q => vsync_rst,
      R => '0'
    );
clk_ce_neg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => clk_stb_d1,
      I1 => HSYNC_cs(1),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(4),
      I4 => HSYNC_cs(0),
      I5 => HSYNC_cs(3),
      O => clk_ce_neg0
    );
clk_ce_pos_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => HSYNC_cs(1),
      I1 => HSYNC_cs(2),
      I2 => HSYNC_cs(4),
      I3 => HSYNC_cs(0),
      I4 => HSYNC_cs(3),
      I5 => clk_stb_d1,
      O => clk_ce_pos0
    );
clk_stb_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => HSYNC_cs(3),
      I1 => HSYNC_cs(0),
      I2 => HSYNC_cs(4),
      I3 => HSYNC_cs(2),
      I4 => HSYNC_cs(1),
      O => clk_stb_d1_reg
    );
get_line_start_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888A"
    )
        port map (
      I0 => h_pix_cnt_tc,
      I1 => v_bp_cnt_tc,
      I2 => v_l_cnt_tc,
      I3 => \BRAM_TFT_addr[0]_i_3_n_0\,
      O => get_line_start
    );
\h_bp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => tft_rst,
      I1 => HSYNC_cs(2),
      I2 => HSYNC_cs(1),
      I3 => HSYNC_cs(3),
      I4 => HSYNC_cs(4),
      I5 => HSYNC_cs(0),
      O => h_bp_cnt1
    );
\h_bp_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[1]\,
      I1 => \h_bp_cnt_reg_n_0_[3]\,
      I2 => \h_bp_cnt_reg_n_0_[4]\,
      I3 => \h_bp_cnt_reg_n_0_[2]\,
      I4 => \h_bp_cnt_reg_n_0_[5]\,
      I5 => \h_bp_cnt_reg_n_0_[0]\,
      O => \h_bp_cnt[0]_i_2_n_0\
    );
\h_bp_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => H_bp_cnt_tc_i_2_n_0,
      I1 => \h_bp_cnt_reg_n_0_[2]\,
      I2 => \h_bp_cnt_reg_n_0_[5]\,
      I3 => \h_bp_cnt_reg_n_0_[4]\,
      I4 => \h_bp_cnt_reg_n_0_[3]\,
      I5 => \h_bp_cnt_reg_n_0_[1]\,
      O => \h_bp_cnt[1]_i_1_n_0\
    );
\h_bp_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78F0"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[3]\,
      I1 => \h_bp_cnt_reg_n_0_[4]\,
      I2 => \h_bp_cnt_reg_n_0_[2]\,
      I3 => \h_bp_cnt_reg_n_0_[5]\,
      O => \h_bp_cnt[2]_i_1_n_0\
    );
\h_bp_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[3]\,
      I1 => \h_bp_cnt_reg_n_0_[4]\,
      I2 => \h_bp_cnt_reg_n_0_[5]\,
      O => \h_bp_cnt[3]_i_1_n_0\
    );
\h_bp_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[4]\,
      I1 => \h_bp_cnt_reg_n_0_[5]\,
      O => \h_bp_cnt[4]_i_1_n_0\
    );
\h_bp_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => H_bp_cnt_tc_i_2_n_0,
      I1 => \h_bp_cnt_reg_n_0_[5]\,
      O => \h_bp_cnt[5]_i_1_n_0\
    );
\h_bp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[0]_i_2_n_0\,
      Q => \h_bp_cnt_reg_n_0_[0]\,
      R => h_bp_cnt1
    );
\h_bp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[1]_i_1_n_0\,
      Q => \h_bp_cnt_reg_n_0_[1]\,
      R => '0'
    );
\h_bp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[2]_i_1_n_0\,
      Q => \h_bp_cnt_reg_n_0_[2]\,
      R => h_bp_cnt1
    );
\h_bp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[3]_i_1_n_0\,
      Q => \h_bp_cnt_reg_n_0_[3]\,
      R => h_bp_cnt1
    );
\h_bp_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[4]_i_1_n_0\,
      Q => \h_bp_cnt_reg_n_0_[4]\,
      R => h_bp_cnt1
    );
\h_bp_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[5]_i_1_n_0\,
      Q => \h_bp_cnt_reg_n_0_[5]\,
      R => '0'
    );
\h_fp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABABBE"
    )
        port map (
      I0 => tft_rst,
      I1 => HSYNC_cs(1),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(4),
      I4 => HSYNC_cs(3),
      I5 => HSYNC_cs(0),
      O => h_fp_cnt0
    );
\h_fp_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => h_fp_cnt(2),
      I1 => h_fp_cnt(0),
      I2 => h_fp_cnt(3),
      I3 => h_fp_cnt(1),
      O => \h_fp_cnt[0]_i_2_n_0\
    );
\h_fp_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_fp_cnt(2),
      I1 => h_fp_cnt(3),
      I2 => h_fp_cnt(1),
      O => \h_fp_cnt[1]_i_1_n_0\
    );
\h_fp_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_fp_cnt(2),
      I1 => h_fp_cnt(3),
      O => \h_fp_cnt[2]_i_1_n_0\
    );
\h_fp_cnt[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_fp_cnt(3),
      O => \h_fp_cnt[3]_i_1_n_0\
    );
\h_fp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[0]_i_2_n_0\,
      Q => h_fp_cnt(0),
      R => h_fp_cnt0
    );
\h_fp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[1]_i_1_n_0\,
      Q => h_fp_cnt(1),
      R => h_fp_cnt0
    );
\h_fp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[2]_i_1_n_0\,
      Q => h_fp_cnt(2),
      R => h_fp_cnt0
    );
\h_fp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[3]_i_1_n_0\,
      Q => h_fp_cnt(3),
      R => h_fp_cnt0
    );
h_fp_cnt_tc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => h_fp_cnt(1),
      I1 => h_fp_cnt(3),
      I2 => h_fp_cnt(0),
      I3 => h_fp_cnt(2),
      O => h_fp_cnt_tc_i_1_n_0
    );
h_fp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_fp_cnt_tc_i_1_n_0,
      Q => h_fp_cnt_tc,
      R => h_fp_cnt0
    );
\h_p_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => tft_rst,
      I1 => HSYNC_cs(1),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(4),
      I4 => HSYNC_cs(0),
      I5 => HSYNC_cs(3),
      O => h_p_cnt0
    );
\h_p_cnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => h_p_cnt(1),
      I1 => \h_p_cnt[0]_i_3_n_0\,
      I2 => h_p_cnt(0),
      O => h_p_cnt_0(0)
    );
\h_p_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => h_p_cnt(3),
      I1 => h_p_cnt(5),
      I2 => h_p_cnt(6),
      I3 => h_p_cnt(4),
      I4 => h_p_cnt(2),
      O => \h_p_cnt[0]_i_3_n_0\
    );
\h_p_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_p_cnt(2),
      I1 => h_p_cnt(4),
      I2 => h_p_cnt(6),
      I3 => h_p_cnt(5),
      I4 => h_p_cnt(3),
      I5 => h_p_cnt(1),
      O => h_p_cnt_0(1)
    );
\h_p_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_p_cnt(3),
      I1 => h_p_cnt(5),
      I2 => h_p_cnt(6),
      I3 => h_p_cnt(4),
      I4 => h_p_cnt(2),
      O => h_p_cnt_0(2)
    );
\h_p_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_p_cnt(4),
      I1 => h_p_cnt(6),
      I2 => h_p_cnt(5),
      I3 => h_p_cnt(3),
      O => h_p_cnt_0(3)
    );
\h_p_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_p_cnt(5),
      I1 => h_p_cnt(6),
      I2 => h_p_cnt(4),
      O => h_p_cnt_0(4)
    );
\h_p_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_p_cnt(6),
      I1 => h_p_cnt(5),
      O => h_p_cnt_0(5)
    );
\h_p_cnt[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_p_cnt(6),
      O => h_p_cnt_0(6)
    );
\h_p_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(0),
      Q => h_p_cnt(0),
      R => h_p_cnt0
    );
\h_p_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(1),
      Q => h_p_cnt(1),
      R => h_p_cnt0
    );
\h_p_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(2),
      Q => h_p_cnt(2),
      R => h_p_cnt0
    );
\h_p_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(3),
      Q => h_p_cnt(3),
      R => h_p_cnt0
    );
\h_p_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(4),
      Q => h_p_cnt(4),
      R => h_p_cnt0
    );
\h_p_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(5),
      Q => h_p_cnt(5),
      R => h_p_cnt0
    );
\h_p_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(6),
      Q => h_p_cnt(6),
      R => h_p_cnt0
    );
h_p_cnt_tc_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_p_cnt_tc_i_2_n_0,
      I1 => h_p_cnt(6),
      O => h_p_cnt_tc
    );
h_p_cnt_tc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => h_p_cnt(3),
      I1 => h_p_cnt(2),
      I2 => h_p_cnt(5),
      I3 => h_p_cnt(4),
      I4 => h_p_cnt(1),
      I5 => h_p_cnt(0),
      O => h_p_cnt_tc_i_2_n_0
    );
h_p_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_tc,
      Q => h_p_cnt_tc_reg_n_0,
      R => h_p_cnt0
    );
\h_pix_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => tft_rst,
      I1 => HSYNC_cs(3),
      I2 => HSYNC_cs(4),
      I3 => HSYNC_cs(0),
      I4 => HSYNC_cs(2),
      I5 => HSYNC_cs(1),
      O => h_pix_cnt0
    );
\h_pix_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC6CCCCCCCCCCCCC"
    )
        port map (
      I0 => h_pix_cnt(1),
      I1 => h_pix_cnt(0),
      I2 => h_pix_cnt(3),
      I3 => \h_pix_cnt[0]_i_3_n_0\,
      I4 => h_pix_cnt(4),
      I5 => h_pix_cnt(2),
      O => \h_pix_cnt[0]_i_2_n_0\
    );
\h_pix_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => h_pix_cnt(6),
      I1 => h_pix_cnt(8),
      I2 => h_pix_cnt(10),
      I3 => h_pix_cnt(9),
      I4 => h_pix_cnt(7),
      I5 => h_pix_cnt(5),
      O => \h_pix_cnt[0]_i_3_n_0\
    );
\h_pix_cnt[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_pix_cnt(10),
      O => \h_pix_cnt[10]_i_1_n_0\
    );
\h_pix_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => h_pix_cnt(2),
      I1 => h_pix_cnt(4),
      I2 => \h_pix_cnt[0]_i_3_n_0\,
      I3 => h_pix_cnt(3),
      I4 => h_pix_cnt(1),
      O => \h_pix_cnt[1]_i_1_n_0\
    );
\h_pix_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => h_pix_cnt(3),
      I1 => \h_pix_cnt[0]_i_3_n_0\,
      I2 => h_pix_cnt(4),
      I3 => h_pix_cnt(2),
      O => \h_pix_cnt[2]_i_1_n_0\
    );
\h_pix_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => h_pix_cnt(4),
      I1 => \h_pix_cnt[0]_i_3_n_0\,
      I2 => h_pix_cnt(3),
      O => \h_pix_cnt[3]_i_1_n_0\
    );
\h_pix_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \h_pix_cnt[0]_i_3_n_0\,
      I1 => h_pix_cnt(4),
      O => \h_pix_cnt[4]_i_1_n_0\
    );
\h_pix_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_pix_cnt(6),
      I1 => h_pix_cnt(8),
      I2 => h_pix_cnt(10),
      I3 => h_pix_cnt(9),
      I4 => h_pix_cnt(7),
      I5 => h_pix_cnt(5),
      O => \h_pix_cnt[5]_i_1_n_0\
    );
\h_pix_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_pix_cnt(7),
      I1 => h_pix_cnt(9),
      I2 => h_pix_cnt(10),
      I3 => h_pix_cnt(8),
      I4 => h_pix_cnt(6),
      O => \h_pix_cnt[6]_i_1_n_0\
    );
\h_pix_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_pix_cnt(8),
      I1 => h_pix_cnt(10),
      I2 => h_pix_cnt(9),
      I3 => h_pix_cnt(7),
      O => \h_pix_cnt[7]_i_1_n_0\
    );
\h_pix_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_pix_cnt(9),
      I1 => h_pix_cnt(10),
      I2 => h_pix_cnt(8),
      O => \h_pix_cnt[8]_i_1_n_0\
    );
\h_pix_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_pix_cnt(10),
      I1 => h_pix_cnt(9),
      O => \h_pix_cnt[9]_i_1_n_0\
    );
\h_pix_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[0]_i_2_n_0\,
      Q => h_pix_cnt(0),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[10]_i_1_n_0\,
      Q => h_pix_cnt(10),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[1]_i_1_n_0\,
      Q => h_pix_cnt(1),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[2]_i_1_n_0\,
      Q => h_pix_cnt(2),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[3]_i_1_n_0\,
      Q => h_pix_cnt(3),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[4]_i_1_n_0\,
      Q => h_pix_cnt(4),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[5]_i_1_n_0\,
      Q => h_pix_cnt(5),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[6]_i_1_n_0\,
      Q => h_pix_cnt(6),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[7]_i_1_n_0\,
      Q => h_pix_cnt(7),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[8]_i_1_n_0\,
      Q => h_pix_cnt(8),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[9]_i_1_n_0\,
      Q => h_pix_cnt(9),
      R => h_pix_cnt0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_tft_v2_0_19_slave_register is
  port (
    TFT_iic_xfer : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 26 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    tft_status_d2 : out STD_LOGIC;
    bus2ip_rdce_d2_reg_0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : out STD_LOGIC;
    bus2ip_wrce_d2_reg_0 : out STD_LOGIC;
    bus2ip_wrce_d2 : out STD_LOGIC;
    prmry_in : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    TFT_status_reg : out STD_LOGIC;
    cs_ce_clr : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \IP2Bus_Data_reg[28]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bus2ip_sreset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC;
    tft_status_i : in STD_LOGIC;
    bus2ip_rdce_or : in STD_LOGIC;
    bus2ip_wrce_or : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : in STD_LOGIC;
    \TFT_iic_reg_data_reg[6]_0\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_tft_v2_0_19_slave_register : entity is "axi_tft_v2_0_19_slave_register";
end system_axi_tft_0_0_axi_tft_v2_0_19_slave_register;

architecture STRUCTURE of system_axi_tft_0_0_axi_tft_v2_0_19_slave_register is
  signal \^gen_bkend_ce_registers[3].ce_out_i_reg[3]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal TFT_iic_reg_addr : STD_LOGIC_VECTOR ( 0 to 7 );
  signal TFT_iic_reg_data : STD_LOGIC_VECTOR ( 0 to 5 );
  signal \^bus2ip_rdce_d2_reg_0\ : STD_LOGIC;
  signal \^bus2ip_wrce_d2\ : STD_LOGIC;
  signal \^bus2ip_wrce_d2_reg_0\ : STD_LOGIC;
  signal tft_status_d1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair72";
begin
  \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ <= \^gen_bkend_ce_registers[3].ce_out_i_reg[3]\;
  Q(10 downto 0) <= \^q\(10 downto 0);
  bus2ip_rdce_d2_reg_0 <= \^bus2ip_rdce_d2_reg_0\;
  bus2ip_wrce_d2 <= \^bus2ip_wrce_d2\;
  bus2ip_wrce_d2_reg_0 <= \^bus2ip_wrce_d2_reg_0\;
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F4FFFF"
    )
        port map (
      I0 => \^bus2ip_wrce_d2\,
      I1 => \^bus2ip_wrce_d2_reg_0\,
      I2 => \^bus2ip_rdce_d2_reg_0\,
      I3 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]\,
      I4 => s_axi_aresetn,
      O => cs_ce_clr
    );
\IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg,
      Q => D(26),
      R => bus2ip_sreset
    );
\IP2Bus_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(0),
      Q => D(16),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
\IP2Bus_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(0),
      Q => D(15),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(1),
      Q => D(14),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(2),
      Q => D(13),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(3),
      Q => D(12),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(9),
      Q => D(25),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
\IP2Bus_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(4),
      Q => D(11),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(5),
      Q => D(10),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(6),
      Q => D(9),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_addr(7),
      Q => D(8),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_data(0),
      Q => D(7),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_data(1),
      Q => D(6),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_data(2),
      Q => D(5),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_data(3),
      Q => D(4),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      Q => D(3),
      R => bus2ip_sreset
    );
\IP2Bus_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_reg_data(5),
      Q => D(2),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\
    );
\IP2Bus_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(8),
      Q => D(24),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
\IP2Bus_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \TFT_iic_reg_data_reg[6]_0\,
      Q => D(1),
      R => bus2ip_sreset
    );
\IP2Bus_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      Q => D(0),
      R => bus2ip_sreset
    );
\IP2Bus_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(7),
      Q => D(23),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
\IP2Bus_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(6),
      Q => D(22),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
\IP2Bus_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(5),
      Q => D(21),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
\IP2Bus_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(4),
      Q => D(20),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
\IP2Bus_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(3),
      Q => D(19),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
\IP2Bus_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(2),
      Q => D(18),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
\IP2Bus_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^q\(1),
      Q => D(17),
      R => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\
    );
\TFT_base_addr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      D => s_axi_wdata(26),
      Q => \^q\(10),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      D => s_axi_wdata(16),
      Q => \^q\(0),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      D => s_axi_wdata(25),
      Q => \^q\(9),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      D => s_axi_wdata(24),
      Q => \^q\(8),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      D => s_axi_wdata(23),
      Q => \^q\(7),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      D => s_axi_wdata(22),
      Q => \^q\(6),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      D => s_axi_wdata(21),
      Q => \^q\(5),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      D => s_axi_wdata(20),
      Q => \^q\(4),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      D => s_axi_wdata(19),
      Q => \^q\(3),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      D => s_axi_wdata(18),
      Q => \^q\(2),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      D => s_axi_wdata(17),
      Q => \^q\(1),
      R => bus2ip_sreset
    );
TFT_dps_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\,
      Q => tft_dps,
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(15),
      Q => TFT_iic_reg_addr(0),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(14),
      Q => TFT_iic_reg_addr(1),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(13),
      Q => TFT_iic_reg_addr(2),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(12),
      Q => TFT_iic_reg_addr(3),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(11),
      Q => TFT_iic_reg_addr(4),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(10),
      Q => TFT_iic_reg_addr(5),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(9),
      Q => TFT_iic_reg_addr(6),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(8),
      Q => TFT_iic_reg_addr(7),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(7),
      Q => TFT_iic_reg_data(0),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(6),
      Q => TFT_iic_reg_data(1),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(5),
      Q => TFT_iic_reg_data(2),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(4),
      Q => TFT_iic_reg_data(3),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(3),
      Q => \IP2Bus_Data_reg[28]_0\(2),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(2),
      Q => TFT_iic_reg_data(5),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(1),
      Q => \IP2Bus_Data_reg[28]_0\(1),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(0),
      Q => \IP2Bus_Data_reg[28]_0\(0),
      R => bus2ip_sreset
    );
TFT_iic_xfer_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => s_axi_wdata(26),
      Q => TFT_iic_xfer,
      R => bus2ip_sreset
    );
TFT_intr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      Q => prmry_in,
      R => bus2ip_sreset
    );
TFT_on_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\,
      S => bus2ip_sreset
    );
TFT_status_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\,
      Q => TFT_status_reg,
      R => bus2ip_sreset
    );
bus2ip_rdce_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rdce_or,
      Q => \^bus2ip_rdce_d2_reg_0\,
      R => bus2ip_sreset
    );
bus2ip_rdce_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bus2ip_rdce_d2_reg_0\,
      Q => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]\,
      R => bus2ip_sreset
    );
bus2ip_wrce_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_wrce_or,
      Q => \^bus2ip_wrce_d2_reg_0\,
      R => bus2ip_sreset
    );
bus2ip_wrce_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bus2ip_wrce_d2_reg_0\,
      Q => \^bus2ip_wrce_d2\,
      R => bus2ip_sreset
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus2ip_rdce_d2_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]\,
      O => s_axi_arready
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus2ip_wrce_d2_reg_0\,
      I1 => \^bus2ip_wrce_d2\,
      O => s_axi_wready
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202020202F202020"
    )
        port map (
      I0 => \^bus2ip_rdce_d2_reg_0\,
      I1 => \^gen_bkend_ce_registers[3].ce_out_i_reg[3]\,
      I2 => \state_reg[0]\(0),
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => s_axi_arvalid,
      O => \state_reg[1]\
    );
tft_status_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tft_status_i,
      Q => tft_status_d1,
      R => bus2ip_sreset
    );
tft_status_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tft_status_d1,
      Q => tft_status_d2,
      R => bus2ip_sreset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_tft_v2_0_19_tft_interface is
  port (
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_rst : in STD_LOGIC;
    \RED_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    C0 : in STD_LOGIC;
    \GREEN_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \BLUE_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    HSYNC_i : in STD_LOGIC;
    VSYNC_i : in STD_LOGIC;
    DE_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_tft_v2_0_19_tft_interface : entity is "axi_tft_v2_0_19_tft_interface";
end system_axi_tft_0_0_axi_tft_v2_0_19_tft_interface;

architecture STRUCTURE of system_axi_tft_0_0_axi_tft_v2_0_19_tft_interface is
  signal \NLW_gen_vga_if.gen_7s.TFT_CLK_ODDR_S_UNCONNECTED\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of FDR_DE : label is "FDR";
  attribute box_type : string;
  attribute box_type of FDR_DE : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of FDS_HSYNC : label is "FDS";
  attribute box_type of FDS_HSYNC : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of FDS_VSYNC : label is "FDS";
  attribute box_type of FDS_VSYNC : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B0\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B0\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B1\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B2\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B3\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B4\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B5\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G0\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G0\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G1\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G2\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G3\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G4\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G5\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R0\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R0\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R1\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R2\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R3\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R4\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R5\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R5\ : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \gen_vga_if.gen_7s.TFT_CLK_ODDR\ : label is "FALSE";
  attribute box_type of \gen_vga_if.gen_7s.TFT_CLK_ODDR\ : label is "PRIMITIVE";
begin
FDR_DE: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => DE_i,
      Q => tft_de,
      R => tft_rst
    );
FDS_HSYNC: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => C0,
      CE => '1',
      D => HSYNC_i,
      Q => tft_hsync,
      S => tft_rst
    );
FDS_VSYNC: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => C0,
      CE => '1',
      D => VSYNC_i,
      Q => tft_vsync,
      S => tft_rst
    );
\gen_vga_if.FDR_B0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(0),
      Q => tft_vga_b(0),
      R => tft_rst
    );
\gen_vga_if.FDR_B1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(1),
      Q => tft_vga_b(1),
      R => tft_rst
    );
\gen_vga_if.FDR_B2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(2),
      Q => tft_vga_b(2),
      R => tft_rst
    );
\gen_vga_if.FDR_B3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(3),
      Q => tft_vga_b(3),
      R => tft_rst
    );
\gen_vga_if.FDR_B4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(4),
      Q => tft_vga_b(4),
      R => tft_rst
    );
\gen_vga_if.FDR_B5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(5),
      Q => tft_vga_b(5),
      R => tft_rst
    );
\gen_vga_if.FDR_G0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(0),
      Q => tft_vga_g(0),
      R => tft_rst
    );
\gen_vga_if.FDR_G1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(1),
      Q => tft_vga_g(1),
      R => tft_rst
    );
\gen_vga_if.FDR_G2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(2),
      Q => tft_vga_g(2),
      R => tft_rst
    );
\gen_vga_if.FDR_G3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(3),
      Q => tft_vga_g(3),
      R => tft_rst
    );
\gen_vga_if.FDR_G4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(4),
      Q => tft_vga_g(4),
      R => tft_rst
    );
\gen_vga_if.FDR_G5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(5),
      Q => tft_vga_g(5),
      R => tft_rst
    );
\gen_vga_if.FDR_R0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(0),
      Q => tft_vga_r(0),
      R => tft_rst
    );
\gen_vga_if.FDR_R1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(1),
      Q => tft_vga_r(1),
      R => tft_rst
    );
\gen_vga_if.FDR_R2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(2),
      Q => tft_vga_r(2),
      R => tft_rst
    );
\gen_vga_if.FDR_R3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(3),
      Q => tft_vga_r(3),
      R => tft_rst
    );
\gen_vga_if.FDR_R4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(4),
      Q => tft_vga_r(4),
      R => tft_rst
    );
\gen_vga_if.FDR_R5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(5),
      Q => tft_vga_r(5),
      R => tft_rst
    );
\gen_vga_if.gen_7s.TFT_CLK_ODDR\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => tft_vga_clk,
      R => tft_rst,
      S => \NLW_gen_vga_if.gen_7s.TFT_CLK_ODDR_S_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_tft_v2_0_19_v_sync is
  port (
    clk_stb_d1 : out STD_LOGIC;
    v_bp_cnt_tc : out STD_LOGIC;
    v_l_cnt_tc : out STD_LOGIC;
    v_p_cnt_tc : out STD_LOGIC;
    VSYNC_i : out STD_LOGIC;
    \BRAM_TFT_addr_reg[0]\ : out STD_LOGIC;
    \HSYNC_cs_reg[3]\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    clk_ce_neg0 : in STD_LOGIC;
    clk_ce_pos0 : in STD_LOGIC;
    vsync_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_tft_v2_0_19_v_sync : entity is "axi_tft_v2_0_19_v_sync";
end system_axi_tft_0_0_axi_tft_v2_0_19_v_sync;

architecture STRUCTURE of system_axi_tft_0_0_axi_tft_v2_0_19_v_sync is
  signal VSYNC_cs : STD_LOGIC_VECTOR ( 0 to 4 );
  signal VSYNC_ns : STD_LOGIC_VECTOR ( 0 to 4 );
  signal \VSYNC_ns_inferred__3/i__n_0\ : STD_LOGIC;
  signal V_bp_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal \^v_l_cnt_tc\ : STD_LOGIC;
  signal V_p_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal clk_ce_neg : STD_LOGIC;
  signal clk_ce_pos : STD_LOGIC;
  signal v_bp_cnt : STD_LOGIC_VECTOR ( 0 to 4 );
  signal v_bp_cnt0 : STD_LOGIC;
  signal \v_bp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \^v_bp_cnt_tc\ : STD_LOGIC;
  signal v_fp_cnt : STD_LOGIC_VECTOR ( 0 to 3 );
  signal v_fp_cnt0 : STD_LOGIC;
  signal \v_fp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_fp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_fp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_fp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal v_fp_cnt_tc : STD_LOGIC;
  signal v_fp_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal v_l_cnt : STD_LOGIC_VECTOR ( 0 to 8 );
  signal v_l_cnt0 : STD_LOGIC;
  signal \v_l_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal v_l_cnt_0 : STD_LOGIC_VECTOR ( 0 to 8 );
  signal \^v_l_cnt_tc_1\ : STD_LOGIC;
  signal v_p_cnt : STD_LOGIC_VECTOR ( 0 to 1 );
  signal v_p_cnt0 : STD_LOGIC;
  signal \v_p_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_p_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \^v_p_cnt_tc\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FDR_DE_i_2 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of FDS_VSYNC_i_1 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of V_bp_cnt_tc_i_1 : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of V_l_cnt_tc_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of V_p_cnt_tc_i_1 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \v_bp_cnt[0]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \v_bp_cnt[1]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \v_bp_cnt[2]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \v_bp_cnt[3]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \v_bp_cnt[4]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \v_fp_cnt[0]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \v_fp_cnt[1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \v_fp_cnt[2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of v_fp_cnt_tc_i_1 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \v_l_cnt[0]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \v_l_cnt[0]_i_3\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \v_l_cnt[1]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \v_l_cnt[2]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \v_l_cnt[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \v_l_cnt[5]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \v_l_cnt[6]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \v_l_cnt[7]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \v_l_cnt[8]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \v_p_cnt[0]_i_1\ : label is "soft_lutpair74";
begin
  v_bp_cnt_tc <= \^v_bp_cnt_tc\;
  v_l_cnt_tc <= \^v_l_cnt_tc_1\;
  v_p_cnt_tc <= \^v_p_cnt_tc\;
FDR_DE_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => VSYNC_cs(3),
      I1 => VSYNC_cs(4),
      I2 => VSYNC_cs(0),
      I3 => VSYNC_cs(1),
      I4 => VSYNC_cs(2),
      O => \BRAM_TFT_addr_reg[0]\
    );
FDS_VSYNC_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => VSYNC_cs(2),
      I1 => VSYNC_cs(0),
      I2 => VSYNC_cs(1),
      I3 => VSYNC_cs(4),
      I4 => VSYNC_cs(3),
      O => VSYNC_i
    );
\VSYNC_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8080"
    )
        port map (
      I0 => \VSYNC_ns_inferred__3/i__n_0\,
      I1 => \^v_l_cnt_tc_1\,
      I2 => VSYNC_cs(1),
      I3 => v_fp_cnt_tc,
      I4 => VSYNC_cs(0),
      O => VSYNC_ns(0)
    );
\VSYNC_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8080"
    )
        port map (
      I0 => \VSYNC_ns_inferred__3/i__n_0\,
      I1 => \^v_bp_cnt_tc\,
      I2 => VSYNC_cs(2),
      I3 => \^v_l_cnt_tc_1\,
      I4 => VSYNC_cs(1),
      O => VSYNC_ns(1)
    );
\VSYNC_cs[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA8080"
    )
        port map (
      I0 => \VSYNC_ns_inferred__3/i__n_0\,
      I1 => \^v_p_cnt_tc\,
      I2 => VSYNC_cs(3),
      I3 => \^v_bp_cnt_tc\,
      I4 => VSYNC_cs(2),
      O => VSYNC_ns(2)
    );
\VSYNC_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888AAAAA888A888"
    )
        port map (
      I0 => \VSYNC_ns_inferred__3/i__n_0\,
      I1 => VSYNC_cs(4),
      I2 => VSYNC_cs(0),
      I3 => v_fp_cnt_tc,
      I4 => \^v_p_cnt_tc\,
      I5 => VSYNC_cs(3),
      O => VSYNC_ns(3)
    );
\VSYNC_cs[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VSYNC_ns_inferred__3/i__n_0\,
      O => VSYNC_ns(4)
    );
\VSYNC_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => VSYNC_ns(0),
      Q => VSYNC_cs(0),
      R => vsync_rst
    );
\VSYNC_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => VSYNC_ns(1),
      Q => VSYNC_cs(1),
      R => vsync_rst
    );
\VSYNC_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => VSYNC_ns(2),
      Q => VSYNC_cs(2),
      R => vsync_rst
    );
\VSYNC_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => VSYNC_ns(3),
      Q => VSYNC_cs(3),
      R => vsync_rst
    );
\VSYNC_cs_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => VSYNC_ns(4),
      Q => VSYNC_cs(4),
      S => vsync_rst
    );
\VSYNC_ns_inferred__3/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => VSYNC_cs(4),
      I1 => VSYNC_cs(3),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(1),
      I4 => VSYNC_cs(0),
      O => \VSYNC_ns_inferred__3/i__n_0\
    );
V_bp_cnt_tc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => v_bp_cnt(4),
      I1 => v_bp_cnt(3),
      I2 => v_bp_cnt(0),
      I3 => v_bp_cnt(1),
      I4 => v_bp_cnt(2),
      O => V_bp_cnt_tc_i_1_n_0
    );
V_bp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => V_bp_cnt_tc_i_1_n_0,
      Q => \^v_bp_cnt_tc\,
      R => v_bp_cnt0
    );
V_l_cnt_tc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \v_l_cnt[0]_i_3_n_0\,
      I1 => v_l_cnt(3),
      I2 => v_l_cnt(0),
      I3 => v_l_cnt(2),
      I4 => v_l_cnt(1),
      O => \^v_l_cnt_tc\
    );
V_l_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \^v_l_cnt_tc\,
      Q => \^v_l_cnt_tc_1\,
      R => v_l_cnt0
    );
V_p_cnt_tc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002E22"
    )
        port map (
      I0 => \^v_p_cnt_tc\,
      I1 => clk_ce_neg,
      I2 => v_p_cnt(0),
      I3 => v_p_cnt(1),
      I4 => v_p_cnt0,
      O => V_p_cnt_tc_i_1_n_0
    );
V_p_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => V_p_cnt_tc_i_1_n_0,
      Q => \^v_p_cnt_tc\,
      R => '0'
    );
clk_ce_neg_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => clk_ce_neg0,
      Q => clk_ce_neg,
      R => '0'
    );
clk_ce_pos_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => clk_ce_pos0,
      Q => clk_ce_pos,
      R => '0'
    );
clk_stb_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \HSYNC_cs_reg[3]\,
      Q => clk_stb_d1,
      R => '0'
    );
\v_bp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => VSYNC_cs(2),
      I1 => VSYNC_cs(1),
      I2 => VSYNC_cs(0),
      I3 => VSYNC_cs(4),
      I4 => VSYNC_cs(3),
      I5 => vsync_rst,
      O => v_bp_cnt0
    );
\v_bp_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78F0F0F0"
    )
        port map (
      I0 => v_bp_cnt(2),
      I1 => v_bp_cnt(1),
      I2 => v_bp_cnt(0),
      I3 => v_bp_cnt(3),
      I4 => v_bp_cnt(4),
      O => \v_bp_cnt[0]_i_2_n_0\
    );
\v_bp_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => v_bp_cnt(2),
      I1 => v_bp_cnt(1),
      I2 => v_bp_cnt(3),
      I3 => v_bp_cnt(4),
      O => \v_bp_cnt[1]_i_1_n_0\
    );
\v_bp_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => v_bp_cnt(2),
      I1 => v_bp_cnt(3),
      I2 => v_bp_cnt(4),
      O => \v_bp_cnt[2]_i_1_n_0\
    );
\v_bp_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_bp_cnt(3),
      I1 => v_bp_cnt(4),
      O => \v_bp_cnt[3]_i_1_n_0\
    );
\v_bp_cnt[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_bp_cnt(4),
      O => \v_bp_cnt[4]_i_1_n_0\
    );
\v_bp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[0]_i_2_n_0\,
      Q => v_bp_cnt(0),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[1]_i_1_n_0\,
      Q => v_bp_cnt(1),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[2]_i_1_n_0\,
      Q => v_bp_cnt(2),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[3]_i_1_n_0\,
      Q => v_bp_cnt(3),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[4]_i_1_n_0\,
      Q => v_bp_cnt(4),
      R => v_bp_cnt0
    );
\v_fp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABABBE"
    )
        port map (
      I0 => vsync_rst,
      I1 => VSYNC_cs(1),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(4),
      I4 => VSYNC_cs(3),
      I5 => VSYNC_cs(0),
      O => v_fp_cnt0
    );
\v_fp_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => v_fp_cnt(2),
      I1 => v_fp_cnt(3),
      I2 => v_fp_cnt(1),
      I3 => v_fp_cnt(0),
      O => \v_fp_cnt[0]_i_2_n_0\
    );
\v_fp_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_fp_cnt(2),
      I1 => v_fp_cnt(3),
      I2 => v_fp_cnt(1),
      O => \v_fp_cnt[1]_i_1_n_0\
    );
\v_fp_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_fp_cnt(2),
      I1 => v_fp_cnt(3),
      O => \v_fp_cnt[2]_i_1_n_0\
    );
\v_fp_cnt[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_fp_cnt(3),
      O => \v_fp_cnt[3]_i_1_n_0\
    );
\v_fp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[0]_i_2_n_0\,
      Q => v_fp_cnt(0),
      R => v_fp_cnt0
    );
\v_fp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[1]_i_1_n_0\,
      Q => v_fp_cnt(1),
      R => v_fp_cnt0
    );
\v_fp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[2]_i_1_n_0\,
      Q => v_fp_cnt(2),
      R => v_fp_cnt0
    );
\v_fp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[3]_i_1_n_0\,
      Q => v_fp_cnt(3),
      R => v_fp_cnt0
    );
v_fp_cnt_tc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => v_fp_cnt(0),
      I1 => v_fp_cnt(1),
      I2 => v_fp_cnt(3),
      I3 => v_fp_cnt(2),
      O => v_fp_cnt_tc_i_1_n_0
    );
v_fp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_fp_cnt_tc_i_1_n_0,
      Q => v_fp_cnt_tc,
      R => v_fp_cnt0
    );
\v_l_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => vsync_rst,
      I1 => VSYNC_cs(2),
      I2 => VSYNC_cs(1),
      I3 => VSYNC_cs(0),
      I4 => VSYNC_cs(4),
      I5 => VSYNC_cs(3),
      O => v_l_cnt0
    );
\v_l_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => v_l_cnt(0),
      I1 => v_l_cnt(2),
      I2 => \v_l_cnt[0]_i_3_n_0\,
      I3 => v_l_cnt(3),
      I4 => v_l_cnt(1),
      O => v_l_cnt_0(0)
    );
\v_l_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => v_l_cnt(4),
      I1 => v_l_cnt(6),
      I2 => v_l_cnt(5),
      I3 => v_l_cnt(8),
      I4 => v_l_cnt(7),
      O => \v_l_cnt[0]_i_3_n_0\
    );
\v_l_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => v_l_cnt(1),
      I1 => v_l_cnt(3),
      I2 => \v_l_cnt[0]_i_3_n_0\,
      I3 => v_l_cnt(2),
      O => v_l_cnt_0(1)
    );
\v_l_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => v_l_cnt(2),
      I1 => \v_l_cnt[0]_i_3_n_0\,
      I2 => v_l_cnt(3),
      O => v_l_cnt_0(2)
    );
\v_l_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => v_l_cnt(3),
      I1 => v_l_cnt(7),
      I2 => v_l_cnt(8),
      I3 => v_l_cnt(5),
      I4 => v_l_cnt(6),
      I5 => v_l_cnt(4),
      O => v_l_cnt_0(3)
    );
\v_l_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => v_l_cnt(4),
      I1 => v_l_cnt(6),
      I2 => v_l_cnt(5),
      I3 => v_l_cnt(8),
      I4 => v_l_cnt(7),
      O => v_l_cnt_0(4)
    );
\v_l_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => v_l_cnt(5),
      I1 => v_l_cnt(8),
      I2 => v_l_cnt(7),
      I3 => v_l_cnt(6),
      O => v_l_cnt_0(5)
    );
\v_l_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_l_cnt(8),
      I1 => v_l_cnt(7),
      I2 => v_l_cnt(6),
      O => v_l_cnt_0(6)
    );
\v_l_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_l_cnt(8),
      I1 => v_l_cnt(7),
      O => v_l_cnt_0(7)
    );
\v_l_cnt[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_l_cnt(8),
      O => v_l_cnt_0(8)
    );
\v_l_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(0),
      Q => v_l_cnt(0),
      R => v_l_cnt0
    );
\v_l_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(1),
      Q => v_l_cnt(1),
      R => v_l_cnt0
    );
\v_l_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(2),
      Q => v_l_cnt(2),
      R => v_l_cnt0
    );
\v_l_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(3),
      Q => v_l_cnt(3),
      R => v_l_cnt0
    );
\v_l_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(4),
      Q => v_l_cnt(4),
      R => v_l_cnt0
    );
\v_l_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(5),
      Q => v_l_cnt(5),
      R => v_l_cnt0
    );
\v_l_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(6),
      Q => v_l_cnt(6),
      R => v_l_cnt0
    );
\v_l_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(7),
      Q => v_l_cnt(7),
      R => v_l_cnt0
    );
\v_l_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(8),
      Q => v_l_cnt(8),
      R => v_l_cnt0
    );
\v_p_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => v_p_cnt(0),
      I1 => clk_ce_neg,
      I2 => v_p_cnt(1),
      I3 => v_p_cnt0,
      O => \v_p_cnt[0]_i_1_n_0\
    );
\v_p_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => vsync_rst,
      I1 => VSYNC_cs(3),
      I2 => VSYNC_cs(4),
      I3 => VSYNC_cs(1),
      I4 => VSYNC_cs(0),
      I5 => VSYNC_cs(2),
      O => v_p_cnt0
    );
\v_p_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => v_p_cnt(1),
      I1 => clk_ce_neg,
      I2 => v_p_cnt0,
      O => \v_p_cnt[1]_i_1_n_0\
    );
\v_p_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \v_p_cnt[0]_i_1_n_0\,
      Q => v_p_cnt(0),
      R => '0'
    );
\v_p_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \v_p_cnt[1]_i_1_n_0\,
      Q => v_p_cnt(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_cdc_sync is
  port (
    scndry_out : out STD_LOGIC;
    prmry_in : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_cdc_sync : entity is "cdc_sync";
end system_axi_tft_0_0_cdc_sync;

architecture STRUCTURE of system_axi_tft_0_0_cdc_sync is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_cdc_sync_0 is
  port (
    IP2Bus_MstRd_dst_rdy_reg : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    IP2Bus_MstRd_Req_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mreset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    sig_llink_busy_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mst_cmdack : in STD_LOGIC;
    ip2bus_mstrd_req : in STD_LOGIC;
    trans_cnt_tc_pulse_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    TFT_on_reg_reg : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_cdc_sync_0 : entity is "cdc_sync";
end system_axi_tft_0_0_cdc_sync_0;

architecture STRUCTURE of system_axi_tft_0_0_cdc_sync_0 is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FDR_IP2INTC_Irpt_i_1 : label is "soft_lutpair73";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of IP2Bus_MstRd_dst_rdy_i_1 : label is "soft_lutpair73";
begin
  scndry_out <= \^scndry_out\;
FDR_IP2INTC_Irpt_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => bus2ip_mreset,
      I1 => \^scndry_out\,
      O => SR(0)
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => TFT_on_reg_reg,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
IP2Bus_MstRd_Req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004040400"
    )
        port map (
      I0 => bus2ip_mst_cmdack,
      I1 => \^scndry_out\,
      I2 => bus2ip_mreset,
      I3 => E(0),
      I4 => ip2bus_mstrd_req,
      I5 => trans_cnt_tc_pulse_i_reg(0),
      O => IP2Bus_MstRd_Req_reg
    );
IP2Bus_MstRd_dst_rdy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004440"
    )
        port map (
      I0 => bus2ip_mreset,
      I1 => \^scndry_out\,
      I2 => E(0),
      I3 => IP2Bus_MstRd_dst_rdy,
      I4 => sig_llink_busy_reg(0),
      O => IP2Bus_MstRd_dst_rdy_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_tft_0_0_cdc_sync__parameterized0\ is
  port (
    IP2Bus_Mst_Type_reg : out STD_LOGIC;
    mn_request_set : out STD_LOGIC;
    tft_rst : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    IP2Bus_Mst_Type : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    bus2ip_mst_cmdack : in STD_LOGIC;
    bus2ip_mst_cmplt : in STD_LOGIC;
    \trans_cnt_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    get_line_start_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_tft_0_0_cdc_sync__parameterized0\ : entity is "cdc_sync";
end \system_axi_tft_0_0_cdc_sync__parameterized0\;

architecture STRUCTURE of \system_axi_tft_0_0_cdc_sync__parameterized0\ is
  signal get_line : STD_LOGIC;
  signal \^mn_request_set\ : STD_LOGIC;
  signal p_in_d1_cdc_from : STD_LOGIC;
  signal prmry_in_xored : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
begin
  mn_request_set <= \^mn_request_set\;
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => get_line,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => p_in_d1_cdc_from,
      Q => s_out_d1_cdc_to,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => prmry_in_xored,
      Q => p_in_d1_cdc_from,
      R => tft_rst
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => get_line_start_d1,
      I1 => p_in_d1_cdc_from,
      O => prmry_in_xored
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_mreset
    );
IP2Bus_Mst_Type_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000E00"
    )
        port map (
      I0 => IP2Bus_Mst_Type,
      I1 => \^mn_request_set\,
      I2 => bus2ip_mreset,
      I3 => scndry_out,
      I4 => bus2ip_mst_cmdack,
      O => IP2Bus_Mst_Type_reg
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => srst_d5,
      I1 => s_out_d5,
      I2 => s_out_d4,
      O => \s_out_re__0\
    );
\trans_cnt_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEAAAAAAA2"
    )
        port map (
      I0 => bus2ip_mst_cmplt,
      I1 => \trans_cnt_reg[1]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => get_line,
      O => \^mn_request_set\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_tft_0_0_cdc_sync__parameterized0_2\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    tft_rst : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    v_bp_cnt_tc : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_tft_0_0_cdc_sync__parameterized0_2\ : entity is "cdc_sync";
end \system_axi_tft_0_0_cdc_sync__parameterized0_2\;

architecture STRUCTURE of \system_axi_tft_0_0_cdc_sync__parameterized0_2\ is
  signal p_in_d1_cdc_from : STD_LOGIC;
  signal prmry_in_xored : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
begin
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => E(0),
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => p_in_d1_cdc_from,
      Q => s_out_d1_cdc_to,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => prmry_in_xored,
      Q => p_in_d1_cdc_from,
      R => tft_rst
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_in_d1_cdc_from,
      I1 => v_bp_cnt_tc,
      O => prmry_in_xored
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_mreset
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => srst_d5,
      I1 => s_out_d5,
      I2 => s_out_d4,
      O => \s_out_re__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_tft_0_0_cdc_sync__parameterized0_3\ is
  port (
    p_in_d1_cdc_from : out STD_LOGIC;
    tft_status_i : out STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    prmry_in_xored : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_tft_0_0_cdc_sync__parameterized0_3\ : entity is "cdc_sync";
end \system_axi_tft_0_0_cdc_sync__parameterized0_3\;

architecture STRUCTURE of \system_axi_tft_0_0_cdc_sync__parameterized0_3\ is
  signal \^p_in_d1_cdc_from\ : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
begin
  p_in_d1_cdc_from <= \^p_in_d1_cdc_from\;
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => tft_status_i,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^p_in_d1_cdc_from\,
      Q => s_out_d1_cdc_to,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => prmry_in_xored,
      Q => \^p_in_d1_cdc_from\,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_sreset
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => srst_d5,
      I1 => s_out_d5,
      I2 => s_out_d4,
      O => \s_out_re__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_tft_0_0_cdc_sync__parameterized0_4\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \line_cnt_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    prmry_in_xored : out STD_LOGIC;
    ip2intc_irpt_i : out STD_LOGIC;
    tft_rst : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    sig_rd_discontinue : in STD_LOGIC;
    sig_rd2llink_strm_tlast : in STD_LOGIC;
    eof_n : in STD_LOGIC;
    trans_cnt_tc : in STD_LOGIC;
    p_in_d1_cdc_from : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : in STD_LOGIC;
    v_p_cnt_tc : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_tft_0_0_cdc_sync__parameterized0_4\ : entity is "cdc_sync";
end \system_axi_tft_0_0_cdc_sync__parameterized0_4\;

architecture STRUCTURE of \system_axi_tft_0_0_cdc_sync__parameterized0_4\ is
  signal \^line_cnt_reg[8]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_in_d1_cdc_from_0 : STD_LOGIC;
  signal prmry_in_xored_1 : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  signal vsync_intr : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1\ : label is "soft_lutpair86";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \line_cnt[0]_i_1\ : label is "soft_lutpair86";
begin
  \line_cnt_reg[8]\(0) <= \^line_cnt_reg[8]\(0);
FDR_IP2INTC_Irpt_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vsync_intr,
      I1 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\,
      O => ip2intc_irpt_i
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => vsync_intr,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => p_in_d1_cdc_from_0,
      Q => s_out_d1_cdc_to,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => prmry_in_xored_1,
      Q => p_in_d1_cdc_from_0,
      R => tft_rst
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vsync_intr,
      I1 => p_in_d1_cdc_from,
      O => prmry_in_xored
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_in_d1_cdc_from_0,
      I1 => v_p_cnt_tc,
      O => prmry_in_xored_1
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_mreset
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => vsync_intr,
      I1 => scndry_out,
      I2 => bus2ip_mreset,
      O => \^line_cnt_reg[8]\(0)
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => srst_d5,
      I1 => s_out_d5,
      I2 => s_out_d4,
      O => \s_out_re__0\
    );
\trans_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABFAAAAAAAA"
    )
        port map (
      I0 => \^line_cnt_reg[8]\(0),
      I1 => sig_llink2cmd_rd_busy,
      I2 => sig_rd_discontinue,
      I3 => sig_rd2llink_strm_tlast,
      I4 => eof_n,
      I5 => trans_cnt_tc,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_tft_0_0_cdc_sync__parameterized1\ is
  port (
    scndry_vect_out : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_tft_0_0_cdc_sync__parameterized1\ : entity is "cdc_sync";
end \system_axi_tft_0_0_cdc_sync__parameterized1\;

architecture STRUCTURE of \system_axi_tft_0_0_cdc_sync__parameterized1\ is
  signal s_level_out_bus_d1_cdc_to_0 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_1 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_10 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_2 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_3 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_4 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_5 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_6 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_7 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_8 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_9 : STD_LOGIC;
  signal s_level_out_bus_d2_0 : STD_LOGIC;
  signal s_level_out_bus_d2_1 : STD_LOGIC;
  signal s_level_out_bus_d2_10 : STD_LOGIC;
  signal s_level_out_bus_d2_2 : STD_LOGIC;
  signal s_level_out_bus_d2_3 : STD_LOGIC;
  signal s_level_out_bus_d2_4 : STD_LOGIC;
  signal s_level_out_bus_d2_5 : STD_LOGIC;
  signal s_level_out_bus_d2_6 : STD_LOGIC;
  signal s_level_out_bus_d2_7 : STD_LOGIC;
  signal s_level_out_bus_d2_8 : STD_LOGIC;
  signal s_level_out_bus_d2_9 : STD_LOGIC;
  signal s_level_out_bus_d3_0 : STD_LOGIC;
  signal s_level_out_bus_d3_1 : STD_LOGIC;
  signal s_level_out_bus_d3_10 : STD_LOGIC;
  signal s_level_out_bus_d3_2 : STD_LOGIC;
  signal s_level_out_bus_d3_3 : STD_LOGIC;
  signal s_level_out_bus_d3_4 : STD_LOGIC;
  signal s_level_out_bus_d3_5 : STD_LOGIC;
  signal s_level_out_bus_d3_6 : STD_LOGIC;
  signal s_level_out_bus_d3_7 : STD_LOGIC;
  signal s_level_out_bus_d3_8 : STD_LOGIC;
  signal s_level_out_bus_d3_9 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_0,
      Q => s_level_out_bus_d2_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_10,
      Q => s_level_out_bus_d2_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_1,
      Q => s_level_out_bus_d2_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_2,
      Q => s_level_out_bus_d2_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_3,
      Q => s_level_out_bus_d2_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_4,
      Q => s_level_out_bus_d2_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_5,
      Q => s_level_out_bus_d2_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_6,
      Q => s_level_out_bus_d2_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_7,
      Q => s_level_out_bus_d2_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_8,
      Q => s_level_out_bus_d2_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_9,
      Q => s_level_out_bus_d2_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_0,
      Q => s_level_out_bus_d3_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_10,
      Q => s_level_out_bus_d3_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_1,
      Q => s_level_out_bus_d3_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_2,
      Q => s_level_out_bus_d3_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_3,
      Q => s_level_out_bus_d3_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_4,
      Q => s_level_out_bus_d3_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_5,
      Q => s_level_out_bus_d3_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_6,
      Q => s_level_out_bus_d3_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_7,
      Q => s_level_out_bus_d3_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_8,
      Q => s_level_out_bus_d3_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_9,
      Q => s_level_out_bus_d3_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_0,
      Q => scndry_vect_out(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_10,
      Q => scndry_vect_out(10),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_1,
      Q => scndry_vect_out(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_2,
      Q => scndry_vect_out(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_3,
      Q => scndry_vect_out(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_4,
      Q => scndry_vect_out(4),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_5,
      Q => scndry_vect_out(5),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_6,
      Q => scndry_vect_out(6),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_7,
      Q => scndry_vect_out(7),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_8,
      Q => scndry_vect_out(8),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_9,
      Q => scndry_vect_out(9),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(0),
      Q => s_level_out_bus_d1_cdc_to_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(10),
      Q => s_level_out_bus_d1_cdc_to_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(1),
      Q => s_level_out_bus_d1_cdc_to_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(2),
      Q => s_level_out_bus_d1_cdc_to_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(3),
      Q => s_level_out_bus_d1_cdc_to_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(4),
      Q => s_level_out_bus_d1_cdc_to_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(5),
      Q => s_level_out_bus_d1_cdc_to_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(6),
      Q => s_level_out_bus_d1_cdc_to_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(7),
      Q => s_level_out_bus_d1_cdc_to_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(8),
      Q => s_level_out_bus_d1_cdc_to_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => Q(9),
      Q => s_level_out_bus_d1_cdc_to_9,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_tft_0_0_cdc_sync__parameterized2\ is
  port (
    scndry_out : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_tft_0_0_cdc_sync__parameterized2\ : entity is "cdc_sync";
end \system_axi_tft_0_0_cdc_sync__parameterized2\;

architecture STRUCTURE of \system_axi_tft_0_0_cdc_sync__parameterized2\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => '1',
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_tft_0_0_cdc_sync__parameterized2_1\ is
  port (
    tft_rst : out STD_LOGIC;
    scndry_out : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    TFT_on_reg_reg : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_tft_0_0_cdc_sync__parameterized2_1\ : entity is "cdc_sync";
end \system_axi_tft_0_0_cdc_sync__parameterized2_1\;

architecture STRUCTURE of \system_axi_tft_0_0_cdc_sync__parameterized2_1\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal tft_on_reg_bram_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
FDS_HSYNC_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => tft_on_reg_bram_d2,
      I1 => scndry_out,
      I2 => \out\,
      O => tft_rst
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => TFT_on_reg_reg,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => tft_on_reg_bram_d2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_cntr_incr_decr_addn_f is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_inhibit_rdy_n : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_cntr_incr_decr_addn_f : entity is "cntr_incr_decr_addn_f";
end system_axi_tft_0_0_cntr_incr_decr_addn_f;

architecture STRUCTURE of system_axi_tft_0_0_cntr_incr_decr_addn_f is
  signal \INFERRED_GEN.cnt_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.cnt_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cnt_p10 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[1]_i_1\ : label is "soft_lutpair30";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
Cnt_p10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_inhibit_rdy_n,
      I2 => FIFO_Full_reg,
      I3 => m_axi_bvalid,
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axi_bvalid,
      I2 => FIFO_Full_reg,
      I3 => sig_inhibit_rdy_n,
      I4 => \^q\(1),
      O => \INFERRED_GEN.cnt_i[1]_i_1_n_0\
    );
\INFERRED_GEN.cnt_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => sig_inhibit_rdy_n,
      I2 => FIFO_Full_reg,
      I3 => m_axi_bvalid,
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \INFERRED_GEN.cnt_i[2]_i_1_n_0\
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => \out\
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \INFERRED_GEN.cnt_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => \out\
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \INFERRED_GEN.cnt_i[2]_i_1_n_0\,
      Q => \^q\(2),
      S => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_pselect_f is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_pselect_f : entity is "pselect_f";
end system_axi_tft_0_0_pselect_f;

architecture STRUCTURE of system_axi_tft_0_0_pselect_f is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[2]\,
      I1 => \bus2ip_addr_i_reg[3]\,
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_tft_0_0_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_tft_0_0_pselect_f__parameterized1\ : entity is "pselect_f";
end \system_axi_tft_0_0_pselect_f__parameterized1\;

architecture STRUCTURE of \system_axi_tft_0_0_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[3]\,
      I1 => \bus2ip_addr_i_reg[2]\,
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_axi_tft_0_0_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_axi_tft_0_0_xpm_cdc_gray : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of system_axi_tft_0_0_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_axi_tft_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of system_axi_tft_0_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_axi_tft_0_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of system_axi_tft_0_0_xpm_cdc_gray : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_axi_tft_0_0_xpm_cdc_gray : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_axi_tft_0_0_xpm_cdc_gray : entity is "GRAY";
end system_axi_tft_0_0_xpm_cdc_gray;

architecture STRUCTURE of system_axi_tft_0_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_out_bin_ff[0]_i_2_n_0\ : STD_LOGIC;
  signal \dest_out_bin_ff[1]_i_2_n_0\ : STD_LOGIC;
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair52";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(0),
      I2 => \dest_out_bin_ff[0]_i_2_n_0\,
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(8),
      I5 => \dest_graysync_ff[1]\(2),
      O => binval(0)
    );
\dest_out_bin_ff[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(6),
      O => \dest_out_bin_ff[0]_i_2_n_0\
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_out_bin_ff[1]_i_2_n_0\,
      I3 => binval(7),
      I4 => \dest_graysync_ff[1]\(2),
      I5 => \dest_graysync_ff[1]\(1),
      O => binval(1)
    );
\dest_out_bin_ff[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(5),
      O => \dest_out_bin_ff[1]_i_2_n_0\
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => binval(7),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(5),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(6),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(7),
      O => binval(7)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(5),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(6),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(7),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(8),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_tft_0_0_xpm_cdc_gray__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_axi_tft_0_0_xpm_cdc_gray__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_axi_tft_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_tft_0_0_xpm_cdc_gray__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \system_axi_tft_0_0_xpm_cdc_gray__1\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_axi_tft_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \system_axi_tft_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_axi_tft_0_0_xpm_cdc_gray__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \system_axi_tft_0_0_xpm_cdc_gray__1\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_axi_tft_0_0_xpm_cdc_gray__1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_axi_tft_0_0_xpm_cdc_gray__1\ : entity is "GRAY";
end \system_axi_tft_0_0_xpm_cdc_gray__1\;

architecture STRUCTURE of \system_axi_tft_0_0_xpm_cdc_gray__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_out_bin_ff[0]_i_2_n_0\ : STD_LOGIC;
  signal \dest_out_bin_ff[1]_i_2_n_0\ : STD_LOGIC;
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair48";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(0),
      I2 => \dest_out_bin_ff[0]_i_2_n_0\,
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(8),
      I5 => \dest_graysync_ff[1]\(2),
      O => binval(0)
    );
\dest_out_bin_ff[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(6),
      O => \dest_out_bin_ff[0]_i_2_n_0\
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_out_bin_ff[1]_i_2_n_0\,
      I3 => binval(7),
      I4 => \dest_graysync_ff[1]\(2),
      I5 => \dest_graysync_ff[1]\(1),
      O => binval(1)
    );
\dest_out_bin_ff[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(5),
      O => \dest_out_bin_ff[1]_i_2_n_0\
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => binval(7),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(5),
      I4 => \dest_graysync_ff[1]\(4),
      I5 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(5),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(6),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(7),
      O => binval(7)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(5),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(6),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(7),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(8),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_axi_tft_0_0_xpm_cdc_single : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_axi_tft_0_0_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_axi_tft_0_0_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of system_axi_tft_0_0_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_axi_tft_0_0_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_axi_tft_0_0_xpm_cdc_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_axi_tft_0_0_xpm_cdc_single : entity is "SINGLE";
end system_axi_tft_0_0_xpm_cdc_single;

architecture STRUCTURE of system_axi_tft_0_0_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_tft_0_0_xpm_cdc_single__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_axi_tft_0_0_xpm_cdc_single__1\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_axi_tft_0_0_xpm_cdc_single__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_tft_0_0_xpm_cdc_single__1\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_axi_tft_0_0_xpm_cdc_single__1\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \system_axi_tft_0_0_xpm_cdc_single__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_axi_tft_0_0_xpm_cdc_single__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_axi_tft_0_0_xpm_cdc_single__1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_axi_tft_0_0_xpm_cdc_single__1\ : entity is "SINGLE";
end \system_axi_tft_0_0_xpm_cdc_single__1\;

architecture STRUCTURE of \system_axi_tft_0_0_xpm_cdc_single__1\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of system_axi_tft_0_0_xpm_cdc_sync_rst : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of system_axi_tft_0_0_xpm_cdc_sync_rst : entity is 5;
  attribute INIT : string;
  attribute INIT of system_axi_tft_0_0_xpm_cdc_sync_rst : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of system_axi_tft_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of system_axi_tft_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of system_axi_tft_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of system_axi_tft_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of system_axi_tft_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end system_axi_tft_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of system_axi_tft_0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_axi_tft_0_0_xpm_cdc_sync_rst__1\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \system_axi_tft_0_0_xpm_cdc_sync_rst__1\ : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \system_axi_tft_0_0_xpm_cdc_sync_rst__1\ : entity is 5;
  attribute INIT : string;
  attribute INIT of \system_axi_tft_0_0_xpm_cdc_sync_rst__1\ : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \system_axi_tft_0_0_xpm_cdc_sync_rst__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_axi_tft_0_0_xpm_cdc_sync_rst__1\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \system_axi_tft_0_0_xpm_cdc_sync_rst__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \system_axi_tft_0_0_xpm_cdc_sync_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \system_axi_tft_0_0_xpm_cdc_sync_rst__1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \system_axi_tft_0_0_xpm_cdc_sync_rst__1\ : entity is "SYNC_RST";
end \system_axi_tft_0_0_xpm_cdc_sync_rst__1\;

architecture STRUCTURE of \system_axi_tft_0_0_xpm_cdc_sync_rst__1\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_blk_mem_gen_prim_wrapper is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA_dly_D : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    AXI_BRAM_we_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end system_axi_tft_0_0_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of system_axi_tft_0_0_blk_mem_gen_prim_wrapper is
  signal ENA_I : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 5) => Q(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 5) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CLKARDCLK => sys_tft_clk,
      CLKBWRCLK => m_axi_aclk,
      DIADI(15 downto 8) => \AXI_BRAM_data_i_reg[8]\(34 downto 27),
      DIADI(7 downto 0) => \AXI_BRAM_data_i_reg[8]\(25 downto 18),
      DIBDI(15 downto 8) => \AXI_BRAM_data_i_reg[8]\(16 downto 9),
      DIBDI(7 downto 0) => \AXI_BRAM_data_i_reg[8]\(7 downto 0),
      DIPADIP(1) => \AXI_BRAM_data_i_reg[8]\(35),
      DIPADIP(0) => \AXI_BRAM_data_i_reg[8]\(26),
      DIPBDIP(1) => \AXI_BRAM_data_i_reg[8]\(17),
      DIPBDIP(0) => \AXI_BRAM_data_i_reg[8]\(8),
      DOADO(15 downto 8) => D(16 downto 9),
      DOADO(7 downto 0) => D(7 downto 0),
      DOBDO(15 downto 8) => D(34 downto 27),
      DOBDO(7 downto 0) => D(25 downto 18),
      DOPADOP(1) => D(17),
      DOPADOP(0) => D(8),
      DOPBDOP(1) => D(35),
      DOPBDOP(0) => D(26),
      ENARDEN => ENB_I,
      ENBWREN => ENA_I,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => ram_rstram_b,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => E(0),
      WEBWE(2) => E(0),
      WEBWE(1) => E(0),
      WEBWE(0) => E(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ENA_dly_D,
      I1 => \out\,
      I2 => AXI_BRAM_we_i,
      O => ENA_I
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_compare is
  port (
    comp1 : out STD_LOGIC;
    \dest_out_bin_ff_reg[8]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_compare : entity is "compare";
end system_axi_tft_0_0_compare;

architecture STRUCTURE of system_axi_tft_0_0_compare is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal v1_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(0),
      I1 => RD_PNTR_WR(0),
      I2 => Q(1),
      I3 => RD_PNTR_WR(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(2),
      I1 => RD_PNTR_WR(2),
      I2 => Q(3),
      I3 => RD_PNTR_WR(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(4),
      I1 => RD_PNTR_WR(4),
      I2 => Q(5),
      I3 => RD_PNTR_WR(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(6),
      I1 => RD_PNTR_WR(6),
      I2 => Q(7),
      I3 => RD_PNTR_WR(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \dest_out_bin_ff_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_compare_5 is
  port (
    ram_full_fb_i_reg : out STD_LOGIC;
    \dest_out_bin_ff_reg[8]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    AXI_BRAM_we_i : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    \gic0.gc1.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_compare_5 : entity is "compare";
end system_axi_tft_0_0_compare_5;

architecture STRUCTURE of system_axi_tft_0_0_compare_5 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal v1_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \gic0.gc1.count_d1_reg[7]\(0),
      I1 => RD_PNTR_WR(0),
      I2 => \gic0.gc1.count_d1_reg[7]\(1),
      I3 => RD_PNTR_WR(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \gic0.gc1.count_d1_reg[7]\(2),
      I1 => RD_PNTR_WR(2),
      I2 => \gic0.gc1.count_d1_reg[7]\(3),
      I3 => RD_PNTR_WR(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \gic0.gc1.count_d1_reg[7]\(4),
      I1 => RD_PNTR_WR(4),
      I2 => \gic0.gc1.count_d1_reg[7]\(5),
      I3 => RD_PNTR_WR(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \gic0.gc1.count_d1_reg[7]\(6),
      I1 => RD_PNTR_WR(6),
      I2 => \gic0.gc1.count_d1_reg[7]\(7),
      I3 => RD_PNTR_WR(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp2,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \dest_out_bin_ff_reg[8]\
    );
ram_full_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF20"
    )
        port map (
      I0 => comp2,
      I1 => \out\,
      I2 => AXI_BRAM_we_i,
      I3 => comp1,
      I4 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      O => ram_full_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_compare_6 is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gc1.count_d2_reg[8]\ : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_compare_6 : entity is "compare";
end system_axi_tft_0_0_compare_6;

architecture STRUCTURE of system_axi_tft_0_0_compare_6 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal v1_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(0),
      I1 => Q(0),
      I2 => WR_PNTR_RD(1),
      I3 => Q(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(2),
      I1 => Q(2),
      I2 => WR_PNTR_RD(3),
      I3 => Q(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(4),
      I1 => Q(4),
      I2 => WR_PNTR_RD(5),
      I3 => Q(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(6),
      I1 => Q(6),
      I2 => WR_PNTR_RD(7),
      I3 => Q(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gc1.count_d2_reg[8]\
    );
ram_empty_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEFEEE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => comp0,
      I2 => \gpregsm1.curr_fwft_state_reg[0]\,
      I3 => comp1,
      I4 => \out\,
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_compare_7 is
  port (
    comp1 : out STD_LOGIC;
    \gc1.count_d1_reg[8]\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc1.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_compare_7 : entity is "compare";
end system_axi_tft_0_0_compare_7;

architecture STRUCTURE of system_axi_tft_0_0_compare_7 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal v1_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(0),
      I1 => \gc1.count_d1_reg[7]\(0),
      I2 => WR_PNTR_RD(1),
      I3 => \gc1.count_d1_reg[7]\(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(2),
      I1 => \gc1.count_d1_reg[7]\(2),
      I2 => WR_PNTR_RD(3),
      I3 => \gc1.count_d1_reg[7]\(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(4),
      I1 => \gc1.count_d1_reg[7]\(4),
      I2 => WR_PNTR_RD(5),
      I3 => \gc1.count_d1_reg[7]\(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(6),
      I1 => \gc1.count_d1_reg[7]\(6),
      I2 => WR_PNTR_RD(7),
      I3 => \gc1.count_d1_reg[7]\(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gc1.count_d1_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_rd_bin_cntr is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_empty_fb_i_reg_0 : out STD_LOGIC;
    \gc1.count_d2_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_rd_bin_cntr : entity is "rd_bin_cntr";
end system_axi_tft_0_0_rd_bin_cntr;

architecture STRUCTURE of system_axi_tft_0_0_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gc1.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gc1.count_d2_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gc1.count[2]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gc1.count[3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gc1.count[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gc1.count[7]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gc1.count[8]_i_1\ : label is "soft_lutpair54";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \gc1.count_d2_reg[7]_0\(7 downto 0) <= \^gc1.count_d2_reg[7]_0\(7 downto 0);
\gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      O => \plusOp__0\(0)
    );
\gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      O => \plusOp__0\(1)
    );
\gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus2(1),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(2),
      O => \plusOp__0\(2)
    );
\gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(3),
      O => \plusOp__0\(3)
    );
\gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus2(3),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(0),
      I3 => rd_pntr_plus2(2),
      I4 => rd_pntr_plus2(4),
      O => \plusOp__0\(4)
    );
\gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_pntr_plus2(4),
      I1 => rd_pntr_plus2(2),
      I2 => rd_pntr_plus2(0),
      I3 => rd_pntr_plus2(1),
      I4 => rd_pntr_plus2(3),
      I5 => rd_pntr_plus2(5),
      O => \plusOp__0\(5)
    );
\gc1.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gc1.count[8]_i_2_n_0\,
      I1 => rd_pntr_plus2(6),
      O => \plusOp__0\(6)
    );
\gc1.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => rd_pntr_plus2(6),
      I1 => \gc1.count[8]_i_2_n_0\,
      I2 => rd_pntr_plus2(7),
      O => \plusOp__0\(7)
    );
\gc1.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => rd_pntr_plus2(7),
      I1 => \gc1.count[8]_i_2_n_0\,
      I2 => rd_pntr_plus2(6),
      I3 => rd_pntr_plus2(8),
      O => \plusOp__0\(8)
    );
\gc1.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => rd_pntr_plus2(4),
      I1 => rd_pntr_plus2(2),
      I2 => rd_pntr_plus2(0),
      I3 => rd_pntr_plus2(1),
      I4 => rd_pntr_plus2(3),
      I5 => rd_pntr_plus2(5),
      O => \gc1.count[8]_i_2_n_0\
    );
\gc1.count_d1_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(0),
      Q => \^gc1.count_d2_reg[7]_0\(0),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(1),
      Q => \^gc1.count_d2_reg[7]_0\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(2),
      Q => \^gc1.count_d2_reg[7]_0\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(3),
      Q => \^gc1.count_d2_reg[7]_0\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(4),
      Q => \^gc1.count_d2_reg[7]_0\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(5),
      Q => \^gc1.count_d2_reg[7]_0\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(6),
      Q => \^gc1.count_d2_reg[7]_0\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(7),
      Q => \^gc1.count_d2_reg[7]_0\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(8),
      Q => rd_pntr_plus1(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(0),
      Q => \^q\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(1),
      Q => \^q\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(2),
      Q => \^q\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(3),
      Q => \^q\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(4),
      Q => \^q\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(5),
      Q => \^q\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(6),
      Q => \^q\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(7),
      Q => \^q\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus1(8),
      Q => \^q\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(0),
      Q => rd_pntr_plus2(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(1),
      Q => rd_pntr_plus2(1),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(2),
      Q => rd_pntr_plus2(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(3),
      Q => rd_pntr_plus2(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(4),
      Q => rd_pntr_plus2(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(5),
      Q => rd_pntr_plus2(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(6),
      Q => rd_pntr_plus2(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(7),
      Q => rd_pntr_plus2(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc1.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(8),
      Q => rd_pntr_plus2(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => WR_PNTR_RD(0),
      O => ram_empty_fb_i_reg
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rd_pntr_plus1(8),
      I1 => WR_PNTR_RD(0),
      O => ram_empty_fb_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_rd_fwft is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    \gc1.count_d1_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_rd_fwft : entity is "rd_fwft";
end system_axi_tft_0_0_rd_fwft;

architecture STRUCTURE of system_axi_tft_0_0_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_fb_i_i_1_n_0 : STD_LOGIC;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_i_i_1_n_0 : STD_LOGIC;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEEEFEFEFEFEF"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => ENB_dly_D,
      I2 => \out\,
      I3 => curr_fwft_state(0),
      I4 => \BRAM_TFT_addr_reg[9]\(0),
      I5 => curr_fwft_state(1),
      O => ENB_I
    );
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFEFFECCCCCCC"
    )
        port map (
      I0 => \out\,
      I1 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I2 => \BRAM_TFT_addr_reg[9]\(0),
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      I5 => aempty_fwft_fb_i,
      O => aempty_fwft_fb_i_i_1_n_0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => aempty_fwft_fb_i_i_1_n_0,
      Q => aempty_fwft_fb_i,
      R => '0'
    );
aempty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => aempty_fwft_fb_i_i_1_n_0,
      Q => aempty_fwft_i,
      R => '0'
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAAFEFA"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => empty_fwft_fb_i,
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      O => empty_fwft_fb_i_i_1_n_0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => empty_fwft_fb_i_i_1_n_0,
      Q => empty_fwft_fb_i,
      R => '0'
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => \BRAM_TFT_addr_reg[9]\(0),
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
empty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => empty_fwft_fb_i_i_1_n_0,
      Q => empty_fwft_i,
      R => '0'
    );
\gc1.count_d1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => \gc1.count_d1_reg[8]\(0)
    );
\goreg_bm.dout_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => curr_fwft_state(1),
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => \BRAM_TFT_addr_reg[9]\(0),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
ram_empty_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => curr_fwft_state(1),
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_wr_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_wr_bin_cntr : entity is "wr_bin_cntr";
end system_axi_tft_0_0_wr_bin_cntr;

architecture STRUCTURE of system_axi_tft_0_0_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gic0.gc1.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gic0.gc1.count_d3_reg[8]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc1.count[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gic0.gc1.count[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gic0.gc1.count[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gic0.gc1.count[4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gic0.gc1.count[7]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gic0.gc1.count[8]_i_1\ : label is "soft_lutpair57";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \gic0.gc1.count_d3_reg[8]_0\(8 downto 0) <= \^gic0.gc1.count_d3_reg[8]_0\(8 downto 0);
\gic0.gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      O => plusOp(0)
    );
\gic0.gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus3(1),
      I1 => wr_pntr_plus3(0),
      O => plusOp(1)
    );
\gic0.gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wr_pntr_plus3(2),
      I1 => wr_pntr_plus3(1),
      I2 => wr_pntr_plus3(0),
      O => plusOp(2)
    );
\gic0.gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => wr_pntr_plus3(3),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(1),
      I3 => wr_pntr_plus3(2),
      O => plusOp(3)
    );
\gic0.gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => wr_pntr_plus3(4),
      I1 => wr_pntr_plus3(2),
      I2 => wr_pntr_plus3(1),
      I3 => wr_pntr_plus3(0),
      I4 => wr_pntr_plus3(3),
      O => plusOp(4)
    );
\gic0.gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => wr_pntr_plus3(5),
      I1 => wr_pntr_plus3(3),
      I2 => wr_pntr_plus3(0),
      I3 => wr_pntr_plus3(1),
      I4 => wr_pntr_plus3(2),
      I5 => wr_pntr_plus3(4),
      O => plusOp(5)
    );
\gic0.gc1.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gic0.gc1.count[8]_i_2_n_0\,
      I1 => wr_pntr_plus3(6),
      O => plusOp(6)
    );
\gic0.gc1.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => wr_pntr_plus3(7),
      I1 => \gic0.gc1.count[8]_i_2_n_0\,
      I2 => wr_pntr_plus3(6),
      O => plusOp(7)
    );
\gic0.gc1.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => wr_pntr_plus3(8),
      I1 => wr_pntr_plus3(6),
      I2 => \gic0.gc1.count[8]_i_2_n_0\,
      I3 => wr_pntr_plus3(7),
      O => plusOp(8)
    );
\gic0.gc1.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => wr_pntr_plus3(4),
      I1 => wr_pntr_plus3(2),
      I2 => wr_pntr_plus3(1),
      I3 => wr_pntr_plus3(0),
      I4 => wr_pntr_plus3(3),
      I5 => wr_pntr_plus3(5),
      O => \gic0.gc1.count[8]_i_2_n_0\
    );
\gic0.gc1.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(0),
      Q => \^q\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d1_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(1),
      Q => \^q\(1),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(2),
      Q => \^q\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(3),
      Q => \^q\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(4),
      Q => \^q\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(5),
      Q => \^q\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(6),
      Q => \^q\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(7),
      Q => \^q\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(8),
      Q => \^q\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d2_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(0),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(7),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(8),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(0),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(1),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(2),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(3),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(4),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(5),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(6),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(7),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_d3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(8),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(0),
      Q => wr_pntr_plus3(0),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(1),
      Q => wr_pntr_plus3(1),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(2),
      Q => wr_pntr_plus3(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(3),
      Q => wr_pntr_plus3(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(4),
      Q => wr_pntr_plus3(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(5),
      Q => wr_pntr_plus3(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(6),
      Q => wr_pntr_plus3(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(7),
      Q => wr_pntr_plus3(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc1.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(8),
      Q => wr_pntr_plus3(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_address_decoder is
  port (
    TFT_status_reg_reg : out STD_LOGIC;
    bus2ip_wrce_or : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \IP2Bus_Data_reg[0]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[16]\ : out STD_LOGIC;
    bus2ip_rdce_or : out STD_LOGIC;
    \IP2Bus_Data_reg[28]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[30]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[1]\ : out STD_LOGIC;
    TFT_intr_en_reg : out STD_LOGIC;
    TFT_dps_reg_reg : out STD_LOGIC;
    TFT_on_reg_reg : out STD_LOGIC;
    \TFT_base_addr_reg[10]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    cs_ce_clr : in STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    TFT_status_reg : in STD_LOGIC;
    tft_status_d2 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \TFT_base_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    TFT_iic_xfer : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    \TFT_iic_reg_data_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    prmry_in : in STD_LOGIC;
    tft_dps : in STD_LOGIC;
    TFT_on_reg_reg_0 : in STD_LOGIC;
    bus2ip_rnw_i : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_address_decoder : entity is "address_decoder";
end system_axi_tft_0_0_address_decoder;

architecture STRUCTURE of system_axi_tft_0_0_address_decoder is
  signal Bus_RNW_reg : STD_LOGIC;
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal \IP2Bus_Data[0]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[28]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[31]_i_2_n_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IP2Bus_Data[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \IP2Bus_Data[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \IP2Bus_Data[28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \IP2Bus_Data[31]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \IP2Bus_Data[31]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \TFT_base_addr[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \TFT_iic_reg_data[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of TFT_on_reg_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of bus2ip_rdce_d1_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of bus2ip_wrce_d1_i_1 : label is "soft_lutpair0";
begin
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => Q,
      I2 => Bus_RNW_reg,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => Bus_RNW_reg,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[2]\,
      I1 => \bus2ip_addr_i_reg[3]\,
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[3]\,
      I1 => \bus2ip_addr_i_reg[2]\,
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\IP2Bus_Data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808F808080808080"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \TFT_base_addr_reg[0]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I4 => \IP2Bus_Data[0]_i_2_n_0\,
      I5 => TFT_iic_xfer,
      O => \IP2Bus_Data_reg[0]\
    );
\IP2Bus_Data[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \IP2Bus_Data[0]_i_2_n_0\
    );
\IP2Bus_Data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => Bus_RNW_reg,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I5 => bus2ip_sreset,
      O => \IP2Bus_Data_reg[16]\
    );
\IP2Bus_Data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => Bus_RNW_reg,
      I2 => bus2ip_sreset,
      O => \IP2Bus_Data_reg[1]\
    );
\IP2Bus_Data[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \IP2Bus_Data[28]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      O => \IP2Bus_Data_reg[28]\
    );
\IP2Bus_Data[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0800080"
    )
        port map (
      I0 => \TFT_iic_reg_data_reg[4]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => Bus_RNW_reg,
      I3 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I4 => prmry_in,
      I5 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \IP2Bus_Data[28]_i_2_n_0\
    );
\IP2Bus_Data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8080808"
    )
        port map (
      I0 => \TFT_iic_reg_data_reg[4]\(1),
      I1 => \IP2Bus_Data[0]_i_2_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => tft_dps,
      I4 => Bus_RNW_reg,
      I5 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      O => \IP2Bus_Data_reg[30]\
    );
\IP2Bus_Data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E222"
    )
        port map (
      I0 => \IP2Bus_Data[31]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => Bus_RNW_reg,
      I3 => TFT_on_reg_reg_0,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      O => \IP2Bus_Data_reg[31]\
    );
\IP2Bus_Data[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8880000"
    )
        port map (
      I0 => TFT_status_reg,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => \TFT_iic_reg_data_reg[4]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      O => \IP2Bus_Data[31]_i_2_n_0\
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.system_axi_tft_0_0_pselect_f
     port map (
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg[3]\,
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\system_axi_tft_0_0_pselect_f__parameterized1\
     port map (
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg[3]\,
      ce_expnd_i_1 => ce_expnd_i_1
    );
\TFT_base_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => Bus_RNW_reg,
      O => \TFT_base_addr_reg[10]\(0)
    );
TFT_dps_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => Bus_RNW_reg,
      I3 => tft_dps,
      O => TFT_dps_reg_reg
    );
\TFT_iic_reg_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => Bus_RNW_reg,
      O => E(0)
    );
TFT_intr_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => Bus_RNW_reg,
      I3 => prmry_in,
      O => TFT_intr_en_reg
    );
TFT_on_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => Bus_RNW_reg,
      I3 => TFT_on_reg_reg_0,
      O => TFT_on_reg_reg
    );
TFT_status_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC5554FCFC0054"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => TFT_status_reg,
      I2 => tft_status_d2,
      I3 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      I5 => s_axi_wdata(0),
      O => TFT_status_reg_reg
    );
bus2ip_rdce_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      O => bus2ip_rdce_or
    );
bus2ip_wrce_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I4 => Bus_RNW_reg,
      O => bus2ip_wrce_or
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_srl_fifo_rbu_f is
  port (
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_srl_fifo_rbu_f : entity is "srl_fifo_rbu_f";
end system_axi_tft_0_0_srl_fifo_rbu_f;

architecture STRUCTURE of system_axi_tft_0_0_srl_fifo_rbu_f is
  signal CNTR_INCR_DECR_ADDN_F_I_n_1 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal FIFO_Full_reg_n_0 : STD_LOGIC;
  signal \fifo_full_p1__0\ : STD_LOGIC;
  signal sig_rd_empty : STD_LOGIC;
begin
CNTR_INCR_DECR_ADDN_F_I: entity work.system_axi_tft_0_0_cntr_incr_decr_addn_f
     port map (
      FIFO_Full_reg => FIFO_Full_reg_n_0,
      Q(2) => sig_rd_empty,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      m_axi_aclk => m_axi_aclk,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \fifo_full_p1__0\,
      Q => FIFO_Full_reg_n_0,
      R => \out\
    );
fifo_full_p1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000400A2AA"
    )
        port map (
      I0 => CNTR_INCR_DECR_ADDN_F_I_n_1,
      I1 => sig_inhibit_rdy_n,
      I2 => FIFO_Full_reg_n_0,
      I3 => m_axi_bvalid,
      I4 => CNTR_INCR_DECR_ADDN_F_I_n_2,
      I5 => sig_rd_empty,
      O => \fifo_full_p1__0\
    );
m_axi_bready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_inhibit_rdy_n,
      I1 => FIFO_Full_reg_n_0,
      O => m_axi_bready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_blk_mem_gen_prim_width is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    POR_B : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    AXI_BRAM_we_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end system_axi_tft_0_0_blk_mem_gen_prim_width;

architecture STRUCTURE of system_axi_tft_0_0_blk_mem_gen_prim_width is
  signal ENA_dly_D : STD_LOGIC;
  signal ENB_dly : STD_LOGIC;
  signal \^por_b\ : STD_LOGIC;
  signal RSTA_SHFT_REG : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RSTB_SHFT_REG : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.POR_B_i_1_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2\ : label is "U0/\TFT_CTRL_I/LINE_BUFFER_U4/RAM/lib_fifo_instance.USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop ";
  attribute srl_name : string;
  attribute srl_name of \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2\ : label is "U0/\TFT_CTRL_I/LINE_BUFFER_U4/RAM/lib_fifo_instance.USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 ";
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "U0/\TFT_CTRL_I/LINE_BUFFER_U4/RAM/lib_fifo_instance.USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg ";
  attribute srl_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "U0/\TFT_CTRL_I/LINE_BUFFER_U4/RAM/lib_fifo_instance.USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 ";
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "U0/\TFT_CTRL_I/LINE_BUFFER_U4/RAM/lib_fifo_instance.USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg ";
  attribute srl_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "U0/\TFT_CTRL_I/LINE_BUFFER_U4/RAM/lib_fifo_instance.USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 ";
begin
  POR_B <= \^por_b\;
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0\,
      Q => ENA_dly_D,
      R => '0'
    );
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => m_axi_aclk,
      D => p_3_out,
      Q => \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0\
    );
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RSTA_SHFT_REG(4),
      I1 => RSTA_SHFT_REG(0),
      O => p_3_out
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => ENB_dly,
      Q => ENB_dly_D,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \^por_b\,
      Q => ENB_dly,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\SAFETY_CKT_GEN.POR_B_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RSTB_SHFT_REG(4),
      I1 => RSTB_SHFT_REG(0),
      O => \SAFETY_CKT_GEN.POR_B_i_1_n_0\
    );
\SAFETY_CKT_GEN.POR_B_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \SAFETY_CKT_GEN.POR_B_i_1_n_0\,
      Q => \^por_b\,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => RSTA_SHFT_REG(0),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => m_axi_aclk,
      D => RSTA_SHFT_REG(0),
      Q => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\,
      Q => RSTA_SHFT_REG(4),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => '1',
      Q => RSTB_SHFT_REG(0),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => sys_tft_clk,
      D => RSTB_SHFT_REG(0),
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\,
      Q => RSTB_SHFT_REG(4),
      R => '0'
    );
\prim_noinit.ram\: entity work.system_axi_tft_0_0_blk_mem_gen_prim_wrapper
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      D(35 downto 0) => D(35 downto 0),
      E(0) => E(0),
      ENA_dly_D => ENA_dly_D,
      ENB_I => ENB_I,
      Q(8 downto 0) => Q(8 downto 0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      sys_tft_clk => sys_tft_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_clk_x_pntrs is
  port (
    ram_full_fb_i_reg : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aclk : in STD_LOGIC;
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    \gc1.count_d2_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_clk_x_pntrs : entity is "clk_x_pntrs";
end system_axi_tft_0_0_clk_x_pntrs;

architecture STRUCTURE of system_axi_tft_0_0_clk_x_pntrs is
  signal p_25_out : STD_LOGIC_VECTOR ( 8 to 8 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 9;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 9;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_25_out(8),
      I1 => Q(0),
      O => ram_full_fb_i_reg
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_25_out(8),
      I1 => \gic0.gc1.count_d1_reg[8]\(0),
      O => ram_full_fb_i_reg_0
    );
rd_pntr_cdc_inst: entity work.system_axi_tft_0_0_xpm_cdc_gray
     port map (
      dest_clk => m_axi_aclk,
      dest_out_bin(8) => p_25_out(8),
      dest_out_bin(7 downto 0) => RD_PNTR_WR(7 downto 0),
      src_clk => sys_tft_clk,
      src_in_bin(8 downto 0) => \gc1.count_d2_reg[8]\(8 downto 0)
    );
wr_pntr_cdc_inst: entity work.\system_axi_tft_0_0_xpm_cdc_gray__1\
     port map (
      dest_clk => sys_tft_clk,
      dest_out_bin(8 downto 0) => WR_PNTR_RD(8 downto 0),
      src_clk => m_axi_aclk,
      src_in_bin(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_rd_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    \gc1.count_d2_reg[8]\ : in STD_LOGIC;
    \gc1.count_d1_reg[8]\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc1.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_rd_status_flags_as : entity is "rd_status_flags_as";
end system_axi_tft_0_0_rd_status_flags_as;

architecture STRUCTURE of system_axi_tft_0_0_rd_status_flags_as is
  signal c0_n_0 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
c0: entity work.system_axi_tft_0_0_compare_6
     port map (
      Q(7 downto 0) => Q(7 downto 0),
      WR_PNTR_RD(7 downto 0) => WR_PNTR_RD(7 downto 0),
      comp1 => comp1,
      \gc1.count_d2_reg[8]\ => \gc1.count_d2_reg[8]\,
      \gpregsm1.curr_fwft_state_reg[0]\ => \gpregsm1.curr_fwft_state_reg[0]\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => ram_empty_fb_i,
      ram_empty_fb_i_reg => c0_n_0
    );
c1: entity work.system_axi_tft_0_0_compare_7
     port map (
      WR_PNTR_RD(7 downto 0) => WR_PNTR_RD(7 downto 0),
      comp1 => comp1,
      \gc1.count_d1_reg[7]\(7 downto 0) => \gc1.count_d1_reg[7]\(7 downto 0),
      \gc1.count_d1_reg[8]\ => \gc1.count_d1_reg[8]\
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => c0_n_0,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => c0_n_0,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_reset_blk_ramfifo is
  port (
    \syncstages_ff_reg[0]\ : out STD_LOGIC;
    \syncstages_ff_reg[0]_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    ram_rstram_b : out STD_LOGIC;
    tft_rst : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    POR_B : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_reset_blk_ramfifo : entity is "reset_blk_ramfifo";
end system_axi_tft_0_0_reset_blk_ramfifo;

architecture STRUCTURE of system_axi_tft_0_0_reset_blk_ramfifo is
  signal arst_sync_rd_rst : STD_LOGIC;
  signal dest_out : STD_LOGIC;
  signal dest_rst : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal \^syncstages_ff_reg[0]\ : STD_LOGIC;
  signal \^syncstages_ff_reg[0]_0\ : STD_LOGIC;
  signal wr_rst_busy_i : STD_LOGIC;
  signal wr_rst_rd_ext : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT : string;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
begin
  \out\ <= rst_d3;
  \syncstages_ff_reg[0]\ <= \^syncstages_ff_reg[0]\;
  \syncstages_ff_reg[0]_0\ <= \^syncstages_ff_reg[0]_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^syncstages_ff_reg[0]_0\,
      I1 => POR_B,
      O => ram_rstram_b
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => wr_rst_busy_i,
      Q => rst_d1,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => rst_d1,
      Q => rst_d2,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => rst_d2,
      Q => rst_d3,
      S => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => wr_rst_rd_ext(1),
      I1 => \^syncstages_ff_reg[0]_0\,
      I2 => arst_sync_rd_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\,
      Q => \^syncstages_ff_reg[0]_0\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => \^syncstages_ff_reg[0]\,
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      I3 => dest_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\,
      Q => \^syncstages_ff_reg[0]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB0F0B0B0"
    )
        port map (
      I0 => rd_rst_wr_ext(2),
      I1 => rd_rst_wr_ext(3),
      I2 => wr_rst_busy_i,
      I3 => rd_rst_wr_ext(0),
      I4 => rd_rst_wr_ext(1),
      I5 => dest_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\,
      Q => wr_rst_busy_i,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => dest_out,
      Q => wr_rst_rd_ext(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => wr_rst_rd_ext(0),
      Q => wr_rst_rd_ext(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.system_axi_tft_0_0_xpm_cdc_single
     port map (
      dest_clk => m_axi_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => sys_tft_clk,
      src_in => \^syncstages_ff_reg[0]_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\system_axi_tft_0_0_xpm_cdc_single__1\
     port map (
      dest_clk => sys_tft_clk,
      dest_out => dest_out,
      src_clk => m_axi_aclk,
      src_in => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\: entity work.system_axi_tft_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => sys_tft_clk,
      dest_rst => arst_sync_rd_rst,
      src_rst => tft_rst
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\: entity work.\system_axi_tft_0_0_xpm_cdc_sync_rst__1\
     port map (
      dest_clk => m_axi_aclk,
      dest_rst => dest_rst,
      src_rst => tft_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_wr_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_out_bin_ff_reg[8]\ : in STD_LOGIC;
    \dest_out_bin_ff_reg[8]_0\ : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    AXI_BRAM_we_i : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc1.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_wr_status_flags_as : entity is "wr_status_flags_as";
end system_axi_tft_0_0_wr_status_flags_as;

architecture STRUCTURE of system_axi_tft_0_0_wr_status_flags_as is
  signal c2_n_0 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  \out\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => AXI_BRAM_we_i,
      I1 => ram_full_fb_i,
      O => E(0)
    );
c1: entity work.system_axi_tft_0_0_compare
     port map (
      Q(7 downto 0) => Q(7 downto 0),
      RD_PNTR_WR(7 downto 0) => RD_PNTR_WR(7 downto 0),
      comp1 => comp1,
      \dest_out_bin_ff_reg[8]\ => \dest_out_bin_ff_reg[8]\
    );
c2: entity work.system_axi_tft_0_0_compare_5
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      RD_PNTR_WR(7 downto 0) => RD_PNTR_WR(7 downto 0),
      comp1 => comp1,
      \dest_out_bin_ff_reg[8]\ => \dest_out_bin_ff_reg[8]_0\,
      \gic0.gc1.count_d1_reg[7]\(7 downto 0) => \gic0.gc1.count_d1_reg[7]\(7 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => ram_full_fb_i,
      ram_full_fb_i_reg => c2_n_0
    );
ram_full_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => c2_n_0,
      Q => ram_full_fb_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
ram_full_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => c2_n_0,
      Q => ram_full_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_slave_attachment is
  port (
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    TFT_status_reg_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_wrce_or : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \IP2Bus_Data_reg[0]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[16]\ : out STD_LOGIC;
    bus2ip_rdce_or : out STD_LOGIC;
    \IP2Bus_Data_reg[28]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[30]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[1]\ : out STD_LOGIC;
    TFT_intr_en_reg : out STD_LOGIC;
    TFT_dps_reg_reg : out STD_LOGIC;
    TFT_on_reg_reg : out STD_LOGIC;
    \TFT_base_addr_reg[10]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 26 downto 0 );
    cs_ce_clr : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    TFT_status_reg : in STD_LOGIC;
    tft_status_d2 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bus2ip_rdce_d1_reg : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \TFT_base_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    TFT_iic_xfer : in STD_LOGIC;
    \TFT_iic_reg_data_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    prmry_in : in STD_LOGIC;
    tft_dps : in STD_LOGIC;
    TFT_on_reg_reg_0 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bus2ip_wrce_d1 : in STD_LOGIC;
    bus2ip_wrce_d2 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bus2ip_rdce_d2 : in STD_LOGIC;
    bus2ip_rdce_d1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_slave_attachment : entity is "slave_attachment";
end system_axi_tft_0_0_slave_attachment;

architecture STRUCTURE of system_axi_tft_0_0_slave_attachment is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal bus2ip_rnw_i : STD_LOGIC;
  signal bus2ip_rnw_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rdata_i : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state_reg[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair6";
begin
  Q(0) <= \^q\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
I_DECODER: entity work.system_axi_tft_0_0_address_decoder
     port map (
      E(0) => E(0),
      \IP2Bus_Data_reg[0]\ => \IP2Bus_Data_reg[0]\,
      \IP2Bus_Data_reg[16]\ => \IP2Bus_Data_reg[16]\,
      \IP2Bus_Data_reg[1]\ => \IP2Bus_Data_reg[1]\,
      \IP2Bus_Data_reg[28]\ => \IP2Bus_Data_reg[28]\,
      \IP2Bus_Data_reg[30]\ => \IP2Bus_Data_reg[30]\,
      \IP2Bus_Data_reg[31]\ => \IP2Bus_Data_reg[31]\,
      Q => start2,
      \TFT_base_addr_reg[0]\(0) => \TFT_base_addr_reg[0]\(0),
      \TFT_base_addr_reg[10]\(0) => \TFT_base_addr_reg[10]\(0),
      TFT_dps_reg_reg => TFT_dps_reg_reg,
      \TFT_iic_reg_data_reg[4]\(2 downto 0) => \TFT_iic_reg_data_reg[4]\(2 downto 0),
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_intr_en_reg => TFT_intr_en_reg,
      TFT_on_reg_reg => TFT_on_reg_reg,
      TFT_on_reg_reg_0 => TFT_on_reg_reg_0,
      TFT_status_reg => TFT_status_reg,
      TFT_status_reg_reg => TFT_status_reg_reg,
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg_n_0_[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg_n_0_[3]\,
      bus2ip_rdce_or => bus2ip_rdce_or,
      bus2ip_rnw_i => bus2ip_rnw_i,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce_or => bus2ip_wrce_or,
      cs_ce_clr => cs_ce_clr,
      prmry_in => prmry_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(2 downto 0) => s_axi_wdata(2 downto 0),
      tft_dps => tft_dps,
      tft_status_d2 => tft_status_d2
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \bus2ip_addr_i[2]_i_2_n_0\,
      I1 => \bus2ip_addr_i[3]_i_3_n_0\,
      I2 => \bus2ip_addr_i_reg_n_0_[2]\,
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => state(1),
      I1 => \^q\(0),
      I2 => s_axi_araddr(0),
      I3 => s_axi_arvalid,
      I4 => s_axi_awaddr(0),
      O => \bus2ip_addr_i[2]_i_2_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \bus2ip_addr_i[3]_i_2_n_0\,
      I1 => \bus2ip_addr_i[3]_i_3_n_0\,
      I2 => \bus2ip_addr_i_reg_n_0_[3]\,
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => state(1),
      I1 => \^q\(0),
      I2 => s_axi_araddr(1),
      I3 => s_axi_arvalid,
      I4 => s_axi_awaddr(1),
      O => \bus2ip_addr_i[3]_i_2_n_0\
    );
\bus2ip_addr_i[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005540"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_arvalid,
      I4 => state(1),
      O => \bus2ip_addr_i[3]_i_3_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => bus2ip_sreset
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => bus2ip_sreset
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00005500"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_arvalid,
      I4 => state(1),
      I5 => bus2ip_rnw_i,
      O => bus2ip_rnw_i_i_1_n_0
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rnw_i_i_1_n_0,
      Q => bus2ip_rnw_i,
      R => bus2ip_sreset
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => bus2ip_wrce_d2,
      I2 => bus2ip_wrce_d1,
      I3 => state(1),
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => bus2ip_sreset
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => state(1),
      O => s_axi_rdata_i
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(0),
      Q => s_axi_rdata(0),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(10),
      Q => s_axi_rdata(10),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(11),
      Q => s_axi_rdata(11),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(12),
      Q => s_axi_rdata(12),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(13),
      Q => s_axi_rdata(13),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(14),
      Q => s_axi_rdata(14),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(15),
      Q => s_axi_rdata(15),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(1),
      Q => s_axi_rdata(1),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(16),
      Q => s_axi_rdata(16),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(17),
      Q => s_axi_rdata(17),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(18),
      Q => s_axi_rdata(18),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(19),
      Q => s_axi_rdata(19),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(20),
      Q => s_axi_rdata(20),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(21),
      Q => s_axi_rdata(21),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(22),
      Q => s_axi_rdata(22),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(23),
      Q => s_axi_rdata(23),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(24),
      Q => s_axi_rdata(24),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(2),
      Q => s_axi_rdata(2),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(25),
      Q => s_axi_rdata(25),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(26),
      Q => s_axi_rdata(26),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(3),
      Q => s_axi_rdata(3),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(4),
      Q => s_axi_rdata(4),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(5),
      Q => s_axi_rdata(5),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(6),
      Q => s_axi_rdata(6),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(7),
      Q => s_axi_rdata(7),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(8),
      Q => s_axi_rdata(8),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(9),
      Q => s_axi_rdata(9),
      R => bus2ip_sreset
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10001000"
    )
        port map (
      I0 => state(1),
      I1 => bus2ip_rdce_d2,
      I2 => bus2ip_rdce_d1,
      I3 => \^q\(0),
      I4 => s_axi_rready,
      I5 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => bus2ip_sreset
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000F08"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => state(1),
      I3 => s_axi_arvalid,
      I4 => \^q\(0),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => bus2ip_sreset
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAFF0CFF0C00"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => bus2ip_wrce_d1,
      I2 => bus2ip_wrce_d2,
      I3 => state(1),
      I4 => s_axi_arvalid,
      I5 => \^q\(0),
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_bready,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0777FFFF"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      I4 => \^q\(0),
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^q\(0),
      R => bus2ip_sreset
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state_reg[1]_i_1_n_0\,
      Q => state(1),
      R => bus2ip_sreset
    );
\state_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => bus2ip_rdce_d1_reg,
      I1 => \state[1]_i_3_n_0\,
      O => \state_reg[1]_i_1_n_0\,
      S => state(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_srl_fifo_f is
  port (
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_srl_fifo_f : entity is "srl_fifo_f";
end system_axi_tft_0_0_srl_fifo_f;

architecture STRUCTURE of system_axi_tft_0_0_srl_fifo_f is
begin
I_SRL_FIFO_RBU_F: entity work.system_axi_tft_0_0_srl_fifo_rbu_f
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_blk_mem_gen_generic_cstr is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    POR_B : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    AXI_BRAM_we_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end system_axi_tft_0_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of system_axi_tft_0_0_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.system_axi_tft_0_0_blk_mem_gen_prim_width
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      D(35 downto 0) => D(35 downto 0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      sys_tft_clk => sys_tft_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_rd_logic is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_dly_D : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_rd_logic : entity is "rd_logic";
end system_axi_tft_0_0_rd_logic;

architecture STRUCTURE of system_axi_tft_0_0_rd_logic is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gr1.gr1_int.rfwft_n_3\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rpntr_n_0 : STD_LOGIC;
  signal rpntr_n_10 : STD_LOGIC;
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\gr1.gr1_int.rfwft\: entity work.system_axi_tft_0_0_rd_fwft
     port map (
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      \gc1.count_d1_reg[8]\(0) => p_8_out,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out,
      ram_empty_fb_i_reg => \gr1.gr1_int.rfwft_n_3\,
      sys_tft_clk => sys_tft_clk
    );
\gras.rsts\: entity work.system_axi_tft_0_0_rd_status_flags_as
     port map (
      Q(7 downto 0) => \^q\(7 downto 0),
      WR_PNTR_RD(7 downto 0) => WR_PNTR_RD(7 downto 0),
      \gc1.count_d1_reg[7]\(7 downto 0) => rd_pntr_plus1(7 downto 0),
      \gc1.count_d1_reg[8]\ => rpntr_n_10,
      \gc1.count_d2_reg[8]\ => rpntr_n_0,
      \gpregsm1.curr_fwft_state_reg[0]\ => \gr1.gr1_int.rfwft_n_3\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out,
      sys_tft_clk => sys_tft_clk
    );
rpntr: entity work.system_axi_tft_0_0_rd_bin_cntr
     port map (
      E(0) => p_8_out,
      Q(8 downto 0) => \^q\(8 downto 0),
      WR_PNTR_RD(0) => WR_PNTR_RD(8),
      \gc1.count_d2_reg[7]_0\(7 downto 0) => rd_pntr_plus1(7 downto 0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      ram_empty_fb_i_reg => rpntr_n_0,
      ram_empty_fb_i_reg_0 => rpntr_n_10,
      sys_tft_clk => sys_tft_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_wr_logic is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \dest_out_bin_ff_reg[8]\ : in STD_LOGIC;
    \dest_out_bin_ff_reg[8]_0\ : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    AXI_BRAM_we_i : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_wr_logic : entity is "wr_logic";
end system_axi_tft_0_0_wr_logic;

architecture STRUCTURE of system_axi_tft_0_0_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.system_axi_tft_0_0_wr_status_flags_as
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      E(0) => \^e\(0),
      Q(7 downto 0) => p_14_out(7 downto 0),
      RD_PNTR_WR(7 downto 0) => RD_PNTR_WR(7 downto 0),
      \dest_out_bin_ff_reg[8]\ => \dest_out_bin_ff_reg[8]\,
      \dest_out_bin_ff_reg[8]_0\ => \dest_out_bin_ff_reg[8]_0\,
      \gic0.gc1.count_d1_reg[7]\(7 downto 0) => wr_pntr_plus2(7 downto 0),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      m_axi_aclk => m_axi_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\,
      \out\ => \out\
    );
wpntr: entity work.system_axi_tft_0_0_wr_bin_cntr
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      E(0) => \^e\(0),
      Q(8) => Q(0),
      Q(7 downto 0) => wr_pntr_plus2(7 downto 0),
      \gic0.gc1.count_d3_reg[8]_0\(8) => \gic0.gc1.count_d3_reg[8]\(0),
      \gic0.gc1.count_d3_reg[8]_0\(7 downto 0) => p_14_out(7 downto 0),
      m_axi_aclk => m_axi_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_lite_ipif is
  port (
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    TFT_status_reg_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_wrce_or : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \IP2Bus_Data_reg[0]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[16]\ : out STD_LOGIC;
    bus2ip_rdce_or : out STD_LOGIC;
    \IP2Bus_Data_reg[28]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[30]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[1]\ : out STD_LOGIC;
    TFT_intr_en_reg : out STD_LOGIC;
    TFT_dps_reg_reg : out STD_LOGIC;
    TFT_on_reg_reg : out STD_LOGIC;
    \TFT_base_addr_reg[10]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 26 downto 0 );
    cs_ce_clr : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    TFT_status_reg : in STD_LOGIC;
    tft_status_d2 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bus2ip_rdce_d1_reg : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \TFT_base_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    TFT_iic_xfer : in STD_LOGIC;
    \TFT_iic_reg_data_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    prmry_in : in STD_LOGIC;
    tft_dps : in STD_LOGIC;
    TFT_on_reg_reg_0 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bus2ip_wrce_d1 : in STD_LOGIC;
    bus2ip_wrce_d2 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bus2ip_rdce_d2 : in STD_LOGIC;
    bus2ip_rdce_d1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 26 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_lite_ipif : entity is "axi_lite_ipif";
end system_axi_tft_0_0_axi_lite_ipif;

architecture STRUCTURE of system_axi_tft_0_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.system_axi_tft_0_0_slave_attachment
     port map (
      D(26 downto 0) => D(26 downto 0),
      E(0) => E(0),
      \IP2Bus_Data_reg[0]\ => \IP2Bus_Data_reg[0]\,
      \IP2Bus_Data_reg[16]\ => \IP2Bus_Data_reg[16]\,
      \IP2Bus_Data_reg[1]\ => \IP2Bus_Data_reg[1]\,
      \IP2Bus_Data_reg[28]\ => \IP2Bus_Data_reg[28]\,
      \IP2Bus_Data_reg[30]\ => \IP2Bus_Data_reg[30]\,
      \IP2Bus_Data_reg[31]\ => \IP2Bus_Data_reg[31]\,
      Q(0) => Q(0),
      \TFT_base_addr_reg[0]\(0) => \TFT_base_addr_reg[0]\(0),
      \TFT_base_addr_reg[10]\(0) => \TFT_base_addr_reg[10]\(0),
      TFT_dps_reg_reg => TFT_dps_reg_reg,
      \TFT_iic_reg_data_reg[4]\(2 downto 0) => \TFT_iic_reg_data_reg[4]\(2 downto 0),
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_intr_en_reg => TFT_intr_en_reg,
      TFT_on_reg_reg => TFT_on_reg_reg,
      TFT_on_reg_reg_0 => TFT_on_reg_reg_0,
      TFT_status_reg => TFT_status_reg,
      TFT_status_reg_reg => TFT_status_reg_reg,
      bus2ip_rdce_d1 => bus2ip_rdce_d1,
      bus2ip_rdce_d1_reg => bus2ip_rdce_d1_reg,
      bus2ip_rdce_d2 => bus2ip_rdce_d2,
      bus2ip_rdce_or => bus2ip_rdce_or,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce_d1 => bus2ip_wrce_d1,
      bus2ip_wrce_d2 => bus2ip_wrce_d2,
      bus2ip_wrce_or => bus2ip_wrce_or,
      cs_ce_clr => cs_ce_clr,
      prmry_in => prmry_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(26 downto 0) => s_axi_rdata(26 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(2 downto 0) => s_axi_wdata(2 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      tft_dps => tft_dps,
      tft_status_d2 => tft_status_d2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_fifo is
  port (
    sig_init_reg : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_fifo : entity is "axi_master_burst_fifo";
end system_axi_tft_0_0_axi_master_burst_fifo;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_fifo is
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\ : STD_LOGIC;
  signal sig_inhibit_rdy_n : STD_LOGIC;
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal sig_init_done : STD_LOGIC;
  signal sig_init_done_i_1_n_0 : STD_LOGIC;
  signal \^sig_init_reg\ : STD_LOGIC;
begin
  sig_init_reg <= \^sig_init_reg\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.system_axi_tft_0_0_srl_fifo_f
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_init_done,
      I1 => sig_inhibit_rdy_n,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => sig_inhibit_rdy_n,
      R => \out\
    );
sig_init_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \out\,
      I1 => \^sig_init_reg\,
      I2 => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\,
      I3 => sig_init_done,
      O => sig_init_done_i_1_n_0
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_init_done_i_1_n_0,
      Q => sig_init_done,
      R => '0'
    );
sig_init_reg2_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \^sig_init_reg\,
      Q => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\,
      S => \out\
    );
sig_init_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \out\,
      Q => \^sig_init_reg\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_blk_mem_gen_top is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    POR_B : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    AXI_BRAM_we_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end system_axi_tft_0_0_blk_mem_gen_top;

architecture STRUCTURE of system_axi_tft_0_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.system_axi_tft_0_0_blk_mem_gen_generic_cstr
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      D(35 downto 0) => D(35 downto 0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      sys_tft_clk => sys_tft_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_wr_status_cntl is
  port (
    sig_init_reg : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_wr_status_cntl : entity is "axi_master_burst_wr_status_cntl";
end system_axi_tft_0_0_axi_master_burst_wr_status_cntl;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_wr_status_cntl is
begin
I_WRESP_STATUS_FIFO: entity work.system_axi_tft_0_0_axi_master_burst_fifo
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_init_reg => sig_init_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_blk_mem_gen_v8_4_1_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    POR_B : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    AXI_BRAM_we_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_blk_mem_gen_v8_4_1_synth : entity is "blk_mem_gen_v8_4_1_synth";
end system_axi_tft_0_0_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of system_axi_tft_0_0_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.system_axi_tft_0_0_blk_mem_gen_top
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      D(35 downto 0) => D(35 downto 0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      sys_tft_clk => sys_tft_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst_rd_wr_cntlr is
  port (
    sig_m_valid_out_reg : out STD_LOGIC;
    sig_llink_busy_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    sig_rsc2stat_status_valid : out STD_LOGIC;
    sig_error_sh_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_doing_read_reg : out STD_LOGIC;
    sig_rd2llink_strm_tlast : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_btt_cntr_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_push_input_reg16_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc_taking_command : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    sig_error_sh_reg_reg_0 : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \AXI_BRAM_data_i_reg[40]\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_rd_sts_tag_reg0 : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_cmd_reset_reg_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd2pcc_cmd_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sig_llink2rd_allow_addr_req : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    sig_status_reg_empty : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy_reg : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 17 downto 0 );
    sig_cmd_mst_be : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_push_status1_out : in STD_LOGIC;
    md_error : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    sig_llink_busy_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst_rd_wr_cntlr : entity is "axi_master_burst_rd_wr_cntlr";
end system_axi_tft_0_0_axi_master_burst_rd_wr_cntlr;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst_rd_wr_cntlr is
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\ : STD_LOGIC;
  signal I_MSTR_PCC_n_11 : STD_LOGIC;
  signal I_MSTR_PCC_n_12 : STD_LOGIC;
  signal I_MSTR_PCC_n_13 : STD_LOGIC;
  signal I_MSTR_PCC_n_14 : STD_LOGIC;
  signal I_MSTR_PCC_n_15 : STD_LOGIC;
  signal I_MSTR_PCC_n_16 : STD_LOGIC;
  signal I_MSTR_PCC_n_17 : STD_LOGIC;
  signal I_MSTR_PCC_n_18 : STD_LOGIC;
  signal I_MSTR_PCC_n_19 : STD_LOGIC;
  signal I_MSTR_PCC_n_20 : STD_LOGIC;
  signal I_MSTR_PCC_n_21 : STD_LOGIC;
  signal I_MSTR_PCC_n_22 : STD_LOGIC;
  signal I_MSTR_PCC_n_23 : STD_LOGIC;
  signal I_MSTR_PCC_n_24 : STD_LOGIC;
  signal I_MSTR_PCC_n_25 : STD_LOGIC;
  signal I_MSTR_PCC_n_26 : STD_LOGIC;
  signal I_MSTR_PCC_n_27 : STD_LOGIC;
  signal I_MSTR_PCC_n_29 : STD_LOGIC;
  signal I_RD_DATA_CNTL_n_2 : STD_LOGIC;
  signal I_RD_DATA_CNTL_n_3 : STD_LOGIC;
  signal I_READ_STREAM_SKID_BUF_n_5 : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_7\ : STD_LOGIC;
  signal sig_addr2data_addr_posted : STD_LOGIC;
  signal sig_addr2stat_cmd_fifo_empty : STD_LOGIC;
  signal \^sig_error_sh_reg_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_next_eof_reg : STD_LOGIC;
  signal sig_pcc2addr_addr : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal sig_pcc2addr_burst : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_pcc2addr_cmd_valid : STD_LOGIC;
  signal sig_pcc2data_calc_error : STD_LOGIC;
  signal sig_pcc2data_cmd_cmplt : STD_LOGIC;
  signal sig_pcc2data_cmd_valid : STD_LOGIC;
  signal sig_pcc2data_dre_src_align : STD_LOGIC;
  signal sig_pcc2data_eof : STD_LOGIC;
  signal sig_pcc2data_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_pcc2data_saddr_lsb : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sig_pcc2data_sequential : STD_LOGIC;
  signal sig_push_rd_sts_reg : STD_LOGIC;
  signal sig_rd_addr_valid_reg0 : STD_LOGIC;
  signal sig_rd_sts_decerr_reg0 : STD_LOGIC;
  signal sig_rd_sts_interr_reg0 : STD_LOGIC;
  signal sig_rd_sts_slverr_reg0 : STD_LOGIC;
  signal sig_rdc2pcc_cmd_ready : STD_LOGIC;
  signal sig_rdc2rdskid_tlast : STD_LOGIC;
  signal sig_rdskid2rdc_tready : STD_LOGIC;
  signal sig_rsc2rdc_ready : STD_LOGIC;
  signal sig_rsc2stat_status : STD_LOGIC_VECTOR ( 6 downto 5 );
  signal \^sig_rsc2stat_status_valid\ : STD_LOGIC;
  signal \NLW_i_/i_/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  sig_error_sh_reg_reg(0) <= \^sig_error_sh_reg_reg\(0);
  sig_rsc2stat_status_valid <= \^sig_rsc2stat_status_valid\;
I_ADDR_CNTL: entity work.system_axi_tft_0_0_axi_master_burst_addr_cntl
     port map (
      Q(31 downto 2) => sig_pcc2addr_addr(31 downto 2),
      Q(1) => sig_pcc2data_saddr_lsb(1),
      Q(0) => sig_pcc2data_dre_src_align,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(0) => m_axi_arburst(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => m_axi_arsize(0),
      m_axi_arvalid => m_axi_arvalid,
      \out\ => sig_addr2data_addr_posted,
      sig_addr2stat_cmd_fifo_empty => sig_addr2stat_cmd_fifo_empty,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      sig_pcc2addr_burst(0) => sig_pcc2addr_burst(0),
      sig_pcc2addr_cmd_valid => sig_pcc2addr_cmd_valid,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_rd_addr_valid_reg0 => sig_rd_addr_valid_reg0,
      sig_rdwr_reset_reg_reg => \out\,
      \sig_xfer_len_reg_reg[7]\(7 downto 0) => sig_pcc2data_len(7 downto 0)
    );
I_MSTR_PCC: entity work.system_axi_tft_0_0_axi_master_burst_pcc
     port map (
      D(1 downto 0) => D(1 downto 0),
      DI(0) => I_MSTR_PCC_n_27,
      E(0) => E(0),
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(3) => I_MSTR_PCC_n_15,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(2) => I_MSTR_PCC_n_16,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(1) => I_MSTR_PCC_n_17,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[11]_0\(0) => I_MSTR_PCC_n_18,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[3]_0\(3) => I_MSTR_PCC_n_23,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[3]_0\(2) => I_MSTR_PCC_n_24,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[3]_0\(1) => I_MSTR_PCC_n_25,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[3]_0\(0) => I_MSTR_PCC_n_26,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(3) => I_MSTR_PCC_n_19,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(2) => I_MSTR_PCC_n_20,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(1) => I_MSTR_PCC_n_21,
      \GEN_ADDR_32.sig_addr_cntr_msh_reg[7]_0\(0) => I_MSTR_PCC_n_22,
      \GEN_ADDR_32.sig_first_xfer_reg_0\ => sig_push_input_reg16_out,
      O(3) => \i_/i_/i__carry_n_4\,
      O(2) => \i_/i_/i__carry_n_5\,
      O(1) => \i_/i_/i__carry_n_6\,
      O(0) => \i_/i_/i__carry_n_7\,
      Q(24 downto 0) => Q(24 downto 0),
      S(3) => I_MSTR_PCC_n_11,
      S(2) => I_MSTR_PCC_n_12,
      S(1) => I_MSTR_PCC_n_13,
      S(0) => I_MSTR_PCC_n_14,
      SR(0) => SR(0),
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      sig_addr2stat_cmd_fifo_empty => sig_addr2stat_cmd_fifo_empty,
      \sig_btt_cntr_reg[7]_0\(1 downto 0) => \sig_btt_cntr_reg[7]\(1 downto 0),
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      \sig_cmd_mst_addr_reg[23]\(3) => \i_/i_/i__carry__0_n_4\,
      \sig_cmd_mst_addr_reg[23]\(2) => \i_/i_/i__carry__0_n_5\,
      \sig_cmd_mst_addr_reg[23]\(1) => \i_/i_/i__carry__0_n_6\,
      \sig_cmd_mst_addr_reg[23]\(0) => \i_/i_/i__carry__0_n_7\,
      \sig_cmd_mst_addr_reg[27]\(3) => \i_/i_/i__carry__1_n_4\,
      \sig_cmd_mst_addr_reg[27]\(2) => \i_/i_/i__carry__1_n_5\,
      \sig_cmd_mst_addr_reg[27]\(1) => \i_/i_/i__carry__1_n_6\,
      \sig_cmd_mst_addr_reg[27]\(0) => \i_/i_/i__carry__1_n_7\,
      \sig_cmd_mst_addr_reg[31]\(3) => \i_/i_/i__carry__2_n_4\,
      \sig_cmd_mst_addr_reg[31]\(2) => \i_/i_/i__carry__2_n_5\,
      \sig_cmd_mst_addr_reg[31]\(1) => \i_/i_/i__carry__2_n_6\,
      \sig_cmd_mst_addr_reg[31]\(0) => \i_/i_/i__carry__2_n_7\,
      sig_cmd_mst_be(0) => sig_cmd_mst_be(0),
      sig_cmd_reset_reg_reg => sig_cmd_reset_reg_reg,
      sig_last_dbeat_reg => I_MSTR_PCC_n_29,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      \sig_next_addr_reg_reg[31]\(31 downto 2) => sig_pcc2addr_addr(31 downto 2),
      \sig_next_addr_reg_reg[31]\(1) => sig_pcc2data_saddr_lsb(1),
      \sig_next_addr_reg_reg[31]\(0) => sig_pcc2data_dre_src_align,
      \sig_next_len_reg_reg[7]\(7 downto 0) => sig_pcc2data_len(7 downto 0),
      sig_pcc2addr_burst(0) => sig_pcc2addr_burst(0),
      sig_pcc2addr_cmd_valid => sig_pcc2addr_cmd_valid,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_pcc2data_cmd_cmplt => sig_pcc2data_cmd_cmplt,
      sig_pcc2data_cmd_valid => sig_pcc2data_cmd_valid,
      sig_pcc2data_eof => sig_pcc2data_eof,
      sig_pcc2data_sequential => sig_pcc2data_sequential,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_rd_addr_valid_reg0 => sig_rd_addr_valid_reg0,
      sig_rdc2pcc_cmd_ready => sig_rdc2pcc_cmd_ready
    );
I_RD_DATA_CNTL: entity work.system_axi_tft_0_0_axi_master_burst_rddata_cntl
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_next_eof_reg => sig_next_eof_reg,
      sig_next_eof_reg_reg_0 => I_RD_DATA_CNTL_n_2,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_pcc2data_cmd_cmplt => sig_pcc2data_cmd_cmplt,
      sig_pcc2data_cmd_valid => sig_pcc2data_cmd_valid,
      sig_pcc2data_eof => sig_pcc2data_eof,
      sig_pcc2data_sequential => sig_pcc2data_sequential,
      sig_posted_to_axi_reg => sig_addr2data_addr_posted,
      sig_push_rd_sts_reg => sig_push_rd_sts_reg,
      sig_rd_sts_decerr_reg0 => sig_rd_sts_decerr_reg0,
      sig_rd_sts_interr_reg0 => sig_rd_sts_interr_reg0,
      sig_rd_sts_interr_reg_reg(0) => \^sig_error_sh_reg_reg\(0),
      sig_rd_sts_slverr_reg0 => sig_rd_sts_slverr_reg0,
      sig_rdc2pcc_cmd_ready => sig_rdc2pcc_cmd_ready,
      sig_rdc2rdskid_tlast => sig_rdc2rdskid_tlast,
      sig_rsc2rdc_ready => sig_rsc2rdc_ready,
      sig_rsc2stat_status(1 downto 0) => sig_rsc2stat_status(6 downto 5),
      sig_rsc2stat_status_valid => \^sig_rsc2stat_status_valid\,
      sig_s_ready_dup_reg => I_RD_DATA_CNTL_n_3,
      sig_s_ready_out_reg => I_READ_STREAM_SKID_BUF_n_5,
      sig_s_ready_out_reg_0 => sig_rdskid2rdc_tready,
      sig_status_reg_empty => sig_status_reg_empty,
      \sig_xfer_len_reg_reg[2]\ => I_MSTR_PCC_n_29,
      \sig_xfer_len_reg_reg[7]\(7 downto 0) => sig_pcc2data_len(7 downto 0)
    );
I_RD_STATUS_CNTLR: entity work.system_axi_tft_0_0_axi_master_burst_rd_status_cntl
     port map (
      m_axi_aclk => m_axi_aclk,
      md_error => md_error,
      sig_error_sh_reg_reg(0) => \^sig_error_sh_reg_reg\(0),
      sig_error_sh_reg_reg_0 => sig_error_sh_reg_reg_0,
      sig_push_rd_sts_reg => sig_push_rd_sts_reg,
      sig_push_status1_out => sig_push_status1_out,
      sig_rd_sts_decerr_reg0 => sig_rd_sts_decerr_reg0,
      sig_rd_sts_interr_reg0 => sig_rd_sts_interr_reg0,
      sig_rd_sts_slverr_reg0 => sig_rd_sts_slverr_reg0,
      sig_rd_sts_tag_reg0 => sig_rd_sts_tag_reg0,
      sig_rsc2rdc_ready => sig_rsc2rdc_ready,
      sig_rsc2stat_status(1 downto 0) => sig_rsc2stat_status(6 downto 5),
      sig_rsc2stat_status_valid => \^sig_rsc2stat_status_valid\
    );
I_READ_STREAM_SKID_BUF: entity work.system_axi_tft_0_0_axi_master_burst_skid_buf
     port map (
      \AXI_BRAM_data_i_reg[40]\(17 downto 0) => \AXI_BRAM_data_i_reg[40]\(17 downto 0),
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      IP2Bus_MstRd_dst_rdy_reg => IP2Bus_MstRd_dst_rdy_reg,
      m_axi_aclk => m_axi_aclk,
      m_axi_rdata(17 downto 0) => m_axi_rdata(17 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => sig_rdskid2rdc_tready,
      \sig_addr_posted_cntr_reg[1]\ => I_RD_DATA_CNTL_n_2,
      \sig_addr_posted_cntr_reg[1]_0\ => I_RD_DATA_CNTL_n_3,
      \sig_dbeat_cntr_reg[0]\ => I_READ_STREAM_SKID_BUF_n_5,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_llink_busy_reg => sig_llink_busy_reg,
      sig_llink_busy_reg_0(0) => sig_llink_busy_reg_0(0),
      sig_m_valid_out_reg_0 => sig_m_valid_out_reg,
      sig_next_eof_reg => sig_next_eof_reg,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rdc2rdskid_tlast => sig_rdc2rdskid_tlast,
      sig_rdwr_reset_reg_reg => \out\
    );
I_WRITE_MMAP_SKID_BUF: entity work.system_axi_tft_0_0_axi_master_burst_skid2mm_buf
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(0) => m_axi_wstrb(0),
      m_axi_wvalid => m_axi_wvalid,
      \out\ => \out\,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\
    );
I_WRITE_STRM_SKID_BUF: entity work.system_axi_tft_0_0_axi_master_burst_skid_buf_8
     port map (
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\
    );
I_WR_STATUS_CNTLR: entity work.system_axi_tft_0_0_axi_master_burst_wr_status_cntl
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_init_reg => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg\
    );
\i_/i_/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_/i_/i__carry_n_0\,
      CO(2) => \i_/i_/i__carry_n_1\,
      CO(1) => \i_/i_/i__carry_n_2\,
      CO(0) => \i_/i_/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => I_MSTR_PCC_n_27,
      O(3) => \i_/i_/i__carry_n_4\,
      O(2) => \i_/i_/i__carry_n_5\,
      O(1) => \i_/i_/i__carry_n_6\,
      O(0) => \i_/i_/i__carry_n_7\,
      S(3) => I_MSTR_PCC_n_23,
      S(2) => I_MSTR_PCC_n_24,
      S(1) => I_MSTR_PCC_n_25,
      S(0) => I_MSTR_PCC_n_26
    );
\i_/i_/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry_n_0\,
      CO(3) => \i_/i_/i__carry__0_n_0\,
      CO(2) => \i_/i_/i__carry__0_n_1\,
      CO(1) => \i_/i_/i__carry__0_n_2\,
      CO(0) => \i_/i_/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__0_n_4\,
      O(2) => \i_/i_/i__carry__0_n_5\,
      O(1) => \i_/i_/i__carry__0_n_6\,
      O(0) => \i_/i_/i__carry__0_n_7\,
      S(3) => I_MSTR_PCC_n_19,
      S(2) => I_MSTR_PCC_n_20,
      S(1) => I_MSTR_PCC_n_21,
      S(0) => I_MSTR_PCC_n_22
    );
\i_/i_/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__0_n_0\,
      CO(3) => \i_/i_/i__carry__1_n_0\,
      CO(2) => \i_/i_/i__carry__1_n_1\,
      CO(1) => \i_/i_/i__carry__1_n_2\,
      CO(0) => \i_/i_/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__1_n_4\,
      O(2) => \i_/i_/i__carry__1_n_5\,
      O(1) => \i_/i_/i__carry__1_n_6\,
      O(0) => \i_/i_/i__carry__1_n_7\,
      S(3) => I_MSTR_PCC_n_15,
      S(2) => I_MSTR_PCC_n_16,
      S(1) => I_MSTR_PCC_n_17,
      S(0) => I_MSTR_PCC_n_18
    );
\i_/i_/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__1_n_0\,
      CO(3) => \NLW_i_/i_/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__2_n_1\,
      CO(1) => \i_/i_/i__carry__2_n_2\,
      CO(0) => \i_/i_/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__2_n_4\,
      O(2) => \i_/i_/i__carry__2_n_5\,
      O(1) => \i_/i_/i__carry__2_n_6\,
      O(0) => \i_/i_/i__carry__2_n_7\,
      S(3) => I_MSTR_PCC_n_11,
      S(2) => I_MSTR_PCC_n_12,
      S(1) => I_MSTR_PCC_n_13,
      S(0) => I_MSTR_PCC_n_14
    );
sig_doing_read_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2all_doing_read,
      Q => sig_doing_read_reg,
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_blk_mem_gen_v8_4_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    POR_B : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    AXI_BRAM_we_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_v8_4_1";
end system_axi_tft_0_0_blk_mem_gen_v8_4_1;

architecture STRUCTURE of system_axi_tft_0_0_blk_mem_gen_v8_4_1 is
begin
inst_blk_mem_gen: entity work.system_axi_tft_0_0_blk_mem_gen_v8_4_1_synth
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      D(35 downto 0) => D(35 downto 0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      sys_tft_clk => sys_tft_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_master_burst is
  port (
    m_axi_wvalid : out STD_LOGIC;
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    sig_rd2llink_strm_tlast : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mst_cmplt : out STD_LOGIC;
    md_error : out STD_LOGIC;
    bus2ip_mst_cmdack : out STD_LOGIC;
    sig_rd_discontinue : out STD_LOGIC;
    sig_llink2cmd_rd_busy : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \AXI_DATA_WIDTH_32.mstr_src_rdy_n_reg\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mstrd_eof_n : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_aclk : in STD_LOGIC;
    ip2bus_mstrd_req : in STD_LOGIC;
    IP2Bus_Mst_Type : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy_reg : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    mstr_src_rdy_n : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    eof_n : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_master_burst : entity is "axi_master_burst";
end system_axi_tft_0_0_axi_master_burst;

architecture STRUCTURE of system_axi_tft_0_0_axi_master_burst is
  signal I_CMD_STATUS_MODULE_n_10 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_11 : STD_LOGIC;
  signal \I_MSTR_PCC/sig_btt_cntr0\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \I_MSTR_PCC/sig_push_input_reg16_out\ : STD_LOGIC;
  signal \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\ : STD_LOGIC;
  signal I_RD_WR_CNTRL_MODULE_n_17 : STD_LOGIC;
  signal \I_READ_STREAM_SKID_BUF/p_0_in2_in\ : STD_LOGIC;
  signal \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en\ : STD_LOGIC;
  signal \^md_error\ : STD_LOGIC;
  signal sig_cmd2all_doing_read : STD_LOGIC;
  signal sig_cmd2pcc_cmd_valid : STD_LOGIC;
  signal sig_cmd_mst_addr : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal sig_cmd_mst_be : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_cmd_mstrd_req0 : STD_LOGIC;
  signal sig_doing_read_reg : STD_LOGIC;
  signal \^sig_llink2cmd_rd_busy\ : STD_LOGIC;
  signal sig_llink2rd_allow_addr_req : STD_LOGIC;
  signal sig_pcc_taking_command : STD_LOGIC;
  signal sig_push_cmd_reg : STD_LOGIC;
  signal sig_push_status1_out : STD_LOGIC;
  signal \^sig_rd2llink_strm_tlast\ : STD_LOGIC;
  signal sig_rd2llink_strm_tvalid : STD_LOGIC;
  signal sig_rd_llink_enable : STD_LOGIC;
  signal sig_rdwr2llink_int_err : STD_LOGIC;
  signal sig_rsc2stat_status : STD_LOGIC_VECTOR ( 4 to 4 );
  signal sig_rsc2stat_status_valid : STD_LOGIC;
  signal sig_rst2cmd_stat_reset : STD_LOGIC;
  signal sig_rst2llink_reset : STD_LOGIC;
  signal sig_rst2rdwr_cntlr_reset : STD_LOGIC;
  signal sig_status_reg_empty : STD_LOGIC;
begin
  md_error <= \^md_error\;
  sig_llink2cmd_rd_busy <= \^sig_llink2cmd_rd_busy\;
  sig_rd2llink_strm_tlast <= \^sig_rd2llink_strm_tlast\;
I_CMD_STATUS_MODULE: entity work.system_axi_tft_0_0_axi_master_burst_cmd_status
     port map (
      D(1) => I_CMD_STATUS_MODULE_n_10,
      D(0) => I_CMD_STATUS_MODULE_n_11,
      E(0) => sig_push_cmd_reg,
      IP2Bus_Mst_Type => IP2Bus_Mst_Type,
      Q(24 downto 0) => sig_cmd_mst_addr(31 downto 7),
      SR(0) => sig_cmd_mstrd_req0,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      ip2bus_mstrd_req => ip2bus_mstrd_req,
      m_axi_aclk => m_axi_aclk,
      md_error => \^md_error\,
      \out\ => sig_rst2cmd_stat_reset,
      sig_btt_cntr0(1) => \I_MSTR_PCC/sig_btt_cntr0\(7),
      sig_btt_cntr0(0) => \I_MSTR_PCC/sig_btt_cntr0\(2),
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_mst_be(0) => sig_cmd_mst_be(0),
      sig_doing_read_reg => sig_doing_read_reg,
      sig_llink_busy_reg => \^sig_llink2cmd_rd_busy\,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_push_input_reg16_out => \I_MSTR_PCC/sig_push_input_reg16_out\,
      sig_push_status1_out => sig_push_status1_out,
      sig_rd_llink_enable => sig_rd_llink_enable,
      sig_rd_sts_slverr_reg_reg => I_RD_WR_CNTRL_MODULE_n_17,
      sig_rd_sts_tag_reg0 => \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\,
      sig_rdwr2llink_int_err => sig_rdwr2llink_int_err,
      sig_rdwr_reset_reg_reg => sig_rst2rdwr_cntlr_reset,
      sig_rsc2stat_status(0) => sig_rsc2stat_status(4),
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_status_reg_empty => sig_status_reg_empty,
      sig_status_reg_full_reg_0 => bus2ip_mst_cmplt,
      \tft_base_addr_reg[0]\(24 downto 0) => D(24 downto 0)
    );
I_RD_LLINK_ADAPTER: entity work.system_axi_tft_0_0_axi_master_burst_rd_llink
     port map (
      \AXI_DATA_WIDTH_32.mstr_src_rdy_n_reg\ => \AXI_DATA_WIDTH_32.mstr_src_rdy_n_reg\,
      E(0) => \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en\,
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mstrd_eof_n => bus2ip_mstrd_eof_n,
      eof_n => eof_n,
      eof_n_reg => sig_rd_discontinue,
      eof_n_reg_0 => \^sig_llink2cmd_rd_busy\,
      m_axi_aclk => m_axi_aclk,
      mstr_src_rdy_n => mstr_src_rdy_n,
      \out\ => sig_rst2llink_reset,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_doing_read_reg => sig_doing_read_reg,
      sig_last_reg_out_reg => \^sig_rd2llink_strm_tlast\,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      sig_m_valid_dup_reg => \I_READ_STREAM_SKID_BUF/p_0_in2_in\,
      sig_m_valid_out_reg => sig_rd2llink_strm_tvalid,
      sig_rd_llink_enable => sig_rd_llink_enable,
      sig_rdwr2llink_int_err => sig_rdwr2llink_int_err,
      \trans_cnt_reg[0]\(0) => E(0)
    );
I_RD_WR_CNTRL_MODULE: entity work.system_axi_tft_0_0_axi_master_burst_rd_wr_cntlr
     port map (
      \AXI_BRAM_data_i_reg[40]\(17 downto 0) => Q(17 downto 0),
      D(1) => I_CMD_STATUS_MODULE_n_10,
      D(0) => I_CMD_STATUS_MODULE_n_11,
      E(0) => sig_push_cmd_reg,
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      IP2Bus_MstRd_dst_rdy_reg => IP2Bus_MstRd_dst_rdy_reg,
      Q(24 downto 0) => sig_cmd_mst_addr(31 downto 7),
      SR(0) => sig_cmd_mstrd_req0,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(0) => m_axi_arburst(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => m_axi_arsize(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(17 downto 0) => m_axi_rdata(17 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(0) => m_axi_wstrb(0),
      m_axi_wvalid => m_axi_wvalid,
      md_error => \^md_error\,
      \out\ => sig_rst2rdwr_cntlr_reset,
      \sig_btt_cntr_reg[7]\(1) => \I_MSTR_PCC/sig_btt_cntr0\(7),
      \sig_btt_cntr_reg[7]\(0) => \I_MSTR_PCC/sig_btt_cntr0\(2),
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_mst_be(0) => sig_cmd_mst_be(0),
      sig_cmd_reset_reg_reg => sig_rst2cmd_stat_reset,
      sig_doing_read_reg => sig_doing_read_reg,
      sig_error_sh_reg_reg(0) => sig_rsc2stat_status(4),
      sig_error_sh_reg_reg_0 => I_RD_WR_CNTRL_MODULE_n_17,
      sig_llink2cmd_rd_busy => \^sig_llink2cmd_rd_busy\,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      sig_llink_busy_reg => sig_rd2llink_strm_tvalid,
      sig_llink_busy_reg_0(0) => \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en\,
      sig_m_valid_out_reg => \I_READ_STREAM_SKID_BUF/p_0_in2_in\,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_push_input_reg16_out => \I_MSTR_PCC/sig_push_input_reg16_out\,
      sig_push_status1_out => sig_push_status1_out,
      sig_rd2llink_strm_tlast => \^sig_rd2llink_strm_tlast\,
      sig_rd_sts_tag_reg0 => \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\,
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_status_reg_empty => sig_status_reg_empty
    );
I_RESET_MODULE: entity work.system_axi_tft_0_0_axi_master_burst_reset
     port map (
      \INFERRED_GEN.cnt_i_reg[0]\ => sig_rst2rdwr_cntlr_reset,
      m_axi_aclk => m_axi_aclk,
      m_axi_aresetn => m_axi_aresetn,
      \out\ => sig_rst2cmd_stat_reset,
      scndry_out => scndry_out,
      sig_rd_error_reg_reg => sig_rst2llink_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_memory is
  port (
    POR_B : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    AXI_BRAM_we_i : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_memory : entity is "memory";
end system_axi_tft_0_0_memory;

architecture STRUCTURE of system_axi_tft_0_0_memory is
  signal doutb : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal fifo_out_data : STD_LOGIC_VECTOR ( 35 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[2]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[3]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[4]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[5]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[3]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[4]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[5]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[5]_i_1\ : label is "soft_lutpair59";
begin
\BRAM_TFT_B_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(18),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(0),
      O => \BRAM_TFT_B_data_reg[5]\(0)
    );
\BRAM_TFT_B_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(19),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(1),
      O => \BRAM_TFT_B_data_reg[5]\(1)
    );
\BRAM_TFT_B_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(20),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(2),
      O => \BRAM_TFT_B_data_reg[5]\(2)
    );
\BRAM_TFT_B_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(21),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(3),
      O => \BRAM_TFT_B_data_reg[5]\(3)
    );
\BRAM_TFT_B_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(22),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(4),
      O => \BRAM_TFT_B_data_reg[5]\(4)
    );
\BRAM_TFT_B_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(23),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(5),
      O => \BRAM_TFT_B_data_reg[5]\(5)
    );
\BRAM_TFT_G_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(24),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(6),
      O => \BRAM_TFT_G_data_reg[5]\(0)
    );
\BRAM_TFT_G_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(25),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(7),
      O => \BRAM_TFT_G_data_reg[5]\(1)
    );
\BRAM_TFT_G_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(26),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(8),
      O => \BRAM_TFT_G_data_reg[5]\(2)
    );
\BRAM_TFT_G_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(27),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(9),
      O => \BRAM_TFT_G_data_reg[5]\(3)
    );
\BRAM_TFT_G_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(28),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(10),
      O => \BRAM_TFT_G_data_reg[5]\(4)
    );
\BRAM_TFT_G_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(29),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(11),
      O => \BRAM_TFT_G_data_reg[5]\(5)
    );
\BRAM_TFT_R_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(30),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(12),
      O => D(0)
    );
\BRAM_TFT_R_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(31),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(13),
      O => D(1)
    );
\BRAM_TFT_R_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(32),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(14),
      O => D(2)
    );
\BRAM_TFT_R_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(33),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(15),
      O => D(3)
    );
\BRAM_TFT_R_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(34),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(16),
      O => D(4)
    );
\BRAM_TFT_R_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(35),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(17),
      O => D(5)
    );
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.system_axi_tft_0_0_blk_mem_gen_v8_4_1
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      D(35 downto 0) => doutb(35 downto 0),
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      sys_tft_clk => sys_tft_clk
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(0),
      Q => fifo_out_data(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(10),
      Q => fifo_out_data(10),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(11),
      Q => fifo_out_data(11),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(12),
      Q => fifo_out_data(12),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(13),
      Q => fifo_out_data(13),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(14),
      Q => fifo_out_data(14),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(15),
      Q => fifo_out_data(15),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(16),
      Q => fifo_out_data(16),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(17),
      Q => fifo_out_data(17),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(18),
      Q => fifo_out_data(18),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(19),
      Q => fifo_out_data(19),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(1),
      Q => fifo_out_data(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(20),
      Q => fifo_out_data(20),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(21),
      Q => fifo_out_data(21),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(22),
      Q => fifo_out_data(22),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(23),
      Q => fifo_out_data(23),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(24),
      Q => fifo_out_data(24),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(25),
      Q => fifo_out_data(25),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(26),
      Q => fifo_out_data(26),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(27),
      Q => fifo_out_data(27),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(28),
      Q => fifo_out_data(28),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(29),
      Q => fifo_out_data(29),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(2),
      Q => fifo_out_data(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(30),
      Q => fifo_out_data(30),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(31),
      Q => fifo_out_data(31),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(32),
      Q => fifo_out_data(32),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(33),
      Q => fifo_out_data(33),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(34),
      Q => fifo_out_data(34),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(35),
      Q => fifo_out_data(35),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(3),
      Q => fifo_out_data(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(4),
      Q => fifo_out_data(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(5),
      Q => fifo_out_data(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(6),
      Q => fifo_out_data(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(7),
      Q => fifo_out_data(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(8),
      Q => fifo_out_data(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \gpregsm1.curr_fwft_state_reg[0]\(0),
      D => doutb(9),
      Q => fifo_out_data(9),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_fifo_generator_ramfifo is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_rst : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    AXI_BRAM_we_i : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end system_axi_tft_0_0_fifo_generator_ramfifo;

architecture STRUCTURE of system_axi_tft_0_0_fifo_generator_ramfifo is
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_9\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_6_out : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 8 to 8 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.system_axi_tft_0_0_clk_x_pntrs
     port map (
      Q(0) => p_14_out(8),
      RD_PNTR_WR(7 downto 0) => p_25_out(7 downto 0),
      WR_PNTR_RD(8 downto 0) => p_24_out(8 downto 0),
      \gc1.count_d2_reg[8]\(8 downto 0) => p_0_out(8 downto 0),
      \gic0.gc1.count_d1_reg[8]\(0) => wr_pntr_plus2(8),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => p_13_out(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      ram_full_fb_i_reg_0 => \gntv_or_sync_fifo.gcx.clkx_n_9\,
      sys_tft_clk => sys_tft_clk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.system_axi_tft_0_0_rd_logic
     port map (
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      E(0) => p_6_out,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      Q(8 downto 0) => p_0_out(8 downto 0),
      WR_PNTR_RD(8 downto 0) => p_24_out(8 downto 0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => rstblk_n_1,
      sys_tft_clk => sys_tft_clk
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.system_axi_tft_0_0_wr_logic
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => p_13_out(8 downto 0),
      E(0) => p_20_out,
      Q(0) => wr_pntr_plus2(8),
      RD_PNTR_WR(7 downto 0) => p_25_out(7 downto 0),
      \dest_out_bin_ff_reg[8]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \dest_out_bin_ff_reg[8]_0\ => \gntv_or_sync_fifo.gcx.clkx_n_9\,
      \gic0.gc1.count_d3_reg[8]\(0) => p_14_out(8),
      \grstd1.grst_full.grst_f.rst_d3_reg\ => rst_full_gen_i,
      m_axi_aclk => m_axi_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ => rstblk_n_0,
      \out\ => \gntv_or_sync_fifo.gl0.wr_n_0\
    );
\gntv_or_sync_fifo.mem\: entity work.system_axi_tft_0_0_memory
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => Q(35 downto 0),
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \BRAM_TFT_B_data_reg[5]\(5 downto 0) => \BRAM_TFT_B_data_reg[5]\(5 downto 0),
      \BRAM_TFT_G_data_reg[5]\(5 downto 0) => \BRAM_TFT_G_data_reg[5]\(5 downto 0),
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      D(5 downto 0) => D(5 downto 0),
      E(0) => p_20_out,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      POR_B => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      Q(8 downto 0) => p_0_out(8 downto 0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => p_13_out(8 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\(0) => p_6_out,
      m_axi_aclk => m_axi_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => rstblk_n_1,
      \out\ => \gntv_or_sync_fifo.gl0.wr_n_0\,
      ram_rstram_b => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b\,
      sys_tft_clk => sys_tft_clk
    );
rstblk: entity work.system_axi_tft_0_0_reset_blk_ramfifo
     port map (
      POR_B => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      m_axi_aclk => m_axi_aclk,
      \out\ => rst_full_gen_i,
      ram_rstram_b => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b\,
      \syncstages_ff_reg[0]\ => rstblk_n_0,
      \syncstages_ff_reg[0]_0\ => rstblk_n_1,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_fifo_generator_top is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_rst : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    AXI_BRAM_we_i : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_fifo_generator_top : entity is "fifo_generator_top";
end system_axi_tft_0_0_fifo_generator_top;

architecture STRUCTURE of system_axi_tft_0_0_fifo_generator_top is
begin
\grf.rf\: entity work.system_axi_tft_0_0_fifo_generator_ramfifo
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \BRAM_TFT_B_data_reg[5]\(5 downto 0) => \BRAM_TFT_B_data_reg[5]\(5 downto 0),
      \BRAM_TFT_G_data_reg[5]\(5 downto 0) => \BRAM_TFT_G_data_reg[5]\(5 downto 0),
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      D(5 downto 0) => D(5 downto 0),
      Q(35 downto 0) => Q(35 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_fifo_generator_v13_2_1_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_rst : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    AXI_BRAM_we_i : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_fifo_generator_v13_2_1_synth : entity is "fifo_generator_v13_2_1_synth";
end system_axi_tft_0_0_fifo_generator_v13_2_1_synth;

architecture STRUCTURE of system_axi_tft_0_0_fifo_generator_v13_2_1_synth is
begin
\gconvfifo.rf\: entity work.system_axi_tft_0_0_fifo_generator_top
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \BRAM_TFT_B_data_reg[5]\(5 downto 0) => \BRAM_TFT_B_data_reg[5]\(5 downto 0),
      \BRAM_TFT_G_data_reg[5]\(5 downto 0) => \BRAM_TFT_G_data_reg[5]\(5 downto 0),
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      D(5 downto 0) => D(5 downto 0),
      Q(35 downto 0) => Q(35 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_fifo_generator_v13_2_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_rst : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    AXI_BRAM_we_i : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_fifo_generator_v13_2_1 : entity is "fifo_generator_v13_2_1";
end system_axi_tft_0_0_fifo_generator_v13_2_1;

architecture STRUCTURE of system_axi_tft_0_0_fifo_generator_v13_2_1 is
begin
inst_fifo_gen: entity work.system_axi_tft_0_0_fifo_generator_v13_2_1_synth
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \BRAM_TFT_B_data_reg[5]\(5 downto 0) => \BRAM_TFT_B_data_reg[5]\(5 downto 0),
      \BRAM_TFT_G_data_reg[5]\(5 downto 0) => \BRAM_TFT_G_data_reg[5]\(5 downto 0),
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      D(5 downto 0) => D(5 downto 0),
      Q(35 downto 0) => Q(35 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_async_fifo_fg is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_rst : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    AXI_BRAM_we_i : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_async_fifo_fg : entity is "async_fifo_fg";
end system_axi_tft_0_0_async_fifo_fg;

architecture STRUCTURE of system_axi_tft_0_0_async_fifo_fg is
begin
\lib_fifo_instance.USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM\: entity work.system_axi_tft_0_0_fifo_generator_v13_2_1
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \BRAM_TFT_B_data_reg[5]\(5 downto 0) => \BRAM_TFT_B_data_reg[5]\(5 downto 0),
      \BRAM_TFT_G_data_reg[5]\(5 downto 0) => \BRAM_TFT_G_data_reg[5]\(5 downto 0),
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      D(5 downto 0) => D(5 downto 0),
      Q(35 downto 0) => Q(35 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_tft_v2_0_19_line_buffer is
  port (
    \gen_vga_if.FDR_R5\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_vga_if.FDR_G5\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_vga_if.FDR_B5\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_rst : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_BRAM_we_i : in STD_LOGIC;
    \HSYNC_cs_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_tft_v2_0_19_line_buffer : entity is "axi_tft_v2_0_19_line_buffer";
end system_axi_tft_0_0_axi_tft_v2_0_19_line_buffer;

architecture STRUCTURE of system_axi_tft_0_0_axi_tft_v2_0_19_line_buffer is
  signal \BRAM_TFT_B_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[5]\ : STD_LOGIC;
  signal BRAM_TFT_addr : STD_LOGIC_VECTOR ( 0 to 8 );
  signal \BRAM_TFT_addr[0]_i_4_n_0\ : STD_LOGIC;
  signal BRAM_TFT_addr_0 : STD_LOGIC_VECTOR ( 0 to 9 );
  signal \BRAM_TFT_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal RAM_n_0 : STD_LOGIC;
  signal RAM_n_1 : STD_LOGIC;
  signal RAM_n_10 : STD_LOGIC;
  signal RAM_n_11 : STD_LOGIC;
  signal RAM_n_12 : STD_LOGIC;
  signal RAM_n_13 : STD_LOGIC;
  signal RAM_n_14 : STD_LOGIC;
  signal RAM_n_15 : STD_LOGIC;
  signal RAM_n_16 : STD_LOGIC;
  signal RAM_n_17 : STD_LOGIC;
  signal RAM_n_2 : STD_LOGIC;
  signal RAM_n_3 : STD_LOGIC;
  signal RAM_n_4 : STD_LOGIC;
  signal RAM_n_5 : STD_LOGIC;
  signal RAM_n_6 : STD_LOGIC;
  signal RAM_n_7 : STD_LOGIC;
  signal RAM_n_8 : STD_LOGIC;
  signal RAM_n_9 : STD_LOGIC;
  signal tc : STD_LOGIC;
  signal tc_reg_inv_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[0]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[5]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[6]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[7]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[8]_i_1\ : label is "soft_lutpair71";
begin
\BLUE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[0]\,
      Q => \gen_vga_if.FDR_B5\(0),
      R => \HSYNC_cs_reg[2]\(0)
    );
\BLUE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[1]\,
      Q => \gen_vga_if.FDR_B5\(1),
      R => \HSYNC_cs_reg[2]\(0)
    );
\BLUE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[2]\,
      Q => \gen_vga_if.FDR_B5\(2),
      R => \HSYNC_cs_reg[2]\(0)
    );
\BLUE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[3]\,
      Q => \gen_vga_if.FDR_B5\(3),
      R => \HSYNC_cs_reg[2]\(0)
    );
\BLUE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[4]\,
      Q => \gen_vga_if.FDR_B5\(4),
      R => \HSYNC_cs_reg[2]\(0)
    );
\BLUE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[5]\,
      Q => \gen_vga_if.FDR_B5\(5),
      R => \HSYNC_cs_reg[2]\(0)
    );
\BRAM_TFT_B_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_17,
      Q => \BRAM_TFT_B_data_reg_n_0_[0]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_16,
      Q => \BRAM_TFT_B_data_reg_n_0_[1]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_15,
      Q => \BRAM_TFT_B_data_reg_n_0_[2]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_14,
      Q => \BRAM_TFT_B_data_reg_n_0_[3]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_13,
      Q => \BRAM_TFT_B_data_reg_n_0_[4]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_12,
      Q => \BRAM_TFT_B_data_reg_n_0_[5]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_11,
      Q => \BRAM_TFT_G_data_reg_n_0_[0]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_10,
      Q => \BRAM_TFT_G_data_reg_n_0_[1]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_9,
      Q => \BRAM_TFT_G_data_reg_n_0_[2]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_8,
      Q => \BRAM_TFT_G_data_reg_n_0_[3]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_7,
      Q => \BRAM_TFT_G_data_reg_n_0_[4]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_6,
      Q => \BRAM_TFT_G_data_reg_n_0_[5]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_5,
      Q => \BRAM_TFT_R_data_reg_n_0_[0]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_4,
      Q => \BRAM_TFT_R_data_reg_n_0_[1]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_3,
      Q => \BRAM_TFT_R_data_reg_n_0_[2]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_2,
      Q => \BRAM_TFT_R_data_reg_n_0_[3]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_1,
      Q => \BRAM_TFT_R_data_reg_n_0_[4]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_0,
      Q => \BRAM_TFT_R_data_reg_n_0_[5]\,
      R => tft_rst
    );
\BRAM_TFT_addr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4F0F0B0"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(0),
      I3 => BRAM_TFT_addr(1),
      I4 => BRAM_TFT_addr(2),
      O => BRAM_TFT_addr_0(0)
    );
\BRAM_TFT_addr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => BRAM_TFT_addr(5),
      I1 => BRAM_TFT_addr(7),
      I2 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I3 => BRAM_TFT_addr(8),
      I4 => BRAM_TFT_addr(6),
      I5 => BRAM_TFT_addr(4),
      O => \BRAM_TFT_addr[0]_i_4_n_0\
    );
\BRAM_TFT_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(2),
      I3 => BRAM_TFT_addr(1),
      O => BRAM_TFT_addr_0(1)
    );
\BRAM_TFT_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB4404"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(0),
      I3 => BRAM_TFT_addr(1),
      I4 => BRAM_TFT_addr(2),
      O => BRAM_TFT_addr_0(2)
    );
\BRAM_TFT_addr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      O => BRAM_TFT_addr_0(3)
    );
\BRAM_TFT_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => BRAM_TFT_addr(5),
      I1 => BRAM_TFT_addr(7),
      I2 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I3 => BRAM_TFT_addr(8),
      I4 => BRAM_TFT_addr(6),
      I5 => BRAM_TFT_addr(4),
      O => BRAM_TFT_addr_0(4)
    );
\BRAM_TFT_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => BRAM_TFT_addr(6),
      I1 => BRAM_TFT_addr(8),
      I2 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I3 => BRAM_TFT_addr(7),
      I4 => BRAM_TFT_addr(5),
      O => BRAM_TFT_addr_0(5)
    );
\BRAM_TFT_addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => BRAM_TFT_addr(7),
      I1 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I2 => BRAM_TFT_addr(8),
      I3 => BRAM_TFT_addr(6),
      O => BRAM_TFT_addr_0(6)
    );
\BRAM_TFT_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => BRAM_TFT_addr(8),
      I1 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I2 => BRAM_TFT_addr(7),
      O => BRAM_TFT_addr_0(7)
    );
\BRAM_TFT_addr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I1 => BRAM_TFT_addr(8),
      O => BRAM_TFT_addr_0(8)
    );
\BRAM_TFT_addr[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BRAM_TFT_addr_reg_n_0_[9]\,
      O => BRAM_TFT_addr_0(9)
    );
\BRAM_TFT_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(0),
      Q => BRAM_TFT_addr(0),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(1),
      Q => BRAM_TFT_addr(1),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(2),
      Q => BRAM_TFT_addr(2),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(3),
      Q => BRAM_TFT_addr(3),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(4),
      Q => BRAM_TFT_addr(4),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(5),
      Q => BRAM_TFT_addr(5),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(6),
      Q => BRAM_TFT_addr(6),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(7),
      Q => BRAM_TFT_addr(7),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(8),
      Q => BRAM_TFT_addr(8),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(9),
      Q => \BRAM_TFT_addr_reg_n_0_[9]\,
      R => SR(0)
    );
\GREEN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[0]\,
      Q => \gen_vga_if.FDR_G5\(0),
      R => \HSYNC_cs_reg[2]\(0)
    );
\GREEN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[1]\,
      Q => \gen_vga_if.FDR_G5\(1),
      R => \HSYNC_cs_reg[2]\(0)
    );
\GREEN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[2]\,
      Q => \gen_vga_if.FDR_G5\(2),
      R => \HSYNC_cs_reg[2]\(0)
    );
\GREEN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[3]\,
      Q => \gen_vga_if.FDR_G5\(3),
      R => \HSYNC_cs_reg[2]\(0)
    );
\GREEN_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[4]\,
      Q => \gen_vga_if.FDR_G5\(4),
      R => \HSYNC_cs_reg[2]\(0)
    );
\GREEN_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[5]\,
      Q => \gen_vga_if.FDR_G5\(5),
      R => \HSYNC_cs_reg[2]\(0)
    );
RAM: entity work.system_axi_tft_0_0_async_fifo_fg
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \BRAM_TFT_B_data_reg[5]\(5) => RAM_n_12,
      \BRAM_TFT_B_data_reg[5]\(4) => RAM_n_13,
      \BRAM_TFT_B_data_reg[5]\(3) => RAM_n_14,
      \BRAM_TFT_B_data_reg[5]\(2) => RAM_n_15,
      \BRAM_TFT_B_data_reg[5]\(1) => RAM_n_16,
      \BRAM_TFT_B_data_reg[5]\(0) => RAM_n_17,
      \BRAM_TFT_G_data_reg[5]\(5) => RAM_n_6,
      \BRAM_TFT_G_data_reg[5]\(4) => RAM_n_7,
      \BRAM_TFT_G_data_reg[5]\(3) => RAM_n_8,
      \BRAM_TFT_G_data_reg[5]\(2) => RAM_n_9,
      \BRAM_TFT_G_data_reg[5]\(1) => RAM_n_10,
      \BRAM_TFT_G_data_reg[5]\(0) => RAM_n_11,
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg_n_0_[9]\,
      D(5) => RAM_n_0,
      D(4) => RAM_n_1,
      D(3) => RAM_n_2,
      D(2) => RAM_n_3,
      D(1) => RAM_n_4,
      D(0) => RAM_n_5,
      Q(35 downto 0) => Q(35 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
\RED_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[0]\,
      Q => \gen_vga_if.FDR_R5\(0),
      R => \HSYNC_cs_reg[2]\(0)
    );
\RED_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[1]\,
      Q => \gen_vga_if.FDR_R5\(1),
      R => \HSYNC_cs_reg[2]\(0)
    );
\RED_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[2]\,
      Q => \gen_vga_if.FDR_R5\(2),
      R => \HSYNC_cs_reg[2]\(0)
    );
\RED_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[3]\,
      Q => \gen_vga_if.FDR_R5\(3),
      R => \HSYNC_cs_reg[2]\(0)
    );
\RED_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[4]\,
      Q => \gen_vga_if.FDR_R5\(4),
      R => \HSYNC_cs_reg[2]\(0)
    );
\RED_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[5]\,
      Q => \gen_vga_if.FDR_R5\(5),
      R => \HSYNC_cs_reg[2]\(0)
    );
tc_inv_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(2),
      I3 => BRAM_TFT_addr(1),
      I4 => BRAM_TFT_addr(0),
      O => tc
    );
tc_reg_inv: unisim.vcomponents.FDSE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => tc,
      Q => tc_reg_inv_n_0,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_tft_v2_0_19_tft_controller is
  port (
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    TFT_iic_xfer : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 26 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \IP2Bus_Data_reg[28]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    tft_status_d2 : out STD_LOGIC;
    bus2ip_rdce_d1 : out STD_LOGIC;
    bus2ip_rdce_d2 : out STD_LOGIC;
    bus2ip_wrce_d1 : out STD_LOGIC;
    bus2ip_wrce_d2 : out STD_LOGIC;
    eof_n : out STD_LOGIC;
    prmry_in : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    ip2bus_mstrd_req : out STD_LOGIC;
    IP2Bus_Mst_Type : out STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : out STD_LOGIC;
    TFT_status_reg : out STD_LOGIC;
    cs_ce_clr : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    sig_m_valid_out_reg : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \sig_cmd_mst_addr_reg[31]\ : out STD_LOGIC_VECTOR ( 24 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    C0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 26 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC;
    bus2ip_rdce_or : in STD_LOGIC;
    bus2ip_wrce_or : in STD_LOGIC;
    bus2ip_mstrd_eof_n : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : in STD_LOGIC;
    \TFT_iic_reg_data_reg[6]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    sig_rd_discontinue : in STD_LOGIC;
    sig_rd2llink_strm_tlast : in STD_LOGIC;
    sig_llink_busy_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mst_cmdack : in STD_LOGIC;
    bus2ip_mst_cmplt : in STD_LOGIC;
    mstr_src_rdy_n : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_tft_v2_0_19_tft_controller : entity is "axi_tft_v2_0_19_tft_controller";
end system_axi_tft_0_0_axi_tft_v2_0_19_tft_controller;

architecture STRUCTURE of system_axi_tft_0_0_axi_tft_v2_0_19_tft_controller is
  signal AXI_BRAM_data_i : STD_LOGIC_VECTOR ( 8 to 61 );
  signal AXI_BRAM_we_i : STD_LOGIC;
  signal AXI_BRAM_we_i_i_1_n_0 : STD_LOGIC;
  signal BLUE_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal BRAM_TFT_addr0 : STD_LOGIC;
  signal DE_i : STD_LOGIC;
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\ : STD_LOGIC;
  signal GET_LINE_SYNC_n_0 : STD_LOGIC;
  signal GREEN_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal HSYNC_U2_n_8 : STD_LOGIC;
  signal HSYNC_i : STD_LOGIC;
  signal I2C_done_tft : STD_LOGIC;
  signal \^ip2bus_mstrd_dst_rdy\ : STD_LOGIC;
  signal \^ip2bus_mst_type\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RED0 : STD_LOGIC;
  signal RED_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal TFT_ON_MAXI_SYNC_n_0 : STD_LOGIC;
  signal TFT_ON_MAXI_SYNC_n_2 : STD_LOGIC;
  signal VSYNC_U3_n_5 : STD_LOGIC;
  signal VSYNC_i : STD_LOGIC;
  signal V_P_SYNC_n_0 : STD_LOGIC;
  signal axi_rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of axi_rst_d1 : signal is "true";
  signal axi_rst_d6 : STD_LOGIC;
  attribute async_reg of axi_rst_d6 : signal is "true";
  signal clk_ce_neg0 : STD_LOGIC;
  signal clk_ce_pos0 : STD_LOGIC;
  signal clk_stb_d1 : STD_LOGIC;
  signal \^eof_n\ : STD_LOGIC;
  signal get_line_start : STD_LOGIC;
  signal get_line_start_d1 : STD_LOGIC;
  signal \^ip2bus_mstrd_req\ : STD_LOGIC;
  signal ip2intc_irpt_i : STD_LOGIC;
  signal line_cnt : STD_LOGIC_VECTOR ( 0 to 8 );
  signal \line_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal line_cnt_0 : STD_LOGIC_VECTOR ( 0 to 8 );
  signal master_rst : STD_LOGIC;
  signal mn_request_set : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_in_d1_cdc_from : STD_LOGIC;
  signal \^prmry_in\ : STD_LOGIC;
  signal prmry_in_xored : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  signal tft_base_addr_d2 : STD_LOGIC_VECTOR ( 0 to 10 );
  signal tft_base_addr_i : STD_LOGIC_VECTOR ( 1 to 10 );
  signal tft_intr_en_maxi : STD_LOGIC;
  signal tft_rst : STD_LOGIC;
  signal tft_status_i : STD_LOGIC;
  signal trans_cnt1 : STD_LOGIC;
  signal \trans_cnt_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \trans_cnt_reg__0\ : STD_LOGIC_VECTOR ( 0 to 4 );
  signal trans_cnt_tc : STD_LOGIC;
  signal trans_cnt_tc_pulse : STD_LOGIC;
  signal trans_cnt_tc_pulse_i : STD_LOGIC;
  signal v_bp_cnt_tc : STD_LOGIC;
  signal v_bp_pulse : STD_LOGIC;
  signal v_l_cnt_tc : STD_LOGIC;
  signal v_p_cnt_tc : STD_LOGIC;
  signal vsync_rst : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of FDR_IP2INTC_Irpt : label is "FDR";
  attribute box_type : string;
  attribute box_type of FDR_IP2INTC_Irpt : label is "PRIMITIVE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of axi_rst_d1_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of axi_rst_d1_reg : label is "yes";
  attribute ASYNC_REG_boolean of axi_rst_d6_reg : label is std.standard.true;
  attribute KEEP of axi_rst_d6_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \line_cnt[0]_i_4\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \line_cnt[4]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \line_cnt[5]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \line_cnt[6]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \line_cnt[7]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \line_cnt[8]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \trans_cnt[0]_i_3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \trans_cnt[1]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \trans_cnt[2]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \trans_cnt[3]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \trans_cnt[4]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of trans_cnt_tc_pulse_i_i_1 : label is "soft_lutpair88";
begin
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\;
  IP2Bus_MstRd_dst_rdy <= \^ip2bus_mstrd_dst_rdy\;
  IP2Bus_Mst_Type <= \^ip2bus_mst_type\;
  Q(0) <= \^q\(0);
  eof_n <= \^eof_n\;
  ip2bus_mstrd_req <= \^ip2bus_mstrd_req\;
  prmry_in <= \^prmry_in\;
  scndry_out <= \^scndry_out\;
\AXI_BRAM_data_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(33),
      Q => AXI_BRAM_data_i(10),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(32),
      Q => AXI_BRAM_data_i(11),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(31),
      Q => AXI_BRAM_data_i(12),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(30),
      Q => AXI_BRAM_data_i(13),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(29),
      Q => AXI_BRAM_data_i(16),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(28),
      Q => AXI_BRAM_data_i(17),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(27),
      Q => AXI_BRAM_data_i(18),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(26),
      Q => AXI_BRAM_data_i(19),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(25),
      Q => AXI_BRAM_data_i(20),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(24),
      Q => AXI_BRAM_data_i(21),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(23),
      Q => AXI_BRAM_data_i(24),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(22),
      Q => AXI_BRAM_data_i(25),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(21),
      Q => AXI_BRAM_data_i(26),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(20),
      Q => AXI_BRAM_data_i(27),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(19),
      Q => AXI_BRAM_data_i(28),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(18),
      Q => AXI_BRAM_data_i(29),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(17),
      Q => AXI_BRAM_data_i(40),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(16),
      Q => AXI_BRAM_data_i(41),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(15),
      Q => AXI_BRAM_data_i(42),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(14),
      Q => AXI_BRAM_data_i(43),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(13),
      Q => AXI_BRAM_data_i(44),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(12),
      Q => AXI_BRAM_data_i(45),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(11),
      Q => AXI_BRAM_data_i(48),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(10),
      Q => AXI_BRAM_data_i(49),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(9),
      Q => AXI_BRAM_data_i(50),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(8),
      Q => AXI_BRAM_data_i(51),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(7),
      Q => AXI_BRAM_data_i(52),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(6),
      Q => AXI_BRAM_data_i(53),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(5),
      Q => AXI_BRAM_data_i(56),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(4),
      Q => AXI_BRAM_data_i(57),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(3),
      Q => AXI_BRAM_data_i(58),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(2),
      Q => AXI_BRAM_data_i(59),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(1),
      Q => AXI_BRAM_data_i(60),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(0),
      Q => AXI_BRAM_data_i(61),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(35),
      Q => AXI_BRAM_data_i(8),
      R => master_rst
    );
\AXI_BRAM_data_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(34),
      Q => AXI_BRAM_data_i(9),
      R => master_rst
    );
AXI_BRAM_we_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mstr_src_rdy_n,
      O => AXI_BRAM_we_i_i_1_n_0
    );
AXI_BRAM_we_i_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => AXI_BRAM_we_i_i_1_n_0,
      Q => AXI_BRAM_we_i,
      R => master_rst
    );
BASE_ADDR_SYNC: entity work.\system_axi_tft_0_0_cdc_sync__parameterized1\
     port map (
      Q(10) => \^q\(0),
      Q(9) => tft_base_addr_i(1),
      Q(8) => tft_base_addr_i(2),
      Q(7) => tft_base_addr_i(3),
      Q(6) => tft_base_addr_i(4),
      Q(5) => tft_base_addr_i(5),
      Q(4) => tft_base_addr_i(6),
      Q(3) => tft_base_addr_i(7),
      Q(2) => tft_base_addr_i(8),
      Q(1) => tft_base_addr_i(9),
      Q(0) => tft_base_addr_i(10),
      m_axi_aclk => m_axi_aclk,
      scndry_vect_out(10) => tft_base_addr_d2(0),
      scndry_vect_out(9) => tft_base_addr_d2(1),
      scndry_vect_out(8) => tft_base_addr_d2(2),
      scndry_vect_out(7) => tft_base_addr_d2(3),
      scndry_vect_out(6) => tft_base_addr_d2(4),
      scndry_vect_out(5) => tft_base_addr_d2(5),
      scndry_vect_out(4) => tft_base_addr_d2(6),
      scndry_vect_out(3) => tft_base_addr_d2(7),
      scndry_vect_out(2) => tft_base_addr_d2(8),
      scndry_vect_out(1) => tft_base_addr_d2(9),
      scndry_vect_out(0) => tft_base_addr_d2(10)
    );
FDR_IP2INTC_Irpt: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => ip2intc_irpt_i,
      Q => ip2intc_irpt,
      R => master_rst
    );
GET_LINE_SYNC: entity work.\system_axi_tft_0_0_cdc_sync__parameterized0\
     port map (
      IP2Bus_Mst_Type => \^ip2bus_mst_type\,
      IP2Bus_Mst_Type_reg => GET_LINE_SYNC_n_0,
      Q(2) => \trans_cnt_reg__0\(0),
      Q(1) => \trans_cnt_reg__0\(3),
      Q(0) => \trans_cnt_reg__0\(4),
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      bus2ip_mst_cmplt => bus2ip_mst_cmplt,
      get_line_start_d1 => get_line_start_d1,
      m_axi_aclk => m_axi_aclk,
      mn_request_set => mn_request_set,
      scndry_out => \^scndry_out\,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      \trans_cnt_reg[1]\ => \trans_cnt_i[0]_i_2_n_0\
    );
HSYNC_U2: entity work.system_axi_tft_0_0_axi_tft_v2_0_19_h_sync
     port map (
      DE_i => DE_i,
      HSYNC_i => HSYNC_i,
      \RED_reg[5]\(0) => RED0,
      SR(0) => BRAM_TFT_addr0,
      \VSYNC_cs_reg[3]\ => VSYNC_U3_n_5,
      clk_ce_neg0 => clk_ce_neg0,
      clk_ce_pos0 => clk_ce_pos0,
      clk_stb_d1 => clk_stb_d1,
      clk_stb_d1_reg => HSYNC_U2_n_8,
      get_line_start => get_line_start,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      v_bp_cnt_tc => v_bp_cnt_tc,
      v_l_cnt_tc => v_l_cnt_tc,
      vsync_rst => vsync_rst
    );
I2C_DONE_SYNC: entity work.\system_axi_tft_0_0_cdc_sync__parameterized2\
     port map (
      scndry_out => I2C_done_tft,
      sys_tft_clk => sys_tft_clk
    );
INTR_EN_SYNC: entity work.system_axi_tft_0_0_cdc_sync
     port map (
      m_axi_aclk => m_axi_aclk,
      prmry_in => \^prmry_in\,
      scndry_out => tft_intr_en_maxi
    );
IP2Bus_MstRd_Req_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => TFT_ON_MAXI_SYNC_n_2,
      Q => \^ip2bus_mstrd_req\,
      R => '0'
    );
IP2Bus_MstRd_dst_rdy_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => TFT_ON_MAXI_SYNC_n_0,
      Q => \^ip2bus_mstrd_dst_rdy\,
      R => '0'
    );
IP2Bus_Mst_Type_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => GET_LINE_SYNC_n_0,
      Q => \^ip2bus_mst_type\,
      R => '0'
    );
LINE_BUFFER_U4: entity work.system_axi_tft_0_0_axi_tft_v2_0_19_line_buffer
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \HSYNC_cs_reg[2]\(0) => RED0,
      Q(35) => AXI_BRAM_data_i(8),
      Q(34) => AXI_BRAM_data_i(9),
      Q(33) => AXI_BRAM_data_i(10),
      Q(32) => AXI_BRAM_data_i(11),
      Q(31) => AXI_BRAM_data_i(12),
      Q(30) => AXI_BRAM_data_i(13),
      Q(29) => AXI_BRAM_data_i(16),
      Q(28) => AXI_BRAM_data_i(17),
      Q(27) => AXI_BRAM_data_i(18),
      Q(26) => AXI_BRAM_data_i(19),
      Q(25) => AXI_BRAM_data_i(20),
      Q(24) => AXI_BRAM_data_i(21),
      Q(23) => AXI_BRAM_data_i(24),
      Q(22) => AXI_BRAM_data_i(25),
      Q(21) => AXI_BRAM_data_i(26),
      Q(20) => AXI_BRAM_data_i(27),
      Q(19) => AXI_BRAM_data_i(28),
      Q(18) => AXI_BRAM_data_i(29),
      Q(17) => AXI_BRAM_data_i(40),
      Q(16) => AXI_BRAM_data_i(41),
      Q(15) => AXI_BRAM_data_i(42),
      Q(14) => AXI_BRAM_data_i(43),
      Q(13) => AXI_BRAM_data_i(44),
      Q(12) => AXI_BRAM_data_i(45),
      Q(11) => AXI_BRAM_data_i(48),
      Q(10) => AXI_BRAM_data_i(49),
      Q(9) => AXI_BRAM_data_i(50),
      Q(8) => AXI_BRAM_data_i(51),
      Q(7) => AXI_BRAM_data_i(52),
      Q(6) => AXI_BRAM_data_i(53),
      Q(5) => AXI_BRAM_data_i(56),
      Q(4) => AXI_BRAM_data_i(57),
      Q(3) => AXI_BRAM_data_i(58),
      Q(2) => AXI_BRAM_data_i(59),
      Q(1) => AXI_BRAM_data_i(60),
      Q(0) => AXI_BRAM_data_i(61),
      SR(0) => BRAM_TFT_addr0,
      \gen_vga_if.FDR_B5\(5 downto 0) => BLUE_i(5 downto 0),
      \gen_vga_if.FDR_G5\(5 downto 0) => GREEN_i(5 downto 0),
      \gen_vga_if.FDR_R5\(5 downto 0) => RED_i(5 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
SLAVE_REG_U6: entity work.system_axi_tft_0_0_axi_tft_v2_0_19_slave_register
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      D(26 downto 0) => D(26 downto 0),
      E(0) => E(0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => bus2ip_rdce_d2,
      \IP2Bus_Data_reg[28]_0\(2 downto 0) => \IP2Bus_Data_reg[28]\(2 downto 0),
      Q(10) => \^q\(0),
      Q(9) => tft_base_addr_i(1),
      Q(8) => tft_base_addr_i(2),
      Q(7) => tft_base_addr_i(3),
      Q(6) => tft_base_addr_i(4),
      Q(5) => tft_base_addr_i(5),
      Q(4) => tft_base_addr_i(6),
      Q(3) => tft_base_addr_i(7),
      Q(2) => tft_base_addr_i(8),
      Q(1) => tft_base_addr_i(9),
      Q(0) => tft_base_addr_i(10),
      \TFT_iic_reg_data_reg[6]_0\ => \TFT_iic_reg_data_reg[6]\,
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_status_reg => TFT_status_reg,
      bus2ip_rdce_d2_reg_0 => bus2ip_rdce_d1,
      bus2ip_rdce_or => bus2ip_rdce_or,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce_d2 => bus2ip_wrce_d2,
      bus2ip_wrce_d2_reg_0 => bus2ip_wrce_d1,
      bus2ip_wrce_or => bus2ip_wrce_or,
      cs_ce_clr => cs_ce_clr,
      prmry_in => \^prmry_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wdata(26 downto 0) => s_axi_wdata(26 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      \state_reg[0]\(0) => \state_reg[0]\(0),
      \state_reg[1]\ => \state_reg[1]\,
      tft_dps => tft_dps,
      tft_status_d2 => tft_status_d2,
      tft_status_i => tft_status_i
    );
TFT_IF_U5: entity work.system_axi_tft_0_0_axi_tft_v2_0_19_tft_interface
     port map (
      \BLUE_reg[5]\(5 downto 0) => BLUE_i(5 downto 0),
      C0 => C0,
      DE_i => DE_i,
      \GREEN_reg[5]\(5 downto 0) => GREEN_i(5 downto 0),
      HSYNC_i => HSYNC_i,
      \RED_reg[5]\(5 downto 0) => RED_i(5 downto 0),
      VSYNC_i => VSYNC_i,
      sys_tft_clk => sys_tft_clk,
      tft_de => tft_de,
      tft_hsync => tft_hsync,
      tft_rst => tft_rst,
      tft_vga_b(5 downto 0) => tft_vga_b(5 downto 0),
      tft_vga_clk => tft_vga_clk,
      tft_vga_g(5 downto 0) => tft_vga_g(5 downto 0),
      tft_vga_r(5 downto 0) => tft_vga_r(5 downto 0),
      tft_vsync => tft_vsync
    );
TFT_ON_MAXI_SYNC: entity work.system_axi_tft_0_0_cdc_sync_0
     port map (
      E(0) => mn_request_set,
      IP2Bus_MstRd_Req_reg => TFT_ON_MAXI_SYNC_n_2,
      IP2Bus_MstRd_dst_rdy => \^ip2bus_mstrd_dst_rdy\,
      IP2Bus_MstRd_dst_rdy_reg => TFT_ON_MAXI_SYNC_n_0,
      SR(0) => master_rst,
      TFT_on_reg_reg => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      ip2bus_mstrd_req => \^ip2bus_mstrd_req\,
      m_axi_aclk => m_axi_aclk,
      scndry_out => \^scndry_out\,
      sig_llink_busy_reg(0) => sig_llink_busy_reg(0),
      trans_cnt_tc_pulse_i_reg(0) => trans_cnt_tc_pulse
    );
TFT_ON_TFT_SYNC: entity work.\system_axi_tft_0_0_cdc_sync__parameterized2_1\
     port map (
      TFT_on_reg_reg => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      \out\ => axi_rst_d6,
      scndry_out => I2C_done_tft,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
VSYNC_U3: entity work.system_axi_tft_0_0_axi_tft_v2_0_19_v_sync
     port map (
      \BRAM_TFT_addr_reg[0]\ => VSYNC_U3_n_5,
      \HSYNC_cs_reg[3]\ => HSYNC_U2_n_8,
      VSYNC_i => VSYNC_i,
      clk_ce_neg0 => clk_ce_neg0,
      clk_ce_pos0 => clk_ce_pos0,
      clk_stb_d1 => clk_stb_d1,
      sys_tft_clk => sys_tft_clk,
      v_bp_cnt_tc => v_bp_cnt_tc,
      v_l_cnt_tc => v_l_cnt_tc,
      v_p_cnt_tc => v_p_cnt_tc,
      vsync_rst => vsync_rst
    );
V_BP_SYNC: entity work.\system_axi_tft_0_0_cdc_sync__parameterized0_2\
     port map (
      E(0) => v_bp_pulse,
      bus2ip_mreset => bus2ip_mreset,
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      v_bp_cnt_tc => v_bp_cnt_tc
    );
V_INTR_SYNC: entity work.\system_axi_tft_0_0_cdc_sync__parameterized0_3\
     port map (
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_sreset => bus2ip_sreset,
      m_axi_aclk => m_axi_aclk,
      p_in_d1_cdc_from => p_in_d1_cdc_from,
      prmry_in_xored => prmry_in_xored,
      s_axi_aclk => s_axi_aclk,
      tft_status_i => tft_status_i
    );
V_P_SYNC: entity work.\system_axi_tft_0_0_cdc_sync__parameterized0_4\
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ => tft_intr_en_maxi,
      SR(0) => V_P_SYNC_n_0,
      bus2ip_mreset => bus2ip_mreset,
      eof_n => \^eof_n\,
      ip2intc_irpt_i => ip2intc_irpt_i,
      \line_cnt_reg[8]\(0) => trans_cnt1,
      m_axi_aclk => m_axi_aclk,
      p_in_d1_cdc_from => p_in_d1_cdc_from,
      prmry_in_xored => prmry_in_xored,
      scndry_out => \^scndry_out\,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rd_discontinue => sig_rd_discontinue,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      trans_cnt_tc => trans_cnt_tc,
      v_p_cnt_tc => v_p_cnt_tc
    );
axi_rst_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => bus2ip_mreset,
      D => '1',
      Q => axi_rst_d1
    );
axi_rst_d6_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => bus2ip_mreset,
      D => axi_rst_d1,
      Q => axi_rst_d6
    );
eof_n_reg: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => bus2ip_mstrd_eof_n,
      Q => \^eof_n\,
      S => master_rst
    );
get_line_start_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => get_line_start,
      Q => get_line_start_d1,
      R => tft_rst
    );
\line_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA2AAA"
    )
        port map (
      I0 => trans_cnt_tc_pulse_i,
      I1 => \trans_cnt_reg__0\(0),
      I2 => \trans_cnt_reg__0\(4),
      I3 => \trans_cnt_reg__0\(3),
      I4 => \trans_cnt_reg__0\(1),
      I5 => \trans_cnt_reg__0\(2),
      O => trans_cnt_tc_pulse
    );
\line_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CCCCC"
    )
        port map (
      I0 => \line_cnt[0]_i_4_n_0\,
      I1 => line_cnt(0),
      I2 => line_cnt(2),
      I3 => \line_cnt[0]_i_5_n_0\,
      I4 => line_cnt(1),
      O => line_cnt_0(0)
    );
\line_cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => line_cnt(5),
      I1 => line_cnt(7),
      I2 => line_cnt(8),
      I3 => line_cnt(6),
      I4 => line_cnt(4),
      O => \line_cnt[0]_i_4_n_0\
    );
\line_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => line_cnt(4),
      I1 => line_cnt(6),
      I2 => line_cnt(7),
      I3 => line_cnt(8),
      I4 => line_cnt(5),
      I5 => line_cnt(3),
      O => \line_cnt[0]_i_5_n_0\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FFF100FF00FF00"
    )
        port map (
      I0 => line_cnt(0),
      I1 => line_cnt(3),
      I2 => \line_cnt[0]_i_4_n_0\,
      I3 => line_cnt(1),
      I4 => \line_cnt[0]_i_5_n_0\,
      I5 => line_cnt(2),
      O => line_cnt_0(1)
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F7FFFFF0F70000"
    )
        port map (
      I0 => line_cnt(1),
      I1 => line_cnt(0),
      I2 => \line_cnt[0]_i_4_n_0\,
      I3 => line_cnt(3),
      I4 => line_cnt(2),
      I5 => \line_cnt[0]_i_5_n_0\,
      O => line_cnt_0(2)
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFF80000000"
    )
        port map (
      I0 => \line_cnt[0]_i_4_n_0\,
      I1 => line_cnt(3),
      I2 => line_cnt(2),
      I3 => line_cnt(1),
      I4 => line_cnt(0),
      I5 => \line_cnt[3]_i_2_n_0\,
      O => line_cnt_0(3)
    );
\line_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => line_cnt(3),
      I1 => line_cnt(5),
      I2 => line_cnt(8),
      I3 => line_cnt(7),
      I4 => line_cnt(6),
      I5 => line_cnt(4),
      O => \line_cnt[3]_i_2_n_0\
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => line_cnt(4),
      I1 => line_cnt(6),
      I2 => line_cnt(7),
      I3 => line_cnt(8),
      I4 => line_cnt(5),
      O => line_cnt_0(4)
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => line_cnt(5),
      I1 => line_cnt(8),
      I2 => line_cnt(7),
      I3 => line_cnt(6),
      O => line_cnt_0(5)
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => line_cnt(6),
      I1 => line_cnt(8),
      I2 => line_cnt(7),
      O => line_cnt_0(6)
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => line_cnt(8),
      I1 => line_cnt(7),
      O => line_cnt_0(7)
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => line_cnt(8),
      O => line_cnt_0(8)
    );
\line_cnt_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(0),
      Q => \sig_cmd_mst_addr_reg[31]\(13),
      R => master_rst
    );
\line_cnt_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(1),
      Q => \sig_cmd_mst_addr_reg[31]\(12),
      R => master_rst
    );
\line_cnt_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(2),
      Q => \sig_cmd_mst_addr_reg[31]\(11),
      R => master_rst
    );
\line_cnt_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(3),
      Q => \sig_cmd_mst_addr_reg[31]\(10),
      R => master_rst
    );
\line_cnt_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(4),
      Q => \sig_cmd_mst_addr_reg[31]\(9),
      R => master_rst
    );
\line_cnt_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(5),
      Q => \sig_cmd_mst_addr_reg[31]\(8),
      R => master_rst
    );
\line_cnt_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(6),
      Q => \sig_cmd_mst_addr_reg[31]\(7),
      R => master_rst
    );
\line_cnt_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(7),
      Q => \sig_cmd_mst_addr_reg[31]\(6),
      R => master_rst
    );
\line_cnt_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => line_cnt(8),
      Q => \sig_cmd_mst_addr_reg[31]\(5),
      R => master_rst
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_0(0),
      Q => line_cnt(0),
      R => trans_cnt1
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_0(1),
      Q => line_cnt(1),
      R => trans_cnt1
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_0(2),
      Q => line_cnt(2),
      R => trans_cnt1
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_0(3),
      Q => line_cnt(3),
      R => trans_cnt1
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_0(4),
      Q => line_cnt(4),
      R => trans_cnt1
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_0(5),
      Q => line_cnt(5),
      R => trans_cnt1
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_0(6),
      Q => line_cnt(6),
      R => trans_cnt1
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_0(7),
      Q => line_cnt(7),
      R => trans_cnt1
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => trans_cnt_tc_pulse,
      D => line_cnt_0(8),
      Q => line_cnt(8),
      R => trans_cnt1
    );
sig_m_valid_dup_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ip2bus_mstrd_dst_rdy\,
      I1 => sig_llink2cmd_rd_busy,
      O => sig_m_valid_out_reg
    );
\tft_base_addr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(0),
      Q => \sig_cmd_mst_addr_reg[31]\(24),
      S => master_rst
    );
\tft_base_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(10),
      Q => \sig_cmd_mst_addr_reg[31]\(14),
      R => master_rst
    );
\tft_base_addr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(1),
      Q => \sig_cmd_mst_addr_reg[31]\(23),
      S => master_rst
    );
\tft_base_addr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(2),
      Q => \sig_cmd_mst_addr_reg[31]\(22),
      S => master_rst
    );
\tft_base_addr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(3),
      Q => \sig_cmd_mst_addr_reg[31]\(21),
      S => master_rst
    );
\tft_base_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(4),
      Q => \sig_cmd_mst_addr_reg[31]\(20),
      R => master_rst
    );
\tft_base_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(5),
      Q => \sig_cmd_mst_addr_reg[31]\(19),
      R => master_rst
    );
\tft_base_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(6),
      Q => \sig_cmd_mst_addr_reg[31]\(18),
      R => master_rst
    );
\tft_base_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(7),
      Q => \sig_cmd_mst_addr_reg[31]\(17),
      R => master_rst
    );
\tft_base_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(8),
      Q => \sig_cmd_mst_addr_reg[31]\(16),
      R => master_rst
    );
\tft_base_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(9),
      Q => \sig_cmd_mst_addr_reg[31]\(15),
      R => master_rst
    );
\trans_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \trans_cnt_reg__0\(0),
      I1 => \trans_cnt_reg__0\(2),
      I2 => \trans_cnt_reg__0\(4),
      I3 => \trans_cnt_reg__0\(3),
      I4 => \trans_cnt_reg__0\(1),
      O => \p_0_in__0\(4)
    );
\trans_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \trans_cnt_reg__0\(1),
      I1 => \trans_cnt_reg__0\(3),
      I2 => \trans_cnt_reg__0\(4),
      I3 => \trans_cnt_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\trans_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \trans_cnt_reg__0\(2),
      I1 => \trans_cnt_reg__0\(4),
      I2 => \trans_cnt_reg__0\(3),
      O => \p_0_in__0\(2)
    );
\trans_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \trans_cnt_reg__0\(3),
      I1 => \trans_cnt_reg__0\(4),
      O => \p_0_in__0\(1)
    );
\trans_cnt[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trans_cnt_reg__0\(4),
      O => \p_0_in__0\(0)
    );
\trans_cnt_i[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trans_cnt_reg__0\(1),
      I1 => \trans_cnt_reg__0\(2),
      O => \trans_cnt_i[0]_i_2_n_0\
    );
\trans_cnt_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \trans_cnt_reg__0\(0),
      Q => \sig_cmd_mst_addr_reg[31]\(4),
      R => master_rst
    );
\trans_cnt_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \trans_cnt_reg__0\(1),
      Q => \sig_cmd_mst_addr_reg[31]\(3),
      R => master_rst
    );
\trans_cnt_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \trans_cnt_reg__0\(2),
      Q => \sig_cmd_mst_addr_reg[31]\(2),
      R => master_rst
    );
\trans_cnt_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \trans_cnt_reg__0\(3),
      Q => \sig_cmd_mst_addr_reg[31]\(1),
      R => master_rst
    );
\trans_cnt_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \trans_cnt_reg__0\(4),
      Q => \sig_cmd_mst_addr_reg[31]\(0),
      R => master_rst
    );
\trans_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg(0),
      D => \p_0_in__0\(4),
      Q => \trans_cnt_reg__0\(0),
      R => V_P_SYNC_n_0
    );
\trans_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg(0),
      D => \p_0_in__0\(3),
      Q => \trans_cnt_reg__0\(1),
      R => V_P_SYNC_n_0
    );
\trans_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg(0),
      D => \p_0_in__0\(2),
      Q => \trans_cnt_reg__0\(2),
      R => V_P_SYNC_n_0
    );
\trans_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg(0),
      D => \p_0_in__0\(1),
      Q => \trans_cnt_reg__0\(3),
      R => V_P_SYNC_n_0
    );
\trans_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_llink_busy_reg(0),
      D => \p_0_in__0\(0),
      Q => \trans_cnt_reg__0\(4),
      R => V_P_SYNC_n_0
    );
trans_cnt_tc_pulse_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \trans_cnt_reg__0\(2),
      I1 => \trans_cnt_reg__0\(1),
      I2 => \trans_cnt_reg__0\(3),
      I3 => \trans_cnt_reg__0\(4),
      I4 => \trans_cnt_reg__0\(0),
      O => trans_cnt_tc
    );
trans_cnt_tc_pulse_i_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => trans_cnt_tc,
      Q => trans_cnt_tc_pulse_i,
      R => master_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0_axi_tft is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    md_error : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_dvi_clk_p : out STD_LOGIC;
    tft_dvi_clk_n : out STD_LOGIC;
    tft_dvi_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    tft_iic_scl_i : in STD_LOGIC;
    tft_iic_scl_o : out STD_LOGIC;
    tft_iic_scl_t : out STD_LOGIC;
    tft_iic_sda_i : in STD_LOGIC;
    tft_iic_sda_o : out STD_LOGIC;
    tft_iic_sda_t : out STD_LOGIC
  );
  attribute C_DEFAULT_TFT_BASE_ADDR : string;
  attribute C_DEFAULT_TFT_BASE_ADDR of system_axi_tft_0_0_axi_tft : entity is "64'b0000000000000000000000000000000011110000000000000000000000000000";
  attribute C_EN_I2C_INTF : integer;
  attribute C_EN_I2C_INTF of system_axi_tft_0_0_axi_tft : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of system_axi_tft_0_0_axi_tft : entity is "artix7";
  attribute C_I2C_SLAVE_ADDR : string;
  attribute C_I2C_SLAVE_ADDR of system_axi_tft_0_0_axi_tft : entity is "8'b01110110";
  attribute C_MAX_BURST_LEN : integer;
  attribute C_MAX_BURST_LEN of system_axi_tft_0_0_axi_tft : entity is 256;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of system_axi_tft_0_0_axi_tft : entity is 32;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of system_axi_tft_0_0_axi_tft : entity is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of system_axi_tft_0_0_axi_tft : entity is 3;
  attribute C_TFT_INTERFACE : integer;
  attribute C_TFT_INTERFACE of system_axi_tft_0_0_axi_tft : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_tft_0_0_axi_tft : entity is "axi_tft";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_axi_tft_0_0_axi_tft : entity is "yes";
end system_axi_tft_0_0_axi_tft;

architecture STRUCTURE of system_axi_tft_0_0_axi_tft is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_10 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_11 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_12 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_13 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_14 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_15 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_16 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_2 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_6 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_7 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_9 : STD_LOGIC;
  signal AXI_MASTER_BURST_I_n_12 : STD_LOGIC;
  signal IP2Bus_MstRd_dst_rdy : STD_LOGIC;
  signal IP2Bus_Mst_Type : STD_LOGIC;
  signal \I_RD_LLINK_ADAPTER/sig_rd_discontinue\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/state\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \SLAVE_REG_U6/bus2ip_rdce_d1\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_rdce_d2\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_rdce_or\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_wrce_d1\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_wrce_d2\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_wrce_or\ : STD_LOGIC;
  signal \SLAVE_REG_U6/tft_status_d2\ : STD_LOGIC;
  signal TFT_CTRL_I_n_24 : STD_LOGIC;
  signal TFT_CTRL_I_n_25 : STD_LOGIC;
  signal TFT_CTRL_I_n_26 : STD_LOGIC;
  signal TFT_CTRL_I_n_27 : STD_LOGIC;
  signal TFT_CTRL_I_n_28 : STD_LOGIC;
  signal TFT_CTRL_I_n_29 : STD_LOGIC;
  signal TFT_CTRL_I_n_30 : STD_LOGIC;
  signal TFT_CTRL_I_n_31 : STD_LOGIC;
  signal TFT_CTRL_I_n_32 : STD_LOGIC;
  signal TFT_CTRL_I_n_33 : STD_LOGIC;
  signal TFT_CTRL_I_n_34 : STD_LOGIC;
  signal TFT_CTRL_I_n_35 : STD_LOGIC;
  signal TFT_CTRL_I_n_36 : STD_LOGIC;
  signal TFT_CTRL_I_n_37 : STD_LOGIC;
  signal TFT_CTRL_I_n_38 : STD_LOGIC;
  signal TFT_CTRL_I_n_39 : STD_LOGIC;
  signal TFT_CTRL_I_n_40 : STD_LOGIC;
  signal TFT_CTRL_I_n_41 : STD_LOGIC;
  signal TFT_CTRL_I_n_42 : STD_LOGIC;
  signal TFT_CTRL_I_n_43 : STD_LOGIC;
  signal TFT_CTRL_I_n_44 : STD_LOGIC;
  signal TFT_CTRL_I_n_45 : STD_LOGIC;
  signal TFT_CTRL_I_n_46 : STD_LOGIC;
  signal TFT_CTRL_I_n_47 : STD_LOGIC;
  signal TFT_CTRL_I_n_48 : STD_LOGIC;
  signal TFT_CTRL_I_n_49 : STD_LOGIC;
  signal TFT_CTRL_I_n_50 : STD_LOGIC;
  signal TFT_CTRL_I_n_69 : STD_LOGIC;
  signal TFT_CTRL_I_n_70 : STD_LOGIC;
  signal \TFT_IF_U5/C0\ : STD_LOGIC;
  signal TFT_iic_reg_data : STD_LOGIC_VECTOR ( 4 to 7 );
  signal TFT_iic_xfer : STD_LOGIC;
  signal TFT_status_reg : STD_LOGIC;
  signal bus2ip_mreset : STD_LOGIC;
  signal bus2ip_mreset_i_1_n_0 : STD_LOGIC;
  signal bus2ip_mst_cmdack : STD_LOGIC;
  signal bus2ip_mst_cmplt : STD_LOGIC;
  signal bus2ip_mstrd_d1 : STD_LOGIC_VECTOR ( 8 to 29 );
  signal bus2ip_mstrd_eof_n : STD_LOGIC;
  signal bus2ip_sreset : STD_LOGIC;
  signal bus2ip_sreset_i_1_n_0 : STD_LOGIC;
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 0 to 0 );
  signal eof_n : STD_LOGIC;
  signal eof_pulse : STD_LOGIC;
  signal ip2bus_mstrd_req : STD_LOGIC;
  signal line_cnt_i : STD_LOGIC_VECTOR ( 0 to 8 );
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arburst\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axi_arsize\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal mstr_src_rdy_n : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  signal sig_llink2cmd_rd_busy : STD_LOGIC;
  signal sig_rd2llink_strm_tlast : STD_LOGIC;
  signal temp_bus2ip_mstrd_d : STD_LOGIC_VECTOR ( 23 downto 2 );
  signal tft_base_addr : STD_LOGIC_VECTOR ( 0 to 10 );
  signal tft_base_addr_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^tft_dps\ : STD_LOGIC;
  signal tft_intr_en_i : STD_LOGIC;
  signal tft_on_reg : STD_LOGIC;
  signal tft_on_reg_i : STD_LOGIC;
  signal trans_cnt_i : STD_LOGIC_VECTOR ( 0 to 4 );
  attribute sigis : string;
  attribute sigis of ip2intc_irpt : signal is "INTR_EDGE_RISING";
  attribute max_fanout : string;
  attribute max_fanout of m_axi_aclk : signal is "10000";
  attribute sigis of m_axi_aclk : signal is "CLK";
  attribute max_fanout of m_axi_aresetn : signal is "10000";
  attribute sigis of m_axi_aresetn : signal is "RST";
  attribute max_fanout of s_axi_aclk : signal is "10000";
  attribute sigis of s_axi_aclk : signal is "CLK";
  attribute max_fanout of s_axi_aresetn : signal is "10000";
  attribute sigis of s_axi_aresetn : signal is "RST";
  attribute sigis of sys_tft_clk : signal is "CLK";
begin
  m_axi_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \^m_axi_arburst\(0);
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const1>\;
  m_axi_arcache(0) <= \<const1>\;
  m_axi_arlen(7 downto 0) <= \^m_axi_arlen\(7 downto 0);
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \^m_axi_arsize\(1);
  m_axi_arsize(0) <= \<const0>\;
  m_axi_awaddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \^m_axi_arburst\(0);
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const1>\;
  m_axi_awcache(0) <= \<const1>\;
  m_axi_awlen(7 downto 0) <= \^m_axi_arlen\(7 downto 0);
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \^m_axi_arsize\(1);
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(3) <= \^m_axi_wstrb\(2);
  m_axi_wstrb(2) <= \^m_axi_wstrb\(2);
  m_axi_wstrb(1) <= \^m_axi_wstrb\(2);
  m_axi_wstrb(0) <= \^m_axi_wstrb\(2);
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31 downto 21) <= \^s_axi_rdata\(31 downto 21);
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15 downto 0) <= \^s_axi_rdata\(15 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
  tft_dps <= \^tft_dps\;
  tft_dvi_clk_n <= \<const0>\;
  tft_dvi_clk_p <= \<const0>\;
  tft_dvi_data(11) <= \<const0>\;
  tft_dvi_data(10) <= \<const0>\;
  tft_dvi_data(9) <= \<const0>\;
  tft_dvi_data(8) <= \<const0>\;
  tft_dvi_data(7) <= \<const0>\;
  tft_dvi_data(6) <= \<const0>\;
  tft_dvi_data(5) <= \<const0>\;
  tft_dvi_data(4) <= \<const0>\;
  tft_dvi_data(3) <= \<const0>\;
  tft_dvi_data(2) <= \<const0>\;
  tft_dvi_data(1) <= \<const0>\;
  tft_dvi_data(0) <= \<const0>\;
  tft_iic_scl_o <= \<const0>\;
  tft_iic_scl_t <= \<const1>\;
  tft_iic_sda_o <= \<const0>\;
  tft_iic_sda_t <= \<const1>\;
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(21),
      Q => bus2ip_mstrd_d1(10),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(20),
      Q => bus2ip_mstrd_d1(11),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(19),
      Q => bus2ip_mstrd_d1(12),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(18),
      Q => bus2ip_mstrd_d1(13),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(15),
      Q => bus2ip_mstrd_d1(16),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(14),
      Q => bus2ip_mstrd_d1(17),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(13),
      Q => bus2ip_mstrd_d1(18),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(12),
      Q => bus2ip_mstrd_d1(19),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(11),
      Q => bus2ip_mstrd_d1(20),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(10),
      Q => bus2ip_mstrd_d1(21),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(7),
      Q => bus2ip_mstrd_d1(24),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(6),
      Q => bus2ip_mstrd_d1(25),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(5),
      Q => bus2ip_mstrd_d1(26),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(4),
      Q => bus2ip_mstrd_d1(27),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(3),
      Q => bus2ip_mstrd_d1(28),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(2),
      Q => bus2ip_mstrd_d1(29),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(23),
      Q => bus2ip_mstrd_d1(8),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => temp_bus2ip_mstrd_d(22),
      Q => bus2ip_mstrd_d1(9),
      R => bus2ip_mreset
    );
\AXI_DATA_WIDTH_32.mstr_src_rdy_n_reg\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => AXI_MASTER_BURST_I_n_12,
      Q => mstr_src_rdy_n,
      R => '0'
    );
AXI_LITE_IPIF_I: entity work.system_axi_tft_0_0_axi_lite_ipif
     port map (
      D(26) => TFT_CTRL_I_n_24,
      D(25) => TFT_CTRL_I_n_25,
      D(24) => TFT_CTRL_I_n_26,
      D(23) => TFT_CTRL_I_n_27,
      D(22) => TFT_CTRL_I_n_28,
      D(21) => TFT_CTRL_I_n_29,
      D(20) => TFT_CTRL_I_n_30,
      D(19) => TFT_CTRL_I_n_31,
      D(18) => TFT_CTRL_I_n_32,
      D(17) => TFT_CTRL_I_n_33,
      D(16) => TFT_CTRL_I_n_34,
      D(15) => TFT_CTRL_I_n_35,
      D(14) => TFT_CTRL_I_n_36,
      D(13) => TFT_CTRL_I_n_37,
      D(12) => TFT_CTRL_I_n_38,
      D(11) => TFT_CTRL_I_n_39,
      D(10) => TFT_CTRL_I_n_40,
      D(9) => TFT_CTRL_I_n_41,
      D(8) => TFT_CTRL_I_n_42,
      D(7) => TFT_CTRL_I_n_43,
      D(6) => TFT_CTRL_I_n_44,
      D(5) => TFT_CTRL_I_n_45,
      D(4) => TFT_CTRL_I_n_46,
      D(3) => TFT_CTRL_I_n_47,
      D(2) => TFT_CTRL_I_n_48,
      D(1) => TFT_CTRL_I_n_49,
      D(0) => TFT_CTRL_I_n_50,
      E(0) => bus2ip_wrce(0),
      \IP2Bus_Data_reg[0]\ => AXI_LITE_IPIF_I_n_6,
      \IP2Bus_Data_reg[16]\ => AXI_LITE_IPIF_I_n_7,
      \IP2Bus_Data_reg[1]\ => AXI_LITE_IPIF_I_n_12,
      \IP2Bus_Data_reg[28]\ => AXI_LITE_IPIF_I_n_9,
      \IP2Bus_Data_reg[30]\ => AXI_LITE_IPIF_I_n_10,
      \IP2Bus_Data_reg[31]\ => AXI_LITE_IPIF_I_n_11,
      Q(0) => \I_SLAVE_ATTACHMENT/state\(0),
      \TFT_base_addr_reg[0]\(0) => tft_base_addr_i(0),
      \TFT_base_addr_reg[10]\(0) => AXI_LITE_IPIF_I_n_16,
      TFT_dps_reg_reg => AXI_LITE_IPIF_I_n_14,
      \TFT_iic_reg_data_reg[4]\(2) => TFT_iic_reg_data(4),
      \TFT_iic_reg_data_reg[4]\(1) => TFT_iic_reg_data(6),
      \TFT_iic_reg_data_reg[4]\(0) => TFT_iic_reg_data(7),
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_intr_en_reg => AXI_LITE_IPIF_I_n_13,
      TFT_on_reg_reg => AXI_LITE_IPIF_I_n_15,
      TFT_on_reg_reg_0 => tft_on_reg_i,
      TFT_status_reg => TFT_status_reg,
      TFT_status_reg_reg => AXI_LITE_IPIF_I_n_2,
      bus2ip_rdce_d1 => \SLAVE_REG_U6/bus2ip_rdce_d1\,
      bus2ip_rdce_d1_reg => TFT_CTRL_I_n_69,
      bus2ip_rdce_d2 => \SLAVE_REG_U6/bus2ip_rdce_d2\,
      bus2ip_rdce_or => \SLAVE_REG_U6/bus2ip_rdce_or\,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce_d1 => \SLAVE_REG_U6/bus2ip_wrce_d1\,
      bus2ip_wrce_d2 => \SLAVE_REG_U6/bus2ip_wrce_d2\,
      bus2ip_wrce_or => \SLAVE_REG_U6/bus2ip_wrce_or\,
      cs_ce_clr => \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\,
      prmry_in => tft_intr_en_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(26 downto 16) => \^s_axi_rdata\(31 downto 21),
      s_axi_rdata(15 downto 0) => \^s_axi_rdata\(15 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(2) => s_axi_wdata(3),
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      tft_dps => \^tft_dps\,
      tft_status_d2 => \SLAVE_REG_U6/tft_status_d2\
    );
AXI_MASTER_BURST_I: entity work.system_axi_tft_0_0_axi_master_burst
     port map (
      \AXI_DATA_WIDTH_32.mstr_src_rdy_n_reg\ => AXI_MASTER_BURST_I_n_12,
      D(24) => tft_base_addr(0),
      D(23) => tft_base_addr(1),
      D(22) => tft_base_addr(2),
      D(21) => tft_base_addr(3),
      D(20) => tft_base_addr(4),
      D(19) => tft_base_addr(5),
      D(18) => tft_base_addr(6),
      D(17) => tft_base_addr(7),
      D(16) => tft_base_addr(8),
      D(15) => tft_base_addr(9),
      D(14) => tft_base_addr(10),
      D(13) => line_cnt_i(0),
      D(12) => line_cnt_i(1),
      D(11) => line_cnt_i(2),
      D(10) => line_cnt_i(3),
      D(9) => line_cnt_i(4),
      D(8) => line_cnt_i(5),
      D(7) => line_cnt_i(6),
      D(6) => line_cnt_i(7),
      D(5) => line_cnt_i(8),
      D(4) => trans_cnt_i(0),
      D(3) => trans_cnt_i(1),
      D(2) => trans_cnt_i(2),
      D(1) => trans_cnt_i(3),
      D(0) => trans_cnt_i(4),
      E(0) => eof_pulse,
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      IP2Bus_MstRd_dst_rdy_reg => TFT_CTRL_I_n_70,
      IP2Bus_Mst_Type => IP2Bus_Mst_Type,
      Q(17 downto 12) => temp_bus2ip_mstrd_d(23 downto 18),
      Q(11 downto 6) => temp_bus2ip_mstrd_d(15 downto 10),
      Q(5 downto 0) => temp_bus2ip_mstrd_d(7 downto 2),
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      bus2ip_mst_cmplt => bus2ip_mst_cmplt,
      bus2ip_mstrd_eof_n => bus2ip_mstrd_eof_n,
      eof_n => eof_n,
      ip2bus_mstrd_req => ip2bus_mstrd_req,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => \^m_axi_araddr\(31 downto 0),
      m_axi_arburst(0) => \^m_axi_arburst\(0),
      m_axi_aresetn => m_axi_aresetn,
      m_axi_arlen(7 downto 0) => \^m_axi_arlen\(7 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => \^m_axi_arsize\(1),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(17 downto 12) => m_axi_rdata(23 downto 18),
      m_axi_rdata(11 downto 6) => m_axi_rdata(15 downto 10),
      m_axi_rdata(5 downto 0) => m_axi_rdata(7 downto 2),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(0) => \^m_axi_wstrb\(2),
      m_axi_wvalid => m_axi_wvalid,
      md_error => md_error,
      mstr_src_rdy_n => mstr_src_rdy_n,
      scndry_out => tft_on_reg,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rd_discontinue => \I_RD_LLINK_ADAPTER/sig_rd_discontinue\
    );
FDS_HSYNC_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_tft_clk,
      O => \TFT_IF_U5/C0\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
TFT_CTRL_I: entity work.system_axi_tft_0_0_axi_tft_v2_0_19_tft_controller
     port map (
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(35) => bus2ip_mstrd_d1(8),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(34) => bus2ip_mstrd_d1(9),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(33) => bus2ip_mstrd_d1(10),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(32) => bus2ip_mstrd_d1(11),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(31) => bus2ip_mstrd_d1(12),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(30) => bus2ip_mstrd_d1(13),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(29) => bus2ip_mstrd_d1(16),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(28) => bus2ip_mstrd_d1(17),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(27) => bus2ip_mstrd_d1(18),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(26) => bus2ip_mstrd_d1(19),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(25) => bus2ip_mstrd_d1(20),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(24) => bus2ip_mstrd_d1(21),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(23) => bus2ip_mstrd_d1(24),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(22) => bus2ip_mstrd_d1(25),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(21) => bus2ip_mstrd_d1(26),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(20) => bus2ip_mstrd_d1(27),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(19) => bus2ip_mstrd_d1(28),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(18) => bus2ip_mstrd_d1(29),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(17 downto 12) => temp_bus2ip_mstrd_d(23 downto 18),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(11 downto 6) => temp_bus2ip_mstrd_d(15 downto 10),
      \AXI_DATA_WIDTH_32.bus2ip_mstrd_d1_reg[8]\(5 downto 0) => temp_bus2ip_mstrd_d(7 downto 2),
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_6,
      C0 => \TFT_IF_U5/C0\,
      D(26) => TFT_CTRL_I_n_24,
      D(25) => TFT_CTRL_I_n_25,
      D(24) => TFT_CTRL_I_n_26,
      D(23) => TFT_CTRL_I_n_27,
      D(22) => TFT_CTRL_I_n_28,
      D(21) => TFT_CTRL_I_n_29,
      D(20) => TFT_CTRL_I_n_30,
      D(19) => TFT_CTRL_I_n_31,
      D(18) => TFT_CTRL_I_n_32,
      D(17) => TFT_CTRL_I_n_33,
      D(16) => TFT_CTRL_I_n_34,
      D(15) => TFT_CTRL_I_n_35,
      D(14) => TFT_CTRL_I_n_36,
      D(13) => TFT_CTRL_I_n_37,
      D(12) => TFT_CTRL_I_n_38,
      D(11) => TFT_CTRL_I_n_39,
      D(10) => TFT_CTRL_I_n_40,
      D(9) => TFT_CTRL_I_n_41,
      D(8) => TFT_CTRL_I_n_42,
      D(7) => TFT_CTRL_I_n_43,
      D(6) => TFT_CTRL_I_n_44,
      D(5) => TFT_CTRL_I_n_45,
      D(4) => TFT_CTRL_I_n_46,
      D(3) => TFT_CTRL_I_n_47,
      D(2) => TFT_CTRL_I_n_48,
      D(1) => TFT_CTRL_I_n_49,
      D(0) => TFT_CTRL_I_n_50,
      E(0) => bus2ip_wrce(0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ => tft_on_reg_i,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => AXI_LITE_IPIF_I_n_12,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => AXI_LITE_IPIF_I_n_7,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => AXI_LITE_IPIF_I_n_9,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => AXI_LITE_IPIF_I_n_2,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_3\(0) => AXI_LITE_IPIF_I_n_16,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => AXI_LITE_IPIF_I_n_11,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ => AXI_LITE_IPIF_I_n_15,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ => AXI_LITE_IPIF_I_n_14,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => AXI_LITE_IPIF_I_n_13,
      \IP2Bus_Data_reg[28]\(2) => TFT_iic_reg_data(4),
      \IP2Bus_Data_reg[28]\(1) => TFT_iic_reg_data(6),
      \IP2Bus_Data_reg[28]\(0) => TFT_iic_reg_data(7),
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      IP2Bus_Mst_Type => IP2Bus_Mst_Type,
      Q(0) => tft_base_addr_i(0),
      \TFT_iic_reg_data_reg[6]\ => AXI_LITE_IPIF_I_n_10,
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_status_reg => TFT_status_reg,
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      bus2ip_mst_cmplt => bus2ip_mst_cmplt,
      bus2ip_mstrd_eof_n => bus2ip_mstrd_eof_n,
      bus2ip_rdce_d1 => \SLAVE_REG_U6/bus2ip_rdce_d1\,
      bus2ip_rdce_d2 => \SLAVE_REG_U6/bus2ip_rdce_d2\,
      bus2ip_rdce_or => \SLAVE_REG_U6/bus2ip_rdce_or\,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce_d1 => \SLAVE_REG_U6/bus2ip_wrce_d1\,
      bus2ip_wrce_d2 => \SLAVE_REG_U6/bus2ip_wrce_d2\,
      bus2ip_wrce_or => \SLAVE_REG_U6/bus2ip_wrce_or\,
      cs_ce_clr => \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\,
      eof_n => eof_n,
      ip2bus_mstrd_req => ip2bus_mstrd_req,
      ip2intc_irpt => ip2intc_irpt,
      m_axi_aclk => m_axi_aclk,
      mstr_src_rdy_n => mstr_src_rdy_n,
      prmry_in => tft_intr_en_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wdata(26 downto 16) => s_axi_wdata(31 downto 21),
      s_axi_wdata(15 downto 0) => s_axi_wdata(15 downto 0),
      s_axi_wready => \^s_axi_wready\,
      s_axi_wvalid => s_axi_wvalid,
      scndry_out => tft_on_reg,
      \sig_cmd_mst_addr_reg[31]\(24) => tft_base_addr(0),
      \sig_cmd_mst_addr_reg[31]\(23) => tft_base_addr(1),
      \sig_cmd_mst_addr_reg[31]\(22) => tft_base_addr(2),
      \sig_cmd_mst_addr_reg[31]\(21) => tft_base_addr(3),
      \sig_cmd_mst_addr_reg[31]\(20) => tft_base_addr(4),
      \sig_cmd_mst_addr_reg[31]\(19) => tft_base_addr(5),
      \sig_cmd_mst_addr_reg[31]\(18) => tft_base_addr(6),
      \sig_cmd_mst_addr_reg[31]\(17) => tft_base_addr(7),
      \sig_cmd_mst_addr_reg[31]\(16) => tft_base_addr(8),
      \sig_cmd_mst_addr_reg[31]\(15) => tft_base_addr(9),
      \sig_cmd_mst_addr_reg[31]\(14) => tft_base_addr(10),
      \sig_cmd_mst_addr_reg[31]\(13) => line_cnt_i(0),
      \sig_cmd_mst_addr_reg[31]\(12) => line_cnt_i(1),
      \sig_cmd_mst_addr_reg[31]\(11) => line_cnt_i(2),
      \sig_cmd_mst_addr_reg[31]\(10) => line_cnt_i(3),
      \sig_cmd_mst_addr_reg[31]\(9) => line_cnt_i(4),
      \sig_cmd_mst_addr_reg[31]\(8) => line_cnt_i(5),
      \sig_cmd_mst_addr_reg[31]\(7) => line_cnt_i(6),
      \sig_cmd_mst_addr_reg[31]\(6) => line_cnt_i(7),
      \sig_cmd_mst_addr_reg[31]\(5) => line_cnt_i(8),
      \sig_cmd_mst_addr_reg[31]\(4) => trans_cnt_i(0),
      \sig_cmd_mst_addr_reg[31]\(3) => trans_cnt_i(1),
      \sig_cmd_mst_addr_reg[31]\(2) => trans_cnt_i(2),
      \sig_cmd_mst_addr_reg[31]\(1) => trans_cnt_i(3),
      \sig_cmd_mst_addr_reg[31]\(0) => trans_cnt_i(4),
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_llink_busy_reg(0) => eof_pulse,
      sig_m_valid_out_reg => TFT_CTRL_I_n_70,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rd_discontinue => \I_RD_LLINK_ADAPTER/sig_rd_discontinue\,
      \state_reg[0]\(0) => \I_SLAVE_ATTACHMENT/state\(0),
      \state_reg[1]\ => TFT_CTRL_I_n_69,
      sys_tft_clk => sys_tft_clk,
      tft_de => tft_de,
      tft_dps => \^tft_dps\,
      tft_hsync => tft_hsync,
      tft_status_d2 => \SLAVE_REG_U6/tft_status_d2\,
      tft_vga_b(5 downto 0) => tft_vga_b(5 downto 0),
      tft_vga_clk => tft_vga_clk,
      tft_vga_g(5 downto 0) => tft_vga_g(5 downto 0),
      tft_vga_r(5 downto 0) => tft_vga_r(5 downto 0),
      tft_vsync => tft_vsync
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
bus2ip_mreset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axi_aresetn,
      O => bus2ip_mreset_i_1_n_0
    );
bus2ip_mreset_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => bus2ip_mreset_i_1_n_0,
      Q => bus2ip_mreset,
      R => '0'
    );
bus2ip_sreset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => bus2ip_sreset_i_1_n_0
    );
bus2ip_sreset_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_sreset_i_1_n_0,
      Q => bus2ip_sreset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_tft_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    md_error : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_axi_tft_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_axi_tft_0_0 : entity is "system_axi_tft_0_0,axi_tft,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_axi_tft_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_axi_tft_0_0 : entity is "axi_tft,Vivado 2017.4";
end system_axi_tft_0_0;

architecture STRUCTURE of system_axi_tft_0_0 is
  signal NLW_U0_tft_dvi_clk_n_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_dvi_clk_p_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_scl_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_scl_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_sda_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_sda_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_dvi_data_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute C_DEFAULT_TFT_BASE_ADDR : string;
  attribute C_DEFAULT_TFT_BASE_ADDR of U0 : label is "64'b0000000000000000000000000000000011110000000000000000000000000000";
  attribute C_EN_I2C_INTF : integer;
  attribute C_EN_I2C_INTF of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_I2C_SLAVE_ADDR : string;
  attribute C_I2C_SLAVE_ADDR of U0 : label is "8'b01110110";
  attribute C_MAX_BURST_LEN : integer;
  attribute C_MAX_BURST_LEN of U0 : label is 256;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 3;
  attribute C_TFT_INTERFACE : integer;
  attribute C_TFT_INTERFACE of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of ip2intc_irpt : signal is "xilinx.com:signal:interrupt:1.0 TFT_INTR INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ip2intc_irpt : signal is "XIL_INTERFACENAME TFT_INTR, SENSITIVITY EDGE_RISING, PortWidth 1";
  attribute x_interface_info of m_axi_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
  attribute x_interface_parameter of m_axi_aclk : signal is "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI_MM, ASSOCIATED_RESET m_axi_aresetn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN system_mig_7series_0_0_ui_clk";
  attribute x_interface_info of m_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST";
  attribute x_interface_parameter of m_axi_aresetn : signal is "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW";
  attribute x_interface_info of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARREADY";
  attribute x_interface_parameter of m_axi_arready : signal is "XIL_INTERFACENAME M_AXI_MM, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN system_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARVALID";
  attribute x_interface_info of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWREADY";
  attribute x_interface_info of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWVALID";
  attribute x_interface_info of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM BREADY";
  attribute x_interface_info of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM BVALID";
  attribute x_interface_info of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM RLAST";
  attribute x_interface_info of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM RREADY";
  attribute x_interface_info of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM RVALID";
  attribute x_interface_info of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM WLAST";
  attribute x_interface_info of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM WREADY";
  attribute x_interface_info of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM WVALID";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI_MM, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN system_mig_7series_0_0_ui_clk";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM WVALID";
  attribute x_interface_info of sys_tft_clk : signal is "xilinx.com:signal:clock:1.0 TFT_CLK CLK";
  attribute x_interface_parameter of sys_tft_clk : signal is "XIL_INTERFACENAME TFT_CLK, ASSOCIATED_BUSIF VGA_INTF:DVI_INTF, FREQ_HZ 25000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute x_interface_info of tft_de : signal is "xilinx.com:interface:vga:1.0 VGA_INTF DE";
  attribute x_interface_info of tft_dps : signal is "xilinx.com:interface:vga:1.0 VGA_INTF DPS";
  attribute x_interface_info of tft_hsync : signal is "xilinx.com:interface:vga:1.0 VGA_INTF HSYNC";
  attribute x_interface_info of tft_vga_clk : signal is "xilinx.com:interface:vga:1.0 VGA_INTF CLK";
  attribute x_interface_info of tft_vsync : signal is "xilinx.com:interface:vga:1.0 VGA_INTF VSYNC";
  attribute x_interface_info of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARADDR";
  attribute x_interface_info of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARBURST";
  attribute x_interface_info of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARCACHE";
  attribute x_interface_info of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARLEN";
  attribute x_interface_info of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARPROT";
  attribute x_interface_info of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM ARSIZE";
  attribute x_interface_info of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWADDR";
  attribute x_interface_info of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWBURST";
  attribute x_interface_info of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWCACHE";
  attribute x_interface_info of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWLEN";
  attribute x_interface_info of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWPROT";
  attribute x_interface_info of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM AWSIZE";
  attribute x_interface_info of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM BRESP";
  attribute x_interface_info of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM RDATA";
  attribute x_interface_info of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM RRESP";
  attribute x_interface_info of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM WDATA";
  attribute x_interface_info of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM WSTRB";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI_MM, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN system_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_MM WSTRB";
  attribute x_interface_info of tft_vga_b : signal is "xilinx.com:interface:vga:1.0 VGA_INTF BLUE";
  attribute x_interface_info of tft_vga_g : signal is "xilinx.com:interface:vga:1.0 VGA_INTF GREEN";
  attribute x_interface_info of tft_vga_r : signal is "xilinx.com:interface:vga:1.0 VGA_INTF RED";
begin
U0: entity work.system_axi_tft_0_0_axi_tft
     port map (
      ip2intc_irpt => ip2intc_irpt,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_aresetn => m_axi_aresetn,
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      md_error => md_error,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sys_tft_clk => sys_tft_clk,
      tft_de => tft_de,
      tft_dps => tft_dps,
      tft_dvi_clk_n => NLW_U0_tft_dvi_clk_n_UNCONNECTED,
      tft_dvi_clk_p => NLW_U0_tft_dvi_clk_p_UNCONNECTED,
      tft_dvi_data(11 downto 0) => NLW_U0_tft_dvi_data_UNCONNECTED(11 downto 0),
      tft_hsync => tft_hsync,
      tft_iic_scl_i => '0',
      tft_iic_scl_o => NLW_U0_tft_iic_scl_o_UNCONNECTED,
      tft_iic_scl_t => NLW_U0_tft_iic_scl_t_UNCONNECTED,
      tft_iic_sda_i => '0',
      tft_iic_sda_o => NLW_U0_tft_iic_sda_o_UNCONNECTED,
      tft_iic_sda_t => NLW_U0_tft_iic_sda_t_UNCONNECTED,
      tft_vga_b(5 downto 0) => tft_vga_b(5 downto 0),
      tft_vga_clk => tft_vga_clk,
      tft_vga_g(5 downto 0) => tft_vga_g(5 downto 0),
      tft_vga_r(5 downto 0) => tft_vga_r(5 downto 0),
      tft_vsync => tft_vsync
    );
end STRUCTURE;
