-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Sep  3 11:47:22 2021
-- Host        : DESKTOP-KFMNFE2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top sys_top_s00_data_fifo_452 -prefix
--               sys_top_s00_data_fifo_452_ sys_top_s00_data_fifo_444_sim_netlist.vhdl
-- Design      : sys_top_s00_data_fifo_444
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of sys_top_s00_data_fifo_452_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of sys_top_s00_data_fifo_452_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of sys_top_s00_data_fifo_452_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of sys_top_s00_data_fifo_452_xpm_cdc_async_rst : entity is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of sys_top_s00_data_fifo_452_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of sys_top_s00_data_fifo_452_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of sys_top_s00_data_fifo_452_xpm_cdc_async_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of sys_top_s00_data_fifo_452_xpm_cdc_async_rst : entity is "ASYNC_RST";
end sys_top_s00_data_fifo_452_xpm_cdc_async_rst;

architecture STRUCTURE of sys_top_s00_data_fifo_452_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\ : entity is "ASYNC_RST";
end \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\ : entity is "ASYNC_RST";
end \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\ : entity is "ASYNC_RST";
end \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\ : entity is "ASYNC_RST";
end \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of sys_top_s00_data_fifo_452_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of sys_top_s00_data_fifo_452_xpm_cdc_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of sys_top_s00_data_fifo_452_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of sys_top_s00_data_fifo_452_xpm_cdc_single : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of sys_top_s00_data_fifo_452_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of sys_top_s00_data_fifo_452_xpm_cdc_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of sys_top_s00_data_fifo_452_xpm_cdc_single : entity is "SINGLE";
end sys_top_s00_data_fifo_452_xpm_cdc_single;

architecture STRUCTURE of sys_top_s00_data_fifo_452_xpm_cdc_single is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_xpm_cdc_single__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_single__1\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_single__1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_xpm_cdc_single__1\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \sys_top_s00_data_fifo_452_xpm_cdc_single__1\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \sys_top_s00_data_fifo_452_xpm_cdc_single__1\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \sys_top_s00_data_fifo_452_xpm_cdc_single__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \sys_top_s00_data_fifo_452_xpm_cdc_single__1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \sys_top_s00_data_fifo_452_xpm_cdc_single__1\ : entity is "SINGLE";
end \sys_top_s00_data_fifo_452_xpm_cdc_single__1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_xpm_cdc_single__1\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_xpm_cdc_single__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_single__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_single__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_xpm_cdc_single__2\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \sys_top_s00_data_fifo_452_xpm_cdc_single__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \sys_top_s00_data_fifo_452_xpm_cdc_single__2\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \sys_top_s00_data_fifo_452_xpm_cdc_single__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \sys_top_s00_data_fifo_452_xpm_cdc_single__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \sys_top_s00_data_fifo_452_xpm_cdc_single__2\ : entity is "SINGLE";
end \sys_top_s00_data_fifo_452_xpm_cdc_single__2\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_xpm_cdc_single__2\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of sys_top_s00_data_fifo_452_xpm_cdc_sync_rst : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of sys_top_s00_data_fifo_452_xpm_cdc_sync_rst : entity is 5;
  attribute INIT : string;
  attribute INIT of sys_top_s00_data_fifo_452_xpm_cdc_sync_rst : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of sys_top_s00_data_fifo_452_xpm_cdc_sync_rst : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of sys_top_s00_data_fifo_452_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of sys_top_s00_data_fifo_452_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of sys_top_s00_data_fifo_452_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of sys_top_s00_data_fifo_452_xpm_cdc_sync_rst : entity is "SYNC_RST";
end sys_top_s00_data_fifo_452_xpm_cdc_sync_rst;

architecture STRUCTURE of sys_top_s00_data_fifo_452_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
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
entity \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\ : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\ : entity is 5;
  attribute INIT : string;
  attribute INIT of \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\ : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\ : entity is "SYNC_RST";
end \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
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
entity sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper is
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
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 5) => Q(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CLKARDCLK => s_aclk,
      CLKBWRCLK => s_aclk,
      DIADI(15 downto 0) => DIADI(15 downto 0),
      DIBDI(15 downto 8) => s_axi_wdata(17 downto 10),
      DIBDI(7 downto 0) => s_axi_wdata(8 downto 1),
      DIPADIP(1) => s_axi_wdata(0),
      DIPADIP(0) => s_axi_wstrb(0),
      DIPBDIP(1) => s_axi_wdata(18),
      DIPBDIP(0) => s_axi_wdata(9),
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
      RSTRAMARSTRAM => POR_B,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\(0),
      WEBWE(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\(0),
      WEBWE(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\(0),
      WEBWE(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 38 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 37 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper__parameterized0\ : entity is "blk_mem_gen_prim_wrapper";
end \sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_12\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_13\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_14\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_20\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_28\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_30\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_36\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_39\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_4\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_44\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_46\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_5\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_52\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_6\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_60\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_62\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_73\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => Q(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_aclk,
      CLKBWRCLK => s_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 29) => B"000",
      DIADI(28 downto 24) => s_axi_wdata(19 downto 15),
      DIADI(23 downto 21) => B"000",
      DIADI(20 downto 16) => s_axi_wdata(14 downto 10),
      DIADI(15 downto 13) => B"000",
      DIADI(12 downto 8) => s_axi_wdata(9 downto 5),
      DIADI(7 downto 5) => B"000",
      DIADI(4 downto 0) => s_axi_wdata(4 downto 0),
      DIBDI(31 downto 28) => B"0000",
      DIBDI(27) => s_axi_wid(0),
      DIBDI(26 downto 24) => s_axi_wdata(37 downto 35),
      DIBDI(23 downto 21) => B"000",
      DIBDI(20 downto 16) => s_axi_wdata(34 downto 30),
      DIBDI(15 downto 13) => B"000",
      DIBDI(12 downto 8) => s_axi_wdata(29 downto 25),
      DIBDI(7 downto 5) => B"000",
      DIBDI(4 downto 0) => s_axi_wdata(24 downto 20),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_4\,
      DOADO(30) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_5\,
      DOADO(29) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_6\,
      DOADO(28 downto 24) => D(19 downto 15),
      DOADO(23) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_12\,
      DOADO(22) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_13\,
      DOADO(21) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_14\,
      DOADO(20 downto 16) => D(14 downto 10),
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_20\,
      DOADO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21\,
      DOADO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22\,
      DOADO(12 downto 8) => D(9 downto 5),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_28\,
      DOADO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29\,
      DOADO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_30\,
      DOADO(4 downto 0) => D(4 downto 0),
      DOBDO(31) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_36\,
      DOBDO(30) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37\,
      DOBDO(29) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38\,
      DOBDO(28) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_39\,
      DOBDO(27 downto 24) => D(38 downto 35),
      DOBDO(23) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_44\,
      DOBDO(22) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45\,
      DOBDO(21) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_46\,
      DOBDO(20 downto 16) => D(34 downto 30),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_52\,
      DOBDO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53\,
      DOBDO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54\,
      DOBDO(12 downto 8) => D(29 downto 25),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_60\,
      DOBDO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61\,
      DOBDO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_62\,
      DOBDO(4 downto 0) => D(24 downto 20),
      DOPADOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68\,
      DOPADOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69\,
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71\,
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72\,
      DOPBDOP(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_73\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ENB_I,
      ENBWREN => ENA_I,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => POR_B,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\(0),
      WEBWE(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\(0),
      WEBWE(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\(0),
      WEBWE(4) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\(0),
      WEBWE(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\(0),
      WEBWE(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\(0),
      WEBWE(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\(0),
      WEBWE(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    ENA_I : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_2\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_3\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper__parameterized1\ : entity is "blk_mem_gen_prim_wrapper";
end \sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper__parameterized1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper__parameterized1\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74\ : STD_LOGIC;
  signal ENA_I_0 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_2\,
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_3\,
      I2 => s_axi_wvalid,
      O => ENA_I
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
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
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 72,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 72
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(8 downto 0),
      ADDRARDADDR(5 downto 0) => B"111111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => Q(8 downto 0),
      ADDRBWRADDR(5 downto 0) => B"111111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_aclk,
      CLKBWRCLK => s_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 24) => m_axi_rdata(30 downto 23),
      DIADI(23 downto 16) => m_axi_rdata(21 downto 14),
      DIADI(15 downto 8) => m_axi_rdata(12 downto 5),
      DIADI(7 downto 4) => m_axi_rdata(3 downto 0),
      DIADI(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\(3 downto 0),
      DIBDI(31) => m_axi_rid(0),
      DIBDI(30 downto 24) => m_axi_rdata(63 downto 57),
      DIBDI(23 downto 8) => m_axi_rdata(55 downto 40),
      DIBDI(7 downto 0) => m_axi_rdata(38 downto 31),
      DIPADIP(3) => '0',
      DIPADIP(2) => m_axi_rdata(22),
      DIPADIP(1) => m_axi_rdata(13),
      DIPADIP(0) => m_axi_rdata(4),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => m_axi_rdata(56),
      DIPBDIP(1) => '0',
      DIPBDIP(0) => m_axi_rdata(39),
      DOADO(31 downto 24) => D(34 downto 27),
      DOADO(23 downto 16) => D(25 downto 18),
      DOADO(15 downto 8) => D(16 downto 9),
      DOADO(7 downto 0) => D(7 downto 0),
      DOBDO(31 downto 24) => D(68 downto 61),
      DOBDO(23 downto 8) => D(59 downto 44),
      DOBDO(7 downto 0) => D(42 downto 35),
      DOPADOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_68\,
      DOPADOP(2) => D(26),
      DOPADOP(1) => D(17),
      DOPADOP(0) => D(8),
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_72\,
      DOPBDOP(2) => D(60),
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_74\,
      DOPBDOP(0) => D(43),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ENB_I,
      ENBWREN => ENA_I_0,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => POR_B,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7) => E(0),
      WEBWE(6) => E(0),
      WEBWE(5) => E(0),
      WEBWE(4) => E(0),
      WEBWE(3) => E(0),
      WEBWE(2) => E(0),
      WEBWE(1) => E(0),
      WEBWE(0) => E(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_2\,
      I1 => \out\,
      I2 => m_axi_rvalid,
      O => ENA_I_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_compare__parameterized0\ is
  port (
    comp0 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_compare__parameterized0\ : entity is "compare";
end \sys_top_s00_data_fifo_452_compare__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_compare__parameterized0\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
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
      S(0) => v1_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_compare__parameterized0_0\ is
  port (
    \grstd1.grst_full.grst_f.rst_d3_reg\ : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_out : in STD_LOGIC;
    comp0 : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_compare__parameterized0_0\ : entity is "compare";
end \sys_top_s00_data_fifo_452_compare__parameterized0_0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_compare__parameterized0_0\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal ram_full_fb_i_i_2_n_0 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
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
      S(3 downto 0) => v1_reg_0(3 downto 0)
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
      S(0) => v1_reg_0(4)
    );
\ram_full_fb_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAFFFAEAEAEAE"
    )
        port map (
      I0 => SR(0),
      I1 => ram_full_fb_i_i_2_n_0,
      I2 => p_8_out,
      I3 => comp0,
      I4 => ram_full_i_reg,
      I5 => \out\,
      O => \grstd1.grst_full.grst_f.rst_d3_reg\
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \out\,
      I1 => s_axi_wvalid,
      I2 => comp1,
      O => ram_full_fb_i_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_compare__parameterized0_1\ is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gmux.gm[1].gms.ms_0\ : in STD_LOGIC;
    \gmux.gm[2].gms.ms_0\ : in STD_LOGIC;
    \gmux.gm[3].gms.ms_0\ : in STD_LOGIC;
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    comp1 : in STD_LOGIC;
    ram_empty_i_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_compare__parameterized0_1\ : entity is "compare";
end \sys_top_s00_data_fifo_452_compare__parameterized0_1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_compare__parameterized0_1\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
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
      S(3) => \gmux.gm[4].gms.ms_0\,
      S(2) => \gmux.gm[3].gms.ms_0\,
      S(1) => \gmux.gm[2].gms.ms_0\,
      S(0) => \gmux.gm[1].gms.ms_0\
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
      S(0) => ram_empty_i_reg
    );
\ram_empty_fb_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F2F2FFFAFAFA"
    )
        port map (
      I0 => \out\,
      I1 => comp0,
      I2 => ram_empty_i_reg_0,
      I3 => E(0),
      I4 => comp1,
      I5 => ram_empty_i_reg_1(0),
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_compare__parameterized0_12\ is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gmux.gm[1].gms.ms_0\ : in STD_LOGIC;
    \gmux.gm[2].gms.ms_0\ : in STD_LOGIC;
    \gmux.gm[3].gms.ms_0\ : in STD_LOGIC;
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    comp1 : in STD_LOGIC;
    ram_empty_i_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_compare__parameterized0_12\ : entity is "compare";
end \sys_top_s00_data_fifo_452_compare__parameterized0_12\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_compare__parameterized0_12\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
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
      S(3) => \gmux.gm[4].gms.ms_0\,
      S(2) => \gmux.gm[3].gms.ms_0\,
      S(1) => \gmux.gm[2].gms.ms_0\,
      S(0) => \gmux.gm[1].gms.ms_0\
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
      S(0) => ram_empty_i_reg
    );
\ram_empty_fb_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F2F2FFFAFAFA"
    )
        port map (
      I0 => \out\,
      I1 => comp0,
      I2 => ram_empty_i_reg_0,
      I3 => E(0),
      I4 => comp1,
      I5 => ram_empty_i_reg_1(0),
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_compare__parameterized0_13\ is
  port (
    comp1 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_compare__parameterized0_13\ : entity is "compare";
end \sys_top_s00_data_fifo_452_compare__parameterized0_13\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_compare__parameterized0_13\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
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
      S(0) => v1_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_compare__parameterized0_2\ is
  port (
    comp1 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_compare__parameterized0_2\ : entity is "compare";
end \sys_top_s00_data_fifo_452_compare__parameterized0_2\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_compare__parameterized0_2\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
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
      S(0) => v1_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_compare__parameterized0_7\ is
  port (
    comp0 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_compare__parameterized0_7\ : entity is "compare";
end \sys_top_s00_data_fifo_452_compare__parameterized0_7\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_compare__parameterized0_7\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
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
      S(0) => v1_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_compare__parameterized0_8\ is
  port (
    \grstd1.grst_full.grst_f.rst_d3_reg\ : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_out : in STD_LOGIC;
    comp0 : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_compare__parameterized0_8\ : entity is "compare";
end \sys_top_s00_data_fifo_452_compare__parameterized0_8\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_compare__parameterized0_8\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal \ram_full_fb_i_i_2__0_n_0\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
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
      S(3 downto 0) => v1_reg_0(3 downto 0)
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
      S(0) => v1_reg_0(4)
    );
\ram_full_fb_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAFFFAEAEAEAE"
    )
        port map (
      I0 => SR(0),
      I1 => \ram_full_fb_i_i_2__0_n_0\,
      I2 => p_8_out,
      I3 => comp0,
      I4 => ram_full_i_reg,
      I5 => \out\,
      O => \grstd1.grst_full.grst_f.rst_d3_reg\
    );
\ram_full_fb_i_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \out\,
      I1 => m_axi_rvalid,
      I2 => comp1,
      O => \ram_full_fb_i_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_dmem is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 55 downto 0 );
    s_aclk : in STD_LOGIC;
    EN : in STD_LOGIC;
    \gpr1.dout_i_reg[55]_0\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpr1.dout_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_dmem;

architecture STRUCTURE of sys_top_s00_data_fifo_452_dmem is
  signal RAM_reg_0_31_0_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_31_0_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_31_0_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_31_0_5_n_3 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 59 downto 4 );
  signal NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg_0_31_0_5 : label is 1920;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg_0_31_0_5 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of RAM_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_12_17 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_12_17 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_12_17 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_12_17 : label is 31;
  attribute ram_offset of RAM_reg_0_31_12_17 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_12_17 : label is 12;
  attribute ram_slice_end of RAM_reg_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_18_23 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_18_23 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_18_23 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_18_23 : label is 31;
  attribute ram_offset of RAM_reg_0_31_18_23 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_18_23 : label is 18;
  attribute ram_slice_end of RAM_reg_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_24_29 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_24_29 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_24_29 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_24_29 : label is 31;
  attribute ram_offset of RAM_reg_0_31_24_29 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_24_29 : label is 24;
  attribute ram_slice_end of RAM_reg_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_30_35 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_30_35 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_30_35 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_30_35 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_30_35 : label is 31;
  attribute ram_offset of RAM_reg_0_31_30_35 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_30_35 : label is 30;
  attribute ram_slice_end of RAM_reg_0_31_30_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_36_41 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_36_41 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_36_41 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_36_41 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_36_41 : label is 31;
  attribute ram_offset of RAM_reg_0_31_36_41 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_36_41 : label is 36;
  attribute ram_slice_end of RAM_reg_0_31_36_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_42_47 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_42_47 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_42_47 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_42_47 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_42_47 : label is 31;
  attribute ram_offset of RAM_reg_0_31_42_47 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_42_47 : label is 42;
  attribute ram_slice_end of RAM_reg_0_31_42_47 : label is 47;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_48_53 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_48_53 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_48_53 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_48_53 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_48_53 : label is 31;
  attribute ram_offset of RAM_reg_0_31_48_53 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_48_53 : label is 48;
  attribute ram_slice_end of RAM_reg_0_31_48_53 : label is 53;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_54_59 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_54_59 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_54_59 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_54_59 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_54_59 : label is 31;
  attribute ram_offset of RAM_reg_0_31_54_59 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_54_59 : label is 54;
  attribute ram_slice_end of RAM_reg_0_31_54_59 : label is 59;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_6_11 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_6_11 : label is "inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_6_11 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_6_11 : label is 31;
  attribute ram_offset of RAM_reg_0_31_6_11 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_6_11 : label is 6;
  attribute ram_slice_end of RAM_reg_0_31_6_11 : label is 11;
begin
RAM_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => B"00",
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => \gpr1.dout_i_reg[55]_0\(1 downto 0),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_31_0_5_n_0,
      DOA(0) => RAM_reg_0_31_0_5_n_1,
      DOB(1) => RAM_reg_0_31_0_5_n_2,
      DOB(0) => RAM_reg_0_31_0_5_n_3,
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => \gpr1.dout_i_reg[55]_0\(9 downto 8),
      DIB(1 downto 0) => \gpr1.dout_i_reg[55]_0\(11 downto 10),
      DIC(1 downto 0) => \gpr1.dout_i_reg[55]_0\(13 downto 12),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(13 downto 12),
      DOB(1 downto 0) => p_0_out(15 downto 14),
      DOC(1 downto 0) => p_0_out(17 downto 16),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => \gpr1.dout_i_reg[55]_0\(15 downto 14),
      DIB(1 downto 0) => \gpr1.dout_i_reg[55]_0\(17 downto 16),
      DIC(1 downto 0) => \gpr1.dout_i_reg[55]_0\(19 downto 18),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(19 downto 18),
      DOB(1 downto 0) => p_0_out(21 downto 20),
      DOC(1 downto 0) => p_0_out(23 downto 22),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => \gpr1.dout_i_reg[55]_0\(21 downto 20),
      DIB(1 downto 0) => \gpr1.dout_i_reg[55]_0\(23 downto 22),
      DIC(1 downto 0) => \gpr1.dout_i_reg[55]_0\(25 downto 24),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(25 downto 24),
      DOB(1 downto 0) => p_0_out(27 downto 26),
      DOC(1 downto 0) => p_0_out(29 downto 28),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_30_35: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => \gpr1.dout_i_reg[55]_0\(27 downto 26),
      DIB(1 downto 0) => \gpr1.dout_i_reg[55]_0\(29 downto 28),
      DIC(1 downto 0) => \gpr1.dout_i_reg[55]_0\(31 downto 30),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(31 downto 30),
      DOB(1 downto 0) => p_0_out(33 downto 32),
      DOC(1 downto 0) => p_0_out(35 downto 34),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_36_41: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => \gpr1.dout_i_reg[55]_0\(33 downto 32),
      DIB(1 downto 0) => \gpr1.dout_i_reg[55]_0\(35 downto 34),
      DIC(1 downto 0) => \gpr1.dout_i_reg[55]_0\(37 downto 36),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(37 downto 36),
      DOB(1 downto 0) => p_0_out(39 downto 38),
      DOC(1 downto 0) => p_0_out(41 downto 40),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_42_47: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => \gpr1.dout_i_reg[55]_0\(39 downto 38),
      DIB(1 downto 0) => \gpr1.dout_i_reg[55]_0\(41 downto 40),
      DIC(1 downto 0) => \gpr1.dout_i_reg[55]_0\(43 downto 42),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(43 downto 42),
      DOB(1 downto 0) => p_0_out(45 downto 44),
      DOC(1 downto 0) => p_0_out(47 downto 46),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_48_53: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => \gpr1.dout_i_reg[55]_0\(45 downto 44),
      DIB(1 downto 0) => \gpr1.dout_i_reg[55]_0\(47 downto 46),
      DIC(1 downto 0) => \gpr1.dout_i_reg[55]_0\(49 downto 48),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(49 downto 48),
      DOB(1 downto 0) => p_0_out(51 downto 50),
      DOC(1 downto 0) => p_0_out(53 downto 52),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_54_59: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => \gpr1.dout_i_reg[55]_0\(51 downto 50),
      DIB(1 downto 0) => \gpr1.dout_i_reg[55]_0\(53 downto 52),
      DIC(1 downto 0) => \gpr1.dout_i_reg[55]_0\(55 downto 54),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(55 downto 54),
      DOB(1 downto 0) => p_0_out(57 downto 56),
      DOC(1 downto 0) => p_0_out(59 downto 58),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
RAM_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => \gpr1.dout_i_reg[55]_0\(3 downto 2),
      DIB(1 downto 0) => \gpr1.dout_i_reg[55]_0\(5 downto 4),
      DIC(1 downto 0) => \gpr1.dout_i_reg[55]_0\(7 downto 6),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => p_0_out(9 downto 8),
      DOC(1 downto 0) => p_0_out(11 downto 10),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => EN
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(10),
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(11),
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(12),
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(13),
      Q => dout_i(9),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(14),
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(15),
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(16),
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(17),
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(18),
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(19),
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(20),
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(21),
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(22),
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(23),
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(24),
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(25),
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(26),
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(27),
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(28),
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(29),
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(30),
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(31),
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(32),
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(33),
      Q => dout_i(29),
      R => '0'
    );
\gpr1.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(34),
      Q => dout_i(30),
      R => '0'
    );
\gpr1.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(35),
      Q => dout_i(31),
      R => '0'
    );
\gpr1.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(36),
      Q => dout_i(32),
      R => '0'
    );
\gpr1.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(37),
      Q => dout_i(33),
      R => '0'
    );
\gpr1.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(38),
      Q => dout_i(34),
      R => '0'
    );
\gpr1.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(39),
      Q => dout_i(35),
      R => '0'
    );
\gpr1.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(40),
      Q => dout_i(36),
      R => '0'
    );
\gpr1.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(41),
      Q => dout_i(37),
      R => '0'
    );
\gpr1.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(42),
      Q => dout_i(38),
      R => '0'
    );
\gpr1.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(43),
      Q => dout_i(39),
      R => '0'
    );
\gpr1.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(44),
      Q => dout_i(40),
      R => '0'
    );
\gpr1.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(45),
      Q => dout_i(41),
      R => '0'
    );
\gpr1.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(46),
      Q => dout_i(42),
      R => '0'
    );
\gpr1.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(47),
      Q => dout_i(43),
      R => '0'
    );
\gpr1.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(48),
      Q => dout_i(44),
      R => '0'
    );
\gpr1.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(49),
      Q => dout_i(45),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(4),
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(50),
      Q => dout_i(46),
      R => '0'
    );
\gpr1.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(51),
      Q => dout_i(47),
      R => '0'
    );
\gpr1.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(52),
      Q => dout_i(48),
      R => '0'
    );
\gpr1.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(53),
      Q => dout_i(49),
      R => '0'
    );
\gpr1.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(54),
      Q => dout_i(50),
      R => '0'
    );
\gpr1.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(55),
      Q => dout_i(51),
      R => '0'
    );
\gpr1.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(56),
      Q => dout_i(52),
      R => '0'
    );
\gpr1.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(57),
      Q => dout_i(53),
      R => '0'
    );
\gpr1.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(58),
      Q => dout_i(54),
      R => '0'
    );
\gpr1.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(59),
      Q => dout_i(55),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(5),
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(6),
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(7),
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(8),
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => p_0_out(9),
      Q => dout_i(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_dmem_17 is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 55 downto 0 );
    s_aclk : in STD_LOGIC;
    I40 : in STD_LOGIC;
    I555 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpr1.dout_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sys_top_s00_data_fifo_452_dmem_17 : entity is "dmem";
end sys_top_s00_data_fifo_452_dmem_17;

architecture STRUCTURE of sys_top_s00_data_fifo_452_dmem_17 is
  signal RAM_reg_0_31_0_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_31_0_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_31_0_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_31_0_5_n_3 : STD_LOGIC;
  signal RAM_reg_0_31_0_5_n_4 : STD_LOGIC;
  signal RAM_reg_0_31_0_5_n_5 : STD_LOGIC;
  signal RAM_reg_0_31_12_17_n_0 : STD_LOGIC;
  signal RAM_reg_0_31_12_17_n_1 : STD_LOGIC;
  signal RAM_reg_0_31_12_17_n_2 : STD_LOGIC;
  signal RAM_reg_0_31_12_17_n_3 : STD_LOGIC;
  signal RAM_reg_0_31_12_17_n_4 : STD_LOGIC;
  signal RAM_reg_0_31_12_17_n_5 : STD_LOGIC;
  signal RAM_reg_0_31_18_23_n_0 : STD_LOGIC;
  signal RAM_reg_0_31_18_23_n_1 : STD_LOGIC;
  signal RAM_reg_0_31_18_23_n_2 : STD_LOGIC;
  signal RAM_reg_0_31_18_23_n_3 : STD_LOGIC;
  signal RAM_reg_0_31_18_23_n_4 : STD_LOGIC;
  signal RAM_reg_0_31_18_23_n_5 : STD_LOGIC;
  signal RAM_reg_0_31_24_29_n_0 : STD_LOGIC;
  signal RAM_reg_0_31_24_29_n_1 : STD_LOGIC;
  signal RAM_reg_0_31_24_29_n_2 : STD_LOGIC;
  signal RAM_reg_0_31_24_29_n_3 : STD_LOGIC;
  signal RAM_reg_0_31_24_29_n_4 : STD_LOGIC;
  signal RAM_reg_0_31_24_29_n_5 : STD_LOGIC;
  signal RAM_reg_0_31_30_35_n_0 : STD_LOGIC;
  signal RAM_reg_0_31_30_35_n_1 : STD_LOGIC;
  signal RAM_reg_0_31_30_35_n_2 : STD_LOGIC;
  signal RAM_reg_0_31_30_35_n_3 : STD_LOGIC;
  signal RAM_reg_0_31_30_35_n_4 : STD_LOGIC;
  signal RAM_reg_0_31_30_35_n_5 : STD_LOGIC;
  signal RAM_reg_0_31_36_41_n_0 : STD_LOGIC;
  signal RAM_reg_0_31_36_41_n_1 : STD_LOGIC;
  signal RAM_reg_0_31_36_41_n_2 : STD_LOGIC;
  signal RAM_reg_0_31_36_41_n_3 : STD_LOGIC;
  signal RAM_reg_0_31_36_41_n_4 : STD_LOGIC;
  signal RAM_reg_0_31_36_41_n_5 : STD_LOGIC;
  signal RAM_reg_0_31_42_47_n_0 : STD_LOGIC;
  signal RAM_reg_0_31_42_47_n_1 : STD_LOGIC;
  signal RAM_reg_0_31_42_47_n_2 : STD_LOGIC;
  signal RAM_reg_0_31_42_47_n_3 : STD_LOGIC;
  signal RAM_reg_0_31_42_47_n_4 : STD_LOGIC;
  signal RAM_reg_0_31_42_47_n_5 : STD_LOGIC;
  signal RAM_reg_0_31_48_53_n_0 : STD_LOGIC;
  signal RAM_reg_0_31_48_53_n_1 : STD_LOGIC;
  signal RAM_reg_0_31_48_53_n_2 : STD_LOGIC;
  signal RAM_reg_0_31_48_53_n_3 : STD_LOGIC;
  signal RAM_reg_0_31_48_53_n_4 : STD_LOGIC;
  signal RAM_reg_0_31_48_53_n_5 : STD_LOGIC;
  signal RAM_reg_0_31_54_59_n_0 : STD_LOGIC;
  signal RAM_reg_0_31_54_59_n_1 : STD_LOGIC;
  signal RAM_reg_0_31_54_59_n_2 : STD_LOGIC;
  signal RAM_reg_0_31_54_59_n_3 : STD_LOGIC;
  signal RAM_reg_0_31_54_59_n_4 : STD_LOGIC;
  signal RAM_reg_0_31_54_59_n_5 : STD_LOGIC;
  signal RAM_reg_0_31_6_11_n_0 : STD_LOGIC;
  signal RAM_reg_0_31_6_11_n_1 : STD_LOGIC;
  signal RAM_reg_0_31_6_11_n_2 : STD_LOGIC;
  signal RAM_reg_0_31_6_11_n_3 : STD_LOGIC;
  signal RAM_reg_0_31_6_11_n_4 : STD_LOGIC;
  signal RAM_reg_0_31_6_11_n_5 : STD_LOGIC;
  signal NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg_0_31_0_5 : label is 1920;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg_0_31_0_5 : label is "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of RAM_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_12_17 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_12_17 : label is "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_12_17 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_12_17 : label is 31;
  attribute ram_offset of RAM_reg_0_31_12_17 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_12_17 : label is 12;
  attribute ram_slice_end of RAM_reg_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_18_23 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_18_23 : label is "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_18_23 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_18_23 : label is 31;
  attribute ram_offset of RAM_reg_0_31_18_23 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_18_23 : label is 18;
  attribute ram_slice_end of RAM_reg_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_24_29 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_24_29 : label is "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_24_29 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_24_29 : label is 31;
  attribute ram_offset of RAM_reg_0_31_24_29 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_24_29 : label is 24;
  attribute ram_slice_end of RAM_reg_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_30_35 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_30_35 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_30_35 : label is "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_30_35 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_30_35 : label is 31;
  attribute ram_offset of RAM_reg_0_31_30_35 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_30_35 : label is 30;
  attribute ram_slice_end of RAM_reg_0_31_30_35 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_36_41 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_36_41 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_36_41 : label is "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_36_41 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_36_41 : label is 31;
  attribute ram_offset of RAM_reg_0_31_36_41 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_36_41 : label is 36;
  attribute ram_slice_end of RAM_reg_0_31_36_41 : label is 41;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_42_47 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_42_47 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_42_47 : label is "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_42_47 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_42_47 : label is 31;
  attribute ram_offset of RAM_reg_0_31_42_47 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_42_47 : label is 42;
  attribute ram_slice_end of RAM_reg_0_31_42_47 : label is 47;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_48_53 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_48_53 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_48_53 : label is "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_48_53 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_48_53 : label is 31;
  attribute ram_offset of RAM_reg_0_31_48_53 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_48_53 : label is 48;
  attribute ram_slice_end of RAM_reg_0_31_48_53 : label is 53;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_54_59 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_54_59 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_54_59 : label is "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_54_59 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_54_59 : label is 31;
  attribute ram_offset of RAM_reg_0_31_54_59 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_54_59 : label is 54;
  attribute ram_slice_end of RAM_reg_0_31_54_59 : label is 59;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_31_6_11 : label is 1920;
  attribute RTL_RAM_NAME of RAM_reg_0_31_6_11 : label is "inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_31_6_11 : label is 0;
  attribute ram_addr_end of RAM_reg_0_31_6_11 : label is 31;
  attribute ram_offset of RAM_reg_0_31_6_11 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_31_6_11 : label is 6;
  attribute ram_slice_end of RAM_reg_0_31_6_11 : label is 11;
begin
RAM_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => B"00",
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => I555(1 downto 0),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_31_0_5_n_0,
      DOA(0) => RAM_reg_0_31_0_5_n_1,
      DOB(1) => RAM_reg_0_31_0_5_n_2,
      DOB(0) => RAM_reg_0_31_0_5_n_3,
      DOC(1) => RAM_reg_0_31_0_5_n_4,
      DOC(0) => RAM_reg_0_31_0_5_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I40
    );
RAM_reg_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => I555(9 downto 8),
      DIB(1 downto 0) => I555(11 downto 10),
      DIC(1 downto 0) => I555(13 downto 12),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_31_12_17_n_0,
      DOA(0) => RAM_reg_0_31_12_17_n_1,
      DOB(1) => RAM_reg_0_31_12_17_n_2,
      DOB(0) => RAM_reg_0_31_12_17_n_3,
      DOC(1) => RAM_reg_0_31_12_17_n_4,
      DOC(0) => RAM_reg_0_31_12_17_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I40
    );
RAM_reg_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => I555(15 downto 14),
      DIB(1 downto 0) => I555(17 downto 16),
      DIC(1 downto 0) => I555(19 downto 18),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_31_18_23_n_0,
      DOA(0) => RAM_reg_0_31_18_23_n_1,
      DOB(1) => RAM_reg_0_31_18_23_n_2,
      DOB(0) => RAM_reg_0_31_18_23_n_3,
      DOC(1) => RAM_reg_0_31_18_23_n_4,
      DOC(0) => RAM_reg_0_31_18_23_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I40
    );
RAM_reg_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => I555(21 downto 20),
      DIB(1 downto 0) => I555(23 downto 22),
      DIC(1 downto 0) => I555(25 downto 24),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_31_24_29_n_0,
      DOA(0) => RAM_reg_0_31_24_29_n_1,
      DOB(1) => RAM_reg_0_31_24_29_n_2,
      DOB(0) => RAM_reg_0_31_24_29_n_3,
      DOC(1) => RAM_reg_0_31_24_29_n_4,
      DOC(0) => RAM_reg_0_31_24_29_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I40
    );
RAM_reg_0_31_30_35: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => I555(27 downto 26),
      DIB(1 downto 0) => I555(29 downto 28),
      DIC(1 downto 0) => I555(31 downto 30),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_31_30_35_n_0,
      DOA(0) => RAM_reg_0_31_30_35_n_1,
      DOB(1) => RAM_reg_0_31_30_35_n_2,
      DOB(0) => RAM_reg_0_31_30_35_n_3,
      DOC(1) => RAM_reg_0_31_30_35_n_4,
      DOC(0) => RAM_reg_0_31_30_35_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_31_30_35_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I40
    );
RAM_reg_0_31_36_41: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => I555(33 downto 32),
      DIB(1 downto 0) => I555(35 downto 34),
      DIC(1 downto 0) => I555(37 downto 36),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_31_36_41_n_0,
      DOA(0) => RAM_reg_0_31_36_41_n_1,
      DOB(1) => RAM_reg_0_31_36_41_n_2,
      DOB(0) => RAM_reg_0_31_36_41_n_3,
      DOC(1) => RAM_reg_0_31_36_41_n_4,
      DOC(0) => RAM_reg_0_31_36_41_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_31_36_41_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I40
    );
RAM_reg_0_31_42_47: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => I555(39 downto 38),
      DIB(1 downto 0) => I555(41 downto 40),
      DIC(1 downto 0) => I555(43 downto 42),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_31_42_47_n_0,
      DOA(0) => RAM_reg_0_31_42_47_n_1,
      DOB(1) => RAM_reg_0_31_42_47_n_2,
      DOB(0) => RAM_reg_0_31_42_47_n_3,
      DOC(1) => RAM_reg_0_31_42_47_n_4,
      DOC(0) => RAM_reg_0_31_42_47_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_31_42_47_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I40
    );
RAM_reg_0_31_48_53: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => I555(45 downto 44),
      DIB(1 downto 0) => I555(47 downto 46),
      DIC(1 downto 0) => I555(49 downto 48),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_31_48_53_n_0,
      DOA(0) => RAM_reg_0_31_48_53_n_1,
      DOB(1) => RAM_reg_0_31_48_53_n_2,
      DOB(0) => RAM_reg_0_31_48_53_n_3,
      DOC(1) => RAM_reg_0_31_48_53_n_4,
      DOC(0) => RAM_reg_0_31_48_53_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_31_48_53_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I40
    );
RAM_reg_0_31_54_59: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => I555(51 downto 50),
      DIB(1 downto 0) => I555(53 downto 52),
      DIC(1 downto 0) => I555(55 downto 54),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_31_54_59_n_0,
      DOA(0) => RAM_reg_0_31_54_59_n_1,
      DOB(1) => RAM_reg_0_31_54_59_n_2,
      DOB(0) => RAM_reg_0_31_54_59_n_3,
      DOC(1) => RAM_reg_0_31_54_59_n_4,
      DOC(0) => RAM_reg_0_31_54_59_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_31_54_59_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I40
    );
RAM_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => count_d1(4 downto 0),
      ADDRB(4 downto 0) => count_d1(4 downto 0),
      ADDRC(4 downto 0) => count_d1(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => I555(3 downto 2),
      DIB(1 downto 0) => I555(5 downto 4),
      DIC(1 downto 0) => I555(7 downto 6),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_31_6_11_n_0,
      DOA(0) => RAM_reg_0_31_6_11_n_1,
      DOB(1) => RAM_reg_0_31_6_11_n_2,
      DOB(0) => RAM_reg_0_31_6_11_n_3,
      DOC(1) => RAM_reg_0_31_6_11_n_4,
      DOC(0) => RAM_reg_0_31_6_11_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => I40
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_6_11_n_5,
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_6_11_n_4,
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_12_17_n_1,
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_12_17_n_0,
      Q => dout_i(9),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_12_17_n_3,
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_12_17_n_2,
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_12_17_n_5,
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_12_17_n_4,
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_18_23_n_1,
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_18_23_n_0,
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_18_23_n_3,
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_18_23_n_2,
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_18_23_n_5,
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_18_23_n_4,
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_24_29_n_1,
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_24_29_n_0,
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_24_29_n_3,
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_24_29_n_2,
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_24_29_n_5,
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_24_29_n_4,
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_30_35_n_1,
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_30_35_n_0,
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_30_35_n_3,
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_30_35_n_2,
      Q => dout_i(29),
      R => '0'
    );
\gpr1.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_30_35_n_5,
      Q => dout_i(30),
      R => '0'
    );
\gpr1.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_30_35_n_4,
      Q => dout_i(31),
      R => '0'
    );
\gpr1.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_36_41_n_1,
      Q => dout_i(32),
      R => '0'
    );
\gpr1.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_36_41_n_0,
      Q => dout_i(33),
      R => '0'
    );
\gpr1.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_36_41_n_3,
      Q => dout_i(34),
      R => '0'
    );
\gpr1.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_36_41_n_2,
      Q => dout_i(35),
      R => '0'
    );
\gpr1.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_36_41_n_5,
      Q => dout_i(36),
      R => '0'
    );
\gpr1.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_36_41_n_4,
      Q => dout_i(37),
      R => '0'
    );
\gpr1.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_42_47_n_1,
      Q => dout_i(38),
      R => '0'
    );
\gpr1.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_42_47_n_0,
      Q => dout_i(39),
      R => '0'
    );
\gpr1.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_42_47_n_3,
      Q => dout_i(40),
      R => '0'
    );
\gpr1.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_42_47_n_2,
      Q => dout_i(41),
      R => '0'
    );
\gpr1.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_42_47_n_5,
      Q => dout_i(42),
      R => '0'
    );
\gpr1.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_42_47_n_4,
      Q => dout_i(43),
      R => '0'
    );
\gpr1.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_48_53_n_1,
      Q => dout_i(44),
      R => '0'
    );
\gpr1.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_48_53_n_0,
      Q => dout_i(45),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_0_5_n_5,
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_48_53_n_3,
      Q => dout_i(46),
      R => '0'
    );
\gpr1.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_48_53_n_2,
      Q => dout_i(47),
      R => '0'
    );
\gpr1.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_48_53_n_5,
      Q => dout_i(48),
      R => '0'
    );
\gpr1.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_48_53_n_4,
      Q => dout_i(49),
      R => '0'
    );
\gpr1.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_54_59_n_1,
      Q => dout_i(50),
      R => '0'
    );
\gpr1.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_54_59_n_0,
      Q => dout_i(51),
      R => '0'
    );
\gpr1.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_54_59_n_3,
      Q => dout_i(52),
      R => '0'
    );
\gpr1.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_54_59_n_2,
      Q => dout_i(53),
      R => '0'
    );
\gpr1.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_54_59_n_5,
      Q => dout_i(54),
      R => '0'
    );
\gpr1.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_54_59_n_4,
      Q => dout_i(55),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_0_5_n_4,
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_6_11_n_1,
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_6_11_n_0,
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_6_11_n_3,
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gpr1.dout_i_reg[4]_0\(0),
      D => RAM_reg_0_31_6_11_n_2,
      Q => dout_i(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_rd_bin_cntr is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    comp0 : out STD_LOGIC;
    \gc0.count_d1_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \out\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_i_4_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_rd_bin_cntr;

architecture STRUCTURE of sys_top_s00_data_fifo_452_rd_bin_cntr is
  signal \^comp0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \grss.rsts/comp1\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_empty_fb_i_i_5_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_6_n_0 : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of ram_empty_fb_i_i_4 : label is "soft_lutpair15";
begin
  comp0 <= \^comp0\;
  \gc0.count_d1_reg[4]_0\(4 downto 0) <= \^gc0.count_d1_reg[4]_0\(4 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      I2 => rd_pntr_plus1(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(2),
      I3 => rd_pntr_plus1(3),
      O => plusOp(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus1(2),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(1),
      I3 => rd_pntr_plus1(3),
      I4 => rd_pntr_plus1(4),
      O => plusOp(4)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(0),
      Q => \^gc0.count_d1_reg[4]_0\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(1),
      Q => \^gc0.count_d1_reg[4]_0\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(2),
      Q => \^gc0.count_d1_reg[4]_0\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(3),
      Q => \^gc0.count_d1_reg[4]_0\(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(4),
      Q => \^gc0.count_d1_reg[4]_0\(4)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => plusOp(0),
      PRE => AR(0),
      Q => rd_pntr_plus1(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(1),
      Q => rd_pntr_plus1(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(2),
      Q => rd_pntr_plus1(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(3),
      Q => rd_pntr_plus1(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(4),
      Q => rd_pntr_plus1(4)
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2222FAAA"
    )
        port map (
      I0 => \out\,
      I1 => \^comp0\,
      I2 => \grss.rsts/comp1\,
      I3 => E(0),
      I4 => ram_empty_fb_i_reg_0(0),
      O => ram_empty_fb_i_reg
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => ram_empty_fb_i_i_5_n_0,
      I1 => \^gc0.count_d1_reg[4]_0\(1),
      I2 => ram_empty_fb_i_i_4_0(1),
      I3 => \^gc0.count_d1_reg[4]_0\(0),
      I4 => ram_empty_fb_i_i_4_0(0),
      O => \^comp0\
    );
ram_empty_fb_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => ram_empty_fb_i_i_6_n_0,
      I1 => rd_pntr_plus1(1),
      I2 => ram_empty_fb_i_i_4_0(1),
      I3 => rd_pntr_plus1(0),
      I4 => ram_empty_fb_i_i_4_0(0),
      O => \grss.rsts/comp1\
    );
ram_empty_fb_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[4]_0\(3),
      I1 => ram_empty_fb_i_i_4_0(3),
      I2 => \^gc0.count_d1_reg[4]_0\(2),
      I3 => ram_empty_fb_i_i_4_0(2),
      I4 => ram_empty_fb_i_i_4_0(4),
      I5 => \^gc0.count_d1_reg[4]_0\(4),
      O => ram_empty_fb_i_i_5_n_0
    );
ram_empty_fb_i_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => ram_empty_fb_i_i_4_0(3),
      I2 => rd_pntr_plus1(2),
      I3 => ram_empty_fb_i_i_4_0(2),
      I4 => rd_pntr_plus1(4),
      I5 => ram_empty_fb_i_i_4_0(4),
      O => ram_empty_fb_i_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_rd_bin_cntr_22 is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    comp0 : out STD_LOGIC;
    \gc0.count_d1_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \out\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ram_empty_fb_i_i_4__0_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sys_top_s00_data_fifo_452_rd_bin_cntr_22 : entity is "rd_bin_cntr";
end sys_top_s00_data_fifo_452_rd_bin_cntr_22;

architecture STRUCTURE of sys_top_s00_data_fifo_452_rd_bin_cntr_22 is
  signal \^comp0\ : STD_LOGIC;
  signal \^gc0.count_d1_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \grss.rsts/comp1\ : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \ram_empty_fb_i_i_5__0_n_0\ : STD_LOGIC;
  signal \ram_empty_fb_i_i_6__0_n_0\ : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ram_empty_fb_i_i_4__0\ : label is "soft_lutpair0";
begin
  comp0 <= \^comp0\;
  \gc0.count_d1_reg[4]_0\(4 downto 0) <= \^gc0.count_d1_reg[4]_0\(4 downto 0);
\gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      O => \plusOp__1\(0)
    );
\gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => \plusOp__1\(1)
    );
\gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      I2 => rd_pntr_plus1(2),
      O => \plusOp__1\(2)
    );
\gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(2),
      I3 => rd_pntr_plus1(3),
      O => \plusOp__1\(3)
    );
\gc0.count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus1(2),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(1),
      I3 => rd_pntr_plus1(3),
      I4 => rd_pntr_plus1(4),
      O => \plusOp__1\(4)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(0),
      Q => \^gc0.count_d1_reg[4]_0\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(1),
      Q => \^gc0.count_d1_reg[4]_0\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(2),
      Q => \^gc0.count_d1_reg[4]_0\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(3),
      Q => \^gc0.count_d1_reg[4]_0\(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => rd_pntr_plus1(4),
      Q => \^gc0.count_d1_reg[4]_0\(4)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(0),
      PRE => AR(0),
      Q => rd_pntr_plus1(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(1),
      Q => rd_pntr_plus1(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(2),
      Q => rd_pntr_plus1(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(3),
      Q => rd_pntr_plus1(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(4),
      Q => rd_pntr_plus1(4)
    );
\ram_empty_fb_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2222FAAA"
    )
        port map (
      I0 => \out\,
      I1 => \^comp0\,
      I2 => \grss.rsts/comp1\,
      I3 => E(0),
      I4 => ram_empty_fb_i_reg_0(0),
      O => ram_empty_fb_i_reg
    );
\ram_empty_fb_i_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => \ram_empty_fb_i_i_5__0_n_0\,
      I1 => \^gc0.count_d1_reg[4]_0\(1),
      I2 => \ram_empty_fb_i_i_4__0_0\(1),
      I3 => \^gc0.count_d1_reg[4]_0\(0),
      I4 => \ram_empty_fb_i_i_4__0_0\(0),
      O => \^comp0\
    );
\ram_empty_fb_i_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => \ram_empty_fb_i_i_6__0_n_0\,
      I1 => rd_pntr_plus1(1),
      I2 => \ram_empty_fb_i_i_4__0_0\(1),
      I3 => rd_pntr_plus1(0),
      I4 => \ram_empty_fb_i_i_4__0_0\(0),
      O => \grss.rsts/comp1\
    );
\ram_empty_fb_i_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gc0.count_d1_reg[4]_0\(3),
      I1 => \ram_empty_fb_i_i_4__0_0\(3),
      I2 => \^gc0.count_d1_reg[4]_0\(2),
      I3 => \ram_empty_fb_i_i_4__0_0\(2),
      I4 => \ram_empty_fb_i_i_4__0_0\(4),
      I5 => \^gc0.count_d1_reg[4]_0\(4),
      O => \ram_empty_fb_i_i_5__0_n_0\
    );
\ram_empty_fb_i_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \ram_empty_fb_i_i_4__0_0\(3),
      I2 => rd_pntr_plus1(2),
      I3 => \ram_empty_fb_i_i_4__0_0\(2),
      I4 => rd_pntr_plus1(4),
      I5 => \ram_empty_fb_i_i_4__0_0\(4),
      O => \ram_empty_fb_i_i_6__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_rd_bin_cntr__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc0.count_d1_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc0.count_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_rd_bin_cntr__parameterized0\ : entity is "rd_bin_cntr";
end \sys_top_s00_data_fifo_452_rd_bin_cntr__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_rd_bin_cntr__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gc0.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gc0.count[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gc0.count[8]_i_1\ : label is "soft_lutpair20";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\gc0.count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__3\(0)
    );
\gc0.count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__3\(1)
    );
\gc0.count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \plusOp__3\(2)
    );
\gc0.count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \plusOp__3\(3)
    );
\gc0.count[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \plusOp__3\(4)
    );
\gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \plusOp__3\(5)
    );
\gc0.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count[8]_i_2_n_0\,
      I1 => \^q\(6),
      O => \plusOp__3\(6)
    );
\gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gc0.count[8]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => \plusOp__3\(7)
    );
\gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gc0.count[8]_i_2_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(8),
      O => \plusOp__3\(8)
    );
\gc0.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \gc0.count[8]_i_2_n_0\
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \gc0.count_d1_reg[8]_0\(0),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \gc0.count_d1_reg[8]_0\(1),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \gc0.count_d1_reg[8]_0\(2),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \gc0.count_d1_reg[8]_0\(3),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \gc0.count_d1_reg[8]_0\(4),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \gc0.count_d1_reg[8]_0\(5),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \gc0.count_d1_reg[8]_0\(6),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(7),
      Q => \gc0.count_d1_reg[8]_0\(7),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(8),
      Q => \gc0.count_d1_reg[8]_0\(8),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(0),
      Q => \^q\(0),
      S => \gc0.count_reg[0]_0\
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(1),
      Q => \^q\(1),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(2),
      Q => \^q\(2),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(3),
      Q => \^q\(3),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(4),
      Q => \^q\(4),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(5),
      Q => \^q\(5),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(6),
      Q => \^q\(6),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(7),
      Q => \^q\(7),
      R => \gc0.count_reg[0]_0\
    );
\gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(8),
      Q => \^q\(8),
      R => \gc0.count_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_rd_bin_cntr__parameterized0_11\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc0.count_d1_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc0.count_d1_reg[8]_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_rd_bin_cntr__parameterized0_11\ : entity is "rd_bin_cntr";
end \sys_top_s00_data_fifo_452_rd_bin_cntr__parameterized0_11\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_rd_bin_cntr__parameterized0_11\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gc0.count[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \plusOp__5\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gc0.count[7]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gc0.count[8]_i_1__0\ : label is "soft_lutpair10";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\gc0.count[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__5\(0)
    );
\gc0.count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__5\(1)
    );
\gc0.count[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \plusOp__5\(2)
    );
\gc0.count[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \plusOp__5\(3)
    );
\gc0.count[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \plusOp__5\(4)
    );
\gc0.count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \plusOp__5\(5)
    );
\gc0.count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count[8]_i_2__0_n_0\,
      I1 => \^q\(6),
      O => \plusOp__5\(6)
    );
\gc0.count[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gc0.count[8]_i_2__0_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => \plusOp__5\(7)
    );
\gc0.count[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gc0.count[8]_i_2__0_n_0\,
      I2 => \^q\(7),
      I3 => \^q\(8),
      O => \plusOp__5\(8)
    );
\gc0.count[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \gc0.count[8]_i_2__0_n_0\
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \gc0.count_d1_reg[8]_0\(0),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \gc0.count_d1_reg[8]_0\(1),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \gc0.count_d1_reg[8]_0\(2),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \gc0.count_d1_reg[8]_0\(3),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \gc0.count_d1_reg[8]_0\(4),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \gc0.count_d1_reg[8]_0\(5),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \gc0.count_d1_reg[8]_0\(6),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(7),
      Q => \gc0.count_d1_reg[8]_0\(7),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(8),
      Q => \gc0.count_d1_reg[8]_0\(8),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__5\(0),
      Q => \^q\(0),
      S => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__5\(1),
      Q => \^q\(1),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__5\(2),
      Q => \^q\(2),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__5\(3),
      Q => \^q\(3),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__5\(4),
      Q => \^q\(4),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__5\(5),
      Q => \^q\(5),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__5\(6),
      Q => \^q\(6),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__5\(7),
      Q => \^q\(7),
      R => \gc0.count_d1_reg[8]_1\
    );
\gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__5\(8),
      Q => \^q\(8),
      R => \gc0.count_d1_reg[8]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_rd_fwft is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    empty_fwft_i_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]_1\ : in STD_LOGIC;
    awready_pkt : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_rd_fwft;

architecture STRUCTURE of sys_top_s00_data_fifo_452_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \^empty_fwft_i_reg_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \gfwd_rev_pipeline1.m_valid_i_i_3_n_0\ : STD_LOGIC;
  signal \gfwd_rev_pipeline1.m_valid_i_i_4_n_0\ : STD_LOGIC;
  signal \^gpregsm1.curr_fwft_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  signal \NLW_gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
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
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
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
  empty_fwft_i_reg_0 <= \^empty_fwft_i_reg_0\;
  \gpregsm1.curr_fwft_state_reg[1]_0\(0) <= \^gpregsm1.curr_fwft_state_reg[1]_0\(0);
  \out\(1 downto 0) <= curr_fwft_state(1 downto 0);
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFB8000"
    )
        port map (
      I0 => \^empty_fwft_i_reg_0\,
      I1 => curr_fwft_state(0),
      I2 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_i
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0EA"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => \^empty_fwft_i_reg_0\,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_i
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0EA"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => \^empty_fwft_i_reg_0\,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_i
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56555555"
    )
        port map (
      I0 => Q(1),
      I1 => \^empty_fwft_i_reg_0\,
      I2 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]\,
      I3 => s_axi_wvalid,
      I4 => DIADI(0),
      O => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_6_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_0\,
      CO(2) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_1\,
      CO(1) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_2\,
      CO(0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_3\,
      CYINIT => Q(0),
      DI(3 downto 1) => Q(3 downto 1),
      DI(0) => DI(0),
      O(3 downto 0) => D(3 downto 0),
      S(3 downto 1) => S(2 downto 0),
      S(0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_6_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]_i_1_n_0\,
      CO(3) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_0\,
      CO(2) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_1\,
      CO(1) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_2\,
      CO(0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => D(7 downto 4),
      S(3 downto 0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\(3 downto 0)
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => D(8),
      S(3 downto 1) => B"000",
      S(0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\(0)
    );
\gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F7"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => \^empty_fwft_i_reg_0\,
      I3 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      O => \^gpregsm1.curr_fwft_state_reg[1]_0\(0)
    );
\gfwd_rev_pipeline1.m_valid_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => empty_fwft_i,
      I1 => awready_pkt,
      I2 => \gfwd_rev_pipeline1.m_valid_i_i_3_n_0\,
      I3 => \gfwd_rev_pipeline1.m_valid_i_i_4_n_0\,
      O => \^empty_fwft_i_reg_0\
    );
\gfwd_rev_pipeline1.m_valid_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(8),
      I1 => Q(7),
      I2 => Q(6),
      I3 => Q(5),
      O => \gfwd_rev_pipeline1.m_valid_i_i_3_n_0\
    );
\gfwd_rev_pipeline1.m_valid_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(4),
      I4 => Q(0),
      I5 => Q(9),
      O => \gfwd_rev_pipeline1.m_valid_i_i_4_n_0\
    );
\gpr1.dout_i[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gpregsm1.curr_fwft_state_reg[1]_0\(0),
      I1 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^empty_fwft_i_reg_0\,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => \^empty_fwft_i_reg_0\,
      I2 => curr_fwft_state(0),
      I3 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => user_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_rd_fwft_20 is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    empty_fwft_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_4_out__0\ : out STD_LOGIC;
    empty_fwft_i_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gfwd_rev_pipeline1.s_ready_i_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[1]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \_inferred__0/i__carry\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sys_top_s00_data_fifo_452_rd_fwft_20 : entity is "rd_fwft";
end sys_top_s00_data_fifo_452_rd_fwft_20;

architecture STRUCTURE of sys_top_s00_data_fifo_452_rd_fwft_20 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^p_4_out__0\ : STD_LOGIC;
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
  \out\ <= empty_fwft_i;
  \p_4_out__0\ <= \^p_4_out__0\;
\aempty_fwft_fb_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFB8000"
    )
        port map (
      I0 => \^p_4_out__0\,
      I1 => curr_fwft_state(0),
      I2 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => AR(0),
      Q => aempty_fwft_i
    );
\arvalid_en0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => DI(0)
    );
\arvalid_en0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => S(0)
    );
arvalid_en0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(1)
    );
arvalid_en0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(0)
    );
arvalid_en0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(1)
    );
arvalid_en0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(0)
    );
\empty_fwft_fb_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000BAAAAAAA"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => empty_fwft_i,
      I2 => arready_pkt,
      I3 => CO(0),
      I4 => curr_fwft_state(0),
      I5 => curr_fwft_state(1),
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_i
    );
\empty_fwft_fb_o_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000BAAAAAAA"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => empty_fwft_i,
      I2 => arready_pkt,
      I3 => CO(0),
      I4 => curr_fwft_state(0),
      I5 => curr_fwft_state(1),
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => AR(0),
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => AR(0),
      Q => empty_fwft_i
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4040FF40"
    )
        port map (
      I0 => empty_fwft_i,
      I1 => arready_pkt,
      I2 => CO(0),
      I3 => s_axi_rready,
      I4 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\,
      O => empty_fwft_i_reg_0(0)
    );
\gc0.count_d1[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007777F777"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => CO(0),
      I3 => arready_pkt,
      I4 => empty_fwft_i,
      I5 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      O => \gpregsm1.curr_fwft_state_reg[1]_0\(0)
    );
\gfwd_rev_pipeline1.m_valid_i_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => empty_fwft_i,
      I1 => arready_pkt,
      I2 => CO(0),
      O => \^p_4_out__0\
    );
\goreg_dm.dout_i[59]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444040404040404"
    )
        port map (
      I0 => AR(0),
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_i,
      I4 => arready_pkt,
      I5 => CO(0),
      O => E(0)
    );
\gpr1.dout_i[59]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040FFFFFF"
    )
        port map (
      I0 => empty_fwft_i,
      I1 => arready_pkt,
      I2 => CO(0),
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      I5 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      O => empty_fwft_i_reg_1(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF700"
    )
        port map (
      I0 => CO(0),
      I1 => arready_pkt,
      I2 => empty_fwft_i,
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2A0000FFFFFFFF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => CO(0),
      I2 => arready_pkt,
      I3 => empty_fwft_i,
      I4 => curr_fwft_state(0),
      I5 => \gpregsm1.curr_fwft_state_reg[1]_1\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => AR(0),
      D => next_fwft_state(0),
      Q => user_valid
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF7F7FFFFFFFF"
    )
        port map (
      I0 => CO(0),
      I1 => arready_pkt,
      I2 => empty_fwft_i,
      I3 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\,
      I4 => s_axi_rready,
      I5 => \_inferred__0/i__carry\(0),
      O => \gfwd_rev_pipeline1.s_ready_i_reg\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_rd_fwft__parameterized0\ is
  port (
    ENB_I : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \gpregsm1.user_valid_reg_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_rd_fwft__parameterized0\ : entity is "rd_fwft";
end \sys_top_s00_data_fifo_452_rd_fwft__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_rd_fwft__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal \aempty_fwft_fb_i_i_1__0_n_0\ : STD_LOGIC;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal \empty_fwft_fb_i_i_1__0_n_0\ : STD_LOGIC;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  signal \wdch_rd_en__0\ : STD_LOGIC;
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
  E(0) <= \^e\(0);
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => \^e\(0),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \out\,
      I4 => ENB_dly_D,
      O => ENB_I
    );
\aempty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAFFEFEAAAAAAA"
    )
        port map (
      I0 => \gpregsm1.user_valid_reg_0\,
      I1 => \wdch_rd_en__0\,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      I4 => curr_fwft_state(1),
      I5 => aempty_fwft_fb_i,
      O => \aempty_fwft_fb_i_i_1__0_n_0\
    );
aempty_fwft_fb_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_wready,
      I1 => empty_fwft_fb_o_i,
      O => \wdch_rd_en__0\
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \aempty_fwft_fb_i_i_1__0_n_0\,
      Q => aempty_fwft_fb_i,
      R => '0'
    );
aempty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \aempty_fwft_fb_i_i_1__0_n_0\,
      Q => aempty_fwft_i,
      R => '0'
    );
\empty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F0F0FFF4FFF0"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => m_axi_wready,
      I2 => \gpregsm1.user_valid_reg_0\,
      I3 => empty_fwft_fb_i,
      I4 => curr_fwft_state(0),
      I5 => curr_fwft_state(1),
      O => \empty_fwft_fb_i_i_1__0_n_0\
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \empty_fwft_fb_i_i_1__0_n_0\,
      Q => empty_fwft_fb_i,
      R => '0'
    );
\empty_fwft_fb_o_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0EC"
    )
        port map (
      I0 => m_axi_wready,
      I1 => empty_fwft_fb_o_i,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => \gpregsm1.user_valid_reg_0\
    );
empty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \empty_fwft_fb_i_i_1__0_n_0\,
      Q => empty_fwft_i,
      R => '0'
    );
\gc0.count_d1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F77"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => empty_fwft_fb_o_i,
      I3 => m_axi_wready,
      I4 => \out\,
      O => \^e\(0)
    );
\goreg_bm.dout_i[74]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001010100010"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      I4 => m_axi_wready,
      I5 => empty_fwft_fb_o_i,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => m_axi_wready,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B000FFFF"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => m_axi_wready,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      I4 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => \gpregsm1.user_valid_reg_0\
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => \gpregsm1.user_valid_reg_0\
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => \gpregsm1.user_valid_reg_0\
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => m_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_rd_fwft__parameterized0_9\ is
  port (
    \out\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \gpregsm1.user_valid_reg_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC;
    \_inferred__0/i__carry__0\ : in STD_LOGIC;
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_bm.dout_i_reg[68]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_rd_fwft__parameterized0_9\ : entity is "rd_fwft";
end \sys_top_s00_data_fifo_452_rd_fwft__parameterized0_9\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_rd_fwft__parameterized0_9\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal \aempty_fwft_fb_i_i_1__2_n_0\ : STD_LOGIC;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal \empty_fwft_fb_i_i_1__2_n_0\ : STD_LOGIC;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rdch_rd_en__0\ : STD_LOGIC;
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
  E(0) <= \^e\(0);
  \out\ <= empty_fwft_fb_o_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => \^e\(0),
      I1 => \goreg_bm.dout_i_reg[68]\(1),
      I2 => \goreg_bm.dout_i_reg[68]\(0),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\,
      O => ENB_I
    );
\aempty_fwft_fb_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAFFEFEAAAAAAA"
    )
        port map (
      I0 => \gpregsm1.user_valid_reg_0\,
      I1 => \rdch_rd_en__0\,
      I2 => curr_fwft_state(0),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      I4 => curr_fwft_state(1),
      I5 => aempty_fwft_fb_i,
      O => \aempty_fwft_fb_i_i_1__2_n_0\
    );
\aempty_fwft_fb_i_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_rready,
      I1 => empty_fwft_fb_o_i,
      O => \rdch_rd_en__0\
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \aempty_fwft_fb_i_i_1__2_n_0\,
      Q => aempty_fwft_fb_i,
      R => '0'
    );
aempty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \aempty_fwft_fb_i_i_1__2_n_0\,
      Q => aempty_fwft_i,
      R => '0'
    );
\empty_fwft_fb_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F0F0FFF4FFF0"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => s_axi_rready,
      I2 => \gpregsm1.user_valid_reg_0\,
      I3 => empty_fwft_fb_i,
      I4 => curr_fwft_state(0),
      I5 => curr_fwft_state(1),
      O => \empty_fwft_fb_i_i_1__2_n_0\
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \empty_fwft_fb_i_i_1__2_n_0\,
      Q => empty_fwft_fb_i,
      R => '0'
    );
\empty_fwft_fb_o_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0EC"
    )
        port map (
      I0 => s_axi_rready,
      I1 => empty_fwft_fb_o_i,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => \gpregsm1.user_valid_reg_0\
    );
empty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \empty_fwft_fb_i_i_1__2_n_0\,
      Q => empty_fwft_i,
      R => '0'
    );
\gc0.count_d1[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F77"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => empty_fwft_fb_o_i,
      I3 => s_axi_rready,
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      O => \^e\(0)
    );
\goreg_bm.dout_i[68]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001010100010"
    )
        port map (
      I0 => \goreg_bm.dout_i_reg[68]\(0),
      I1 => \goreg_bm.dout_i_reg[68]\(1),
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      I4 => s_axi_rready,
      I5 => empty_fwft_fb_o_i,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => s_axi_rready,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B000FFFF"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => s_axi_rready,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => \gpregsm1.user_valid_reg_0\
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => \gpregsm1.user_valid_reg_0\
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => \gpregsm1.user_valid_reg_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA59AAAAAAAAAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => s_axi_rready,
      I2 => empty_fwft_fb_o_i,
      I3 => \_inferred__0/i__carry__0\,
      I4 => arready_pkt,
      I5 => CO(0),
      O => S(0)
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => s_axi_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_rd_status_flags_ss is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_rd_status_flags_ss;

architecture STRUCTURE of sys_top_s00_data_fifo_452_rd_status_flags_ss is
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
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      PRE => AR(0),
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      PRE => AR(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_rd_status_flags_ss_21 is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sys_top_s00_data_fifo_452_rd_status_flags_ss_21 : entity is "rd_status_flags_ss";
end sys_top_s00_data_fifo_452_rd_status_flags_ss_21;

architecture STRUCTURE of sys_top_s00_data_fifo_452_rd_status_flags_ss_21 is
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
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      PRE => AR(0),
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      PRE => AR(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_wr_bin_cntr is
  port (
    comp1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    PNTR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_wr_bin_cntr;

architecture STRUCTURE of sys_top_s00_data_fifo_452_wr_bin_cntr is
  signal p_13_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_full_fb_i_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ram_full_fb_i_i_2__1\ : label is "soft_lutpair17";
begin
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_13_out(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      I2 => p_13_out(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_13_out(1),
      I1 => p_13_out(0),
      I2 => p_13_out(2),
      I3 => p_13_out(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_13_out(2),
      I1 => p_13_out(0),
      I2 => p_13_out(1),
      I3 => p_13_out(3),
      I4 => p_13_out(4),
      O => \plusOp__0\(4)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(0),
      Q => Q(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(1),
      Q => Q(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(2),
      Q => Q(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(3),
      Q => Q(3)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(4),
      Q => Q(4)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => AR(0),
      Q => p_13_out(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(1),
      Q => p_13_out(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(2),
      Q => p_13_out(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(3),
      Q => p_13_out(3)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(4),
      Q => p_13_out(4)
    );
\ram_full_fb_i_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => ram_full_fb_i_i_3_n_0,
      I1 => p_13_out(1),
      I2 => PNTR(1),
      I3 => PNTR(0),
      I4 => p_13_out(0),
      O => comp1
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_13_out(3),
      I1 => PNTR(3),
      I2 => PNTR(2),
      I3 => p_13_out(2),
      I4 => p_13_out(4),
      I5 => PNTR(4),
      O => ram_full_fb_i_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_wr_bin_cntr_19 is
  port (
    comp1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    I47 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sys_top_s00_data_fifo_452_wr_bin_cntr_19 : entity is "wr_bin_cntr";
end sys_top_s00_data_fifo_452_wr_bin_cntr_19;

architecture STRUCTURE of sys_top_s00_data_fifo_452_wr_bin_cntr_19 is
  signal p_13_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \ram_full_fb_i_i_3__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ram_full_fb_i_i_2__2\ : label is "soft_lutpair2";
begin
\gcc0.gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_13_out(0),
      O => \plusOp__2\(0)
    );
\gcc0.gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      O => \plusOp__2\(1)
    );
\gcc0.gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      I2 => p_13_out(2),
      O => \plusOp__2\(2)
    );
\gcc0.gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_13_out(1),
      I1 => p_13_out(0),
      I2 => p_13_out(2),
      I3 => p_13_out(3),
      O => \plusOp__2\(3)
    );
\gcc0.gc0.count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_13_out(2),
      I1 => p_13_out(0),
      I2 => p_13_out(1),
      I3 => p_13_out(3),
      I4 => p_13_out(4),
      O => \plusOp__2\(4)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(0),
      Q => Q(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(1),
      Q => Q(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(2),
      Q => Q(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(3),
      Q => Q(3)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_13_out(4),
      Q => Q(4)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(0),
      PRE => AR(0),
      Q => p_13_out(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__2\(1),
      Q => p_13_out(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__2\(2),
      Q => p_13_out(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__2\(3),
      Q => p_13_out(3)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__2\(4),
      Q => p_13_out(4)
    );
\ram_full_fb_i_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => \ram_full_fb_i_i_3__0_n_0\,
      I1 => p_13_out(1),
      I2 => I47(1),
      I3 => I47(0),
      I4 => p_13_out(0),
      O => comp1
    );
\ram_full_fb_i_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_13_out(3),
      I1 => I47(3),
      I2 => I47(2),
      I3 => p_13_out(2),
      I4 => p_13_out(4),
      I5 => I47(4),
      O => \ram_full_fb_i_i_3__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_wr_bin_cntr__parameterized0\ is
  port (
    v1_reg_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[0]_0\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]_0\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]_0\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[6]_0\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]_0\ : out STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_wr_bin_cntr__parameterized0\ : entity is "wr_bin_cntr";
end \sys_top_s00_data_fifo_452_wr_bin_cntr__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_wr_bin_cntr__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gcc0.gc0.count[8]_i_2_n_0\ : STD_LOGIC;
  signal p_13_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \plusOp__4\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[8]_i_1\ : label is "soft_lutpair23";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\gcc0.gc0.count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_13_out(0),
      O => \plusOp__4\(0)
    );
\gcc0.gc0.count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      O => \plusOp__4\(1)
    );
\gcc0.gc0.count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      I2 => p_13_out(2),
      O => \plusOp__4\(2)
    );
\gcc0.gc0.count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_13_out(1),
      I1 => p_13_out(0),
      I2 => p_13_out(2),
      I3 => p_13_out(3),
      O => \plusOp__4\(3)
    );
\gcc0.gc0.count[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_13_out(2),
      I1 => p_13_out(0),
      I2 => p_13_out(1),
      I3 => p_13_out(3),
      I4 => p_13_out(4),
      O => \plusOp__4\(4)
    );
\gcc0.gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => p_13_out(3),
      I1 => p_13_out(1),
      I2 => p_13_out(0),
      I3 => p_13_out(2),
      I4 => p_13_out(4),
      I5 => p_13_out(5),
      O => \plusOp__4\(5)
    );
\gcc0.gc0.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gcc0.gc0.count[8]_i_2_n_0\,
      I1 => p_13_out(6),
      O => \plusOp__4\(6)
    );
\gcc0.gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gcc0.gc0.count[8]_i_2_n_0\,
      I1 => p_13_out(6),
      I2 => p_13_out(7),
      O => \plusOp__4\(7)
    );
\gcc0.gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_13_out(6),
      I1 => \gcc0.gc0.count[8]_i_2_n_0\,
      I2 => p_13_out(7),
      I3 => p_13_out(8),
      O => \plusOp__4\(8)
    );
\gcc0.gc0.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_13_out(5),
      I1 => p_13_out(3),
      I2 => p_13_out(1),
      I3 => p_13_out(0),
      I4 => p_13_out(2),
      I5 => p_13_out(4),
      O => \gcc0.gc0.count[8]_i_2_n_0\
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(0),
      Q => \^q\(0),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(1),
      Q => \^q\(1),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(2),
      Q => \^q\(2),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(4),
      Q => \^q\(4),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(5),
      Q => \^q\(5),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(6),
      Q => \^q\(6),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(7),
      Q => \^q\(7),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(8),
      Q => \^q\(8),
      R => SR(0)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__4\(0),
      Q => p_13_out(0),
      S => SR(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__4\(1),
      Q => p_13_out(1),
      R => SR(0)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__4\(2),
      Q => p_13_out(2),
      R => SR(0)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__4\(3),
      Q => p_13_out(3),
      R => SR(0)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__4\(4),
      Q => p_13_out(4),
      R => SR(0)
    );
\gcc0.gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__4\(5),
      Q => p_13_out(5),
      R => SR(0)
    );
\gcc0.gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__4\(6),
      Q => p_13_out(6),
      R => SR(0)
    );
\gcc0.gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__4\(7),
      Q => p_13_out(7),
      R => SR(0)
    );
\gcc0.gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__4\(8),
      Q => p_13_out(8),
      R => SR(0)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gmux.gm[4].gms.ms\(0),
      I2 => \^q\(1),
      I3 => \gmux.gm[4].gms.ms\(1),
      O => v1_reg_0(0)
    );
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gmux.gm[4].gms.ms_0\(0),
      I2 => \^q\(1),
      I3 => \gmux.gm[4].gms.ms_0\(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(0),
      I1 => \gmux.gm[4].gms.ms\(0),
      I2 => \gmux.gm[4].gms.ms\(1),
      I3 => p_13_out(1),
      O => v1_reg_1(0)
    );
\gmux.gm[0].gm1.m1_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gmux.gm[4].gms.ms\(0),
      I2 => \^q\(1),
      I3 => \gmux.gm[4].gms.ms\(1),
      O => \gcc0.gc0.count_d1_reg[0]_0\
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gmux.gm[4].gms.ms\(2),
      I2 => \^q\(3),
      I3 => \gmux.gm[4].gms.ms\(3),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gmux.gm[4].gms.ms_0\(2),
      I2 => \^q\(3),
      I3 => \gmux.gm[4].gms.ms_0\(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(2),
      I1 => \gmux.gm[4].gms.ms\(2),
      I2 => \gmux.gm[4].gms.ms\(3),
      I3 => p_13_out(3),
      O => v1_reg_1(1)
    );
\gmux.gm[1].gms.ms_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gmux.gm[4].gms.ms\(2),
      I2 => \^q\(3),
      I3 => \gmux.gm[4].gms.ms\(3),
      O => \gcc0.gc0.count_d1_reg[2]_0\
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gmux.gm[4].gms.ms\(4),
      I2 => \^q\(5),
      I3 => \gmux.gm[4].gms.ms\(5),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gmux.gm[4].gms.ms_0\(4),
      I2 => \^q\(5),
      I3 => \gmux.gm[4].gms.ms_0\(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(4),
      I1 => \gmux.gm[4].gms.ms\(4),
      I2 => \gmux.gm[4].gms.ms\(5),
      I3 => p_13_out(5),
      O => v1_reg_1(2)
    );
\gmux.gm[2].gms.ms_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gmux.gm[4].gms.ms\(4),
      I2 => \^q\(5),
      I3 => \gmux.gm[4].gms.ms\(5),
      O => \gcc0.gc0.count_d1_reg[4]_0\
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gmux.gm[4].gms.ms\(6),
      I2 => \^q\(7),
      I3 => \gmux.gm[4].gms.ms\(7),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gmux.gm[4].gms.ms_0\(6),
      I2 => \^q\(7),
      I3 => \gmux.gm[4].gms.ms_0\(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(6),
      I1 => \gmux.gm[4].gms.ms\(6),
      I2 => \gmux.gm[4].gms.ms\(7),
      I3 => p_13_out(7),
      O => v1_reg_1(3)
    );
\gmux.gm[3].gms.ms_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gmux.gm[4].gms.ms\(6),
      I2 => \^q\(7),
      I3 => \gmux.gm[4].gms.ms\(7),
      O => \gcc0.gc0.count_d1_reg[6]_0\
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gmux.gm[4].gms.ms\(8),
      O => v1_reg_0(4)
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gmux.gm[4].gms.ms_0\(8),
      O => v1_reg(4)
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_13_out(8),
      I1 => \gmux.gm[4].gms.ms\(8),
      O => v1_reg_1(4)
    );
\gmux.gm[4].gms.ms_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gmux.gm[4].gms.ms\(8),
      O => \gcc0.gc0.count_d1_reg[8]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_wr_bin_cntr__parameterized0_6\ is
  port (
    v1_reg_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[0]_0\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]_0\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]_0\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[6]_0\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]_0\ : out STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_wr_bin_cntr__parameterized0_6\ : entity is "wr_bin_cntr";
end \sys_top_s00_data_fifo_452_wr_bin_cntr__parameterized0_6\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_wr_bin_cntr__parameterized0_6\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gcc0.gc0.count[8]_i_2__0_n_0\ : STD_LOGIC;
  signal p_13_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \plusOp__6\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1__2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1__2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[7]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[8]_i_1__0\ : label is "soft_lutpair13";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\gcc0.gc0.count[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_13_out(0),
      O => \plusOp__6\(0)
    );
\gcc0.gc0.count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      O => \plusOp__6\(1)
    );
\gcc0.gc0.count[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_13_out(0),
      I1 => p_13_out(1),
      I2 => p_13_out(2),
      O => \plusOp__6\(2)
    );
\gcc0.gc0.count[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_13_out(1),
      I1 => p_13_out(0),
      I2 => p_13_out(2),
      I3 => p_13_out(3),
      O => \plusOp__6\(3)
    );
\gcc0.gc0.count[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_13_out(2),
      I1 => p_13_out(0),
      I2 => p_13_out(1),
      I3 => p_13_out(3),
      I4 => p_13_out(4),
      O => \plusOp__6\(4)
    );
\gcc0.gc0.count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => p_13_out(3),
      I1 => p_13_out(1),
      I2 => p_13_out(0),
      I3 => p_13_out(2),
      I4 => p_13_out(4),
      I5 => p_13_out(5),
      O => \plusOp__6\(5)
    );
\gcc0.gc0.count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gcc0.gc0.count[8]_i_2__0_n_0\,
      I1 => p_13_out(6),
      O => \plusOp__6\(6)
    );
\gcc0.gc0.count[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gcc0.gc0.count[8]_i_2__0_n_0\,
      I1 => p_13_out(6),
      I2 => p_13_out(7),
      O => \plusOp__6\(7)
    );
\gcc0.gc0.count[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_13_out(6),
      I1 => \gcc0.gc0.count[8]_i_2__0_n_0\,
      I2 => p_13_out(7),
      I3 => p_13_out(8),
      O => \plusOp__6\(8)
    );
\gcc0.gc0.count[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_13_out(5),
      I1 => p_13_out(3),
      I2 => p_13_out(1),
      I3 => p_13_out(0),
      I4 => p_13_out(2),
      I5 => p_13_out(4),
      O => \gcc0.gc0.count[8]_i_2__0_n_0\
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(0),
      Q => \^q\(0),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(1),
      Q => \^q\(1),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(2),
      Q => \^q\(2),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(4),
      Q => \^q\(4),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(5),
      Q => \^q\(5),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(6),
      Q => \^q\(6),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(7),
      Q => \^q\(7),
      R => SR(0)
    );
\gcc0.gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => p_13_out(8),
      Q => \^q\(8),
      R => SR(0)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__6\(0),
      Q => p_13_out(0),
      S => SR(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__6\(1),
      Q => p_13_out(1),
      R => SR(0)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__6\(2),
      Q => p_13_out(2),
      R => SR(0)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__6\(3),
      Q => p_13_out(3),
      R => SR(0)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__6\(4),
      Q => p_13_out(4),
      R => SR(0)
    );
\gcc0.gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__6\(5),
      Q => p_13_out(5),
      R => SR(0)
    );
\gcc0.gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__6\(6),
      Q => p_13_out(6),
      R => SR(0)
    );
\gcc0.gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__6\(7),
      Q => p_13_out(7),
      R => SR(0)
    );
\gcc0.gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__6\(8),
      Q => p_13_out(8),
      R => SR(0)
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gmux.gm[4].gms.ms\(0),
      I2 => \^q\(1),
      I3 => \gmux.gm[4].gms.ms\(1),
      O => v1_reg_0(0)
    );
\gmux.gm[0].gm1.m1_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gmux.gm[4].gms.ms_0\(0),
      I2 => \^q\(1),
      I3 => \gmux.gm[4].gms.ms_0\(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(0),
      I1 => \gmux.gm[4].gms.ms\(0),
      I2 => \gmux.gm[4].gms.ms\(1),
      I3 => p_13_out(1),
      O => v1_reg_1(0)
    );
\gmux.gm[0].gm1.m1_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gmux.gm[4].gms.ms\(0),
      I2 => \^q\(1),
      I3 => \gmux.gm[4].gms.ms\(1),
      O => \gcc0.gc0.count_d1_reg[0]_0\
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gmux.gm[4].gms.ms\(2),
      I2 => \^q\(3),
      I3 => \gmux.gm[4].gms.ms\(3),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gmux.gm[4].gms.ms_0\(2),
      I2 => \^q\(3),
      I3 => \gmux.gm[4].gms.ms_0\(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(2),
      I1 => \gmux.gm[4].gms.ms\(2),
      I2 => \gmux.gm[4].gms.ms\(3),
      I3 => p_13_out(3),
      O => v1_reg_1(1)
    );
\gmux.gm[1].gms.ms_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gmux.gm[4].gms.ms\(2),
      I2 => \^q\(3),
      I3 => \gmux.gm[4].gms.ms\(3),
      O => \gcc0.gc0.count_d1_reg[2]_0\
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gmux.gm[4].gms.ms\(4),
      I2 => \^q\(5),
      I3 => \gmux.gm[4].gms.ms\(5),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gmux.gm[4].gms.ms_0\(4),
      I2 => \^q\(5),
      I3 => \gmux.gm[4].gms.ms_0\(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(4),
      I1 => \gmux.gm[4].gms.ms\(4),
      I2 => \gmux.gm[4].gms.ms\(5),
      I3 => p_13_out(5),
      O => v1_reg_1(2)
    );
\gmux.gm[2].gms.ms_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gmux.gm[4].gms.ms\(4),
      I2 => \^q\(5),
      I3 => \gmux.gm[4].gms.ms\(5),
      O => \gcc0.gc0.count_d1_reg[4]_0\
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gmux.gm[4].gms.ms\(6),
      I2 => \^q\(7),
      I3 => \gmux.gm[4].gms.ms\(7),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gmux.gm[4].gms.ms_0\(6),
      I2 => \^q\(7),
      I3 => \gmux.gm[4].gms.ms_0\(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_13_out(6),
      I1 => \gmux.gm[4].gms.ms\(6),
      I2 => \gmux.gm[4].gms.ms\(7),
      I3 => p_13_out(7),
      O => v1_reg_1(3)
    );
\gmux.gm[3].gms.ms_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gmux.gm[4].gms.ms\(6),
      I2 => \^q\(7),
      I3 => \gmux.gm[4].gms.ms\(7),
      O => \gcc0.gc0.count_d1_reg[6]_0\
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gmux.gm[4].gms.ms\(8),
      O => v1_reg_0(4)
    );
\gmux.gm[4].gms.ms_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gmux.gm[4].gms.ms_0\(8),
      O => v1_reg(4)
    );
\gmux.gm[4].gms.ms_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_13_out(8),
      I1 => \gmux.gm[4].gms.ms\(8),
      O => v1_reg_1(4)
    );
\gmux.gm[4].gms.ms_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gmux.gm[4].gms.ms\(8),
      O => \gcc0.gc0.count_d1_reg[8]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_wr_status_flags_ss is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    p_8_out : in STD_LOGIC;
    comp0 : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC
  );
end sys_top_s00_data_fifo_452_wr_status_flags_ss;

architecture STRUCTURE of sys_top_s00_data_fifo_452_wr_status_flags_ss is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_comb : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
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
  E(0) <= \^e\(0);
\gcc0.gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => s_axi_awvalid,
      I2 => ram_full_i,
      O => \^e\(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_fb
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080FFF08080808"
    )
        port map (
      I0 => comp1,
      I1 => \^e\(0),
      I2 => p_8_out,
      I3 => comp0,
      I4 => ram_full_i_reg_0,
      I5 => ram_full_fb_i,
      O => ram_full_comb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_comb,
      PRE => \out\,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_comb,
      PRE => \out\,
      Q => ram_full_i
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axi_awready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_wr_status_flags_ss_18 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    comp0 : in STD_LOGIC;
    ram_full_i_reg_1 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sys_top_s00_data_fifo_452_wr_status_flags_ss_18 : entity is "wr_status_flags_ss";
end sys_top_s00_data_fifo_452_wr_status_flags_ss_18;

architecture STRUCTURE of sys_top_s00_data_fifo_452_wr_status_flags_ss_18 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_comb : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
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
  E(0) <= \^e\(0);
\gcc0.gc0.count_d1[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => s_axi_arvalid,
      I2 => ram_full_i,
      O => \^e\(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_fb
    );
\ram_full_fb_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080FFF08080808"
    )
        port map (
      I0 => comp1,
      I1 => \^e\(0),
      I2 => ram_full_i_reg_0(0),
      I3 => comp0,
      I4 => ram_full_i_reg_1,
      I5 => ram_full_fb_i,
      O => ram_full_comb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_comb,
      PRE => \out\,
      Q => ram_full_fb_i
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ram_full_comb,
      PRE => \out\,
      Q => ram_full_i
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axi_arready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_blk_mem_gen_prim_width is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_blk_mem_gen_prim_width;

architecture STRUCTURE of sys_top_s00_data_fifo_452_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper
     port map (
      D(35 downto 0) => D(35 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(0),
      DIADI(15 downto 0) => DIADI(15 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      s_aclk => s_aclk,
      s_axi_wdata(18 downto 0) => s_axi_wdata(18 downto 0),
      s_axi_wstrb(0) => s_axi_wstrb(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_blk_mem_gen_prim_width__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 38 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 37 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \sys_top_s00_data_fifo_452_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_noinit.ram\: entity work.\sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper__parameterized0\
     port map (
      D(38 downto 0) => D(38 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      s_aclk => s_aclk,
      s_axi_wdata(37 downto 0) => s_axi_wdata(37 downto 0),
      s_axi_wid(0) => s_axi_wid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_blk_mem_gen_prim_width__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    POR_B : out STD_LOGIC;
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg_0\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \sys_top_s00_data_fifo_452_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_blk_mem_gen_prim_width__parameterized1\ is
  signal ENB_dly : STD_LOGIC;
  signal \^por_b\ : STD_LOGIC;
  signal \^safety_ckt_gen.enb_no_reg.enb_dly_d_reg_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.POR_B_i_1_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0]\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4]\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg ";
  attribute srl_name : string;
  attribute srl_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "inst/\gen_fifo.fifo_gen_inst /\inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 ";
begin
  POR_B <= \^por_b\;
  \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg_0\ <= \^safety_ckt_gen.enb_no_reg.enb_dly_d_reg_0\;
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ENB_dly,
      Q => \^safety_ckt_gen.enb_no_reg.enb_dly_d_reg_0\,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^por_b\,
      Q => ENB_dly,
      R => '0'
    );
\SAFETY_CKT_GEN.POR_B_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0]\,
      I1 => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4]\,
      O => \SAFETY_CKT_GEN.POR_B_i_1_n_0\
    );
\SAFETY_CKT_GEN.POR_B_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.POR_B_i_1_n_0\,
      Q => \^por_b\,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => '1',
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0]\,
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
      CLK => s_aclk,
      D => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[0]\,
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\,
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg_n_0_[4]\,
      R => '0'
    );
\prim_noinit.ram\: entity work.\sys_top_s00_data_fifo_452_blk_mem_gen_prim_wrapper__parameterized1\
     port map (
      D(68 downto 0) => D(68 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_2\ => \^safety_ckt_gen.enb_no_reg.enb_dly_d_reg_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_3\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\,
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => \^por_b\,
      Q(8 downto 0) => Q(8 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_memory is
  port (
    \goreg_dm.dout_i_reg[59]_0\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    EN : in STD_LOGIC;
    \gpr1.dout_i_reg[55]\ : in STD_LOGIC_VECTOR ( 55 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpr1.dout_i_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_memory;

architecture STRUCTURE of sys_top_s00_data_fifo_452_memory is
  signal dout_i : STD_LOGIC_VECTOR ( 59 downto 4 );
begin
\gdm.dm_gen.dm\: entity work.sys_top_s00_data_fifo_452_dmem
     port map (
      EN => EN,
      count_d1(4 downto 0) => count_d1(4 downto 0),
      count_d10_in(4 downto 0) => count_d10_in(4 downto 0),
      dout_i(55 downto 0) => dout_i(59 downto 4),
      \gpr1.dout_i_reg[4]_0\(0) => \gpr1.dout_i_reg[4]\(0),
      \gpr1.dout_i_reg[55]_0\(55 downto 0) => \gpr1.dout_i_reg[55]\(55 downto 0),
      s_aclk => s_aclk
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(10),
      Q => \goreg_dm.dout_i_reg[59]_0\(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(11),
      Q => \goreg_dm.dout_i_reg[59]_0\(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(12),
      Q => \goreg_dm.dout_i_reg[59]_0\(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(13),
      Q => \goreg_dm.dout_i_reg[59]_0\(9),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(14),
      Q => \goreg_dm.dout_i_reg[59]_0\(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(15),
      Q => \goreg_dm.dout_i_reg[59]_0\(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(16),
      Q => \goreg_dm.dout_i_reg[59]_0\(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(17),
      Q => \goreg_dm.dout_i_reg[59]_0\(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(18),
      Q => \goreg_dm.dout_i_reg[59]_0\(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(19),
      Q => \goreg_dm.dout_i_reg[59]_0\(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(20),
      Q => \goreg_dm.dout_i_reg[59]_0\(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(21),
      Q => \goreg_dm.dout_i_reg[59]_0\(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(22),
      Q => \goreg_dm.dout_i_reg[59]_0\(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(23),
      Q => \goreg_dm.dout_i_reg[59]_0\(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(24),
      Q => \goreg_dm.dout_i_reg[59]_0\(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(25),
      Q => \goreg_dm.dout_i_reg[59]_0\(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(26),
      Q => \goreg_dm.dout_i_reg[59]_0\(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(27),
      Q => \goreg_dm.dout_i_reg[59]_0\(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(28),
      Q => \goreg_dm.dout_i_reg[59]_0\(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(29),
      Q => \goreg_dm.dout_i_reg[59]_0\(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(30),
      Q => \goreg_dm.dout_i_reg[59]_0\(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(31),
      Q => \goreg_dm.dout_i_reg[59]_0\(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(32),
      Q => \goreg_dm.dout_i_reg[59]_0\(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(33),
      Q => \goreg_dm.dout_i_reg[59]_0\(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(34),
      Q => \goreg_dm.dout_i_reg[59]_0\(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(35),
      Q => \goreg_dm.dout_i_reg[59]_0\(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(36),
      Q => \goreg_dm.dout_i_reg[59]_0\(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(37),
      Q => \goreg_dm.dout_i_reg[59]_0\(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(38),
      Q => \goreg_dm.dout_i_reg[59]_0\(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(39),
      Q => \goreg_dm.dout_i_reg[59]_0\(35),
      R => '0'
    );
\goreg_dm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(40),
      Q => \goreg_dm.dout_i_reg[59]_0\(36),
      R => '0'
    );
\goreg_dm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(41),
      Q => \goreg_dm.dout_i_reg[59]_0\(37),
      R => '0'
    );
\goreg_dm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(42),
      Q => \goreg_dm.dout_i_reg[59]_0\(38),
      R => '0'
    );
\goreg_dm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(43),
      Q => \goreg_dm.dout_i_reg[59]_0\(39),
      R => '0'
    );
\goreg_dm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(44),
      Q => \goreg_dm.dout_i_reg[59]_0\(40),
      R => '0'
    );
\goreg_dm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(45),
      Q => \goreg_dm.dout_i_reg[59]_0\(41),
      R => '0'
    );
\goreg_dm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(46),
      Q => \goreg_dm.dout_i_reg[59]_0\(42),
      R => '0'
    );
\goreg_dm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(47),
      Q => \goreg_dm.dout_i_reg[59]_0\(43),
      R => '0'
    );
\goreg_dm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(48),
      Q => \goreg_dm.dout_i_reg[59]_0\(44),
      R => '0'
    );
\goreg_dm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(49),
      Q => \goreg_dm.dout_i_reg[59]_0\(45),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(4),
      Q => \goreg_dm.dout_i_reg[59]_0\(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(50),
      Q => \goreg_dm.dout_i_reg[59]_0\(46),
      R => '0'
    );
\goreg_dm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(51),
      Q => \goreg_dm.dout_i_reg[59]_0\(47),
      R => '0'
    );
\goreg_dm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(52),
      Q => \goreg_dm.dout_i_reg[59]_0\(48),
      R => '0'
    );
\goreg_dm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(53),
      Q => \goreg_dm.dout_i_reg[59]_0\(49),
      R => '0'
    );
\goreg_dm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(54),
      Q => \goreg_dm.dout_i_reg[59]_0\(50),
      R => '0'
    );
\goreg_dm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(55),
      Q => \goreg_dm.dout_i_reg[59]_0\(51),
      R => '0'
    );
\goreg_dm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(56),
      Q => \goreg_dm.dout_i_reg[59]_0\(52),
      R => '0'
    );
\goreg_dm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(57),
      Q => \goreg_dm.dout_i_reg[59]_0\(53),
      R => '0'
    );
\goreg_dm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(58),
      Q => \goreg_dm.dout_i_reg[59]_0\(54),
      R => '0'
    );
\goreg_dm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(59),
      Q => \goreg_dm.dout_i_reg[59]_0\(55),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(5),
      Q => \goreg_dm.dout_i_reg[59]_0\(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(6),
      Q => \goreg_dm.dout_i_reg[59]_0\(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(7),
      Q => \goreg_dm.dout_i_reg[59]_0\(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(8),
      Q => \goreg_dm.dout_i_reg[59]_0\(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => dout_i(9),
      Q => \goreg_dm.dout_i_reg[59]_0\(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_memory_16 is
  port (
    \goreg_dm.dout_i_reg[59]_0\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \gfwd_rev_pipeline1.s_ready_i_reg\ : out STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \goreg_dm.dout_i_reg[26]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \goreg_dm.dout_i_reg[26]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \goreg_dm.dout_i_reg[24]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_fifo_free_space : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    arready_pkt : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    I40 : in STD_LOGIC;
    I555 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpr1.dout_i_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sys_top_s00_data_fifo_452_memory_16 : entity is "memory";
end sys_top_s00_data_fifo_452_memory_16;

architecture STRUCTURE of sys_top_s00_data_fifo_452_memory_16 is
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_10\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_11\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_12\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_13\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_14\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_15\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_16\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_17\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_18\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_19\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_20\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_21\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_22\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_23\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_24\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_25\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_26\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_27\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_28\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_29\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_30\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_31\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_32\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_33\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_34\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_35\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_36\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_37\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_38\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_39\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_4\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_40\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_41\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_42\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_43\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_44\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_45\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_46\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_47\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_48\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_49\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_5\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_50\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_51\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_52\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_53\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_54\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_55\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_6\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_7\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_8\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_9\ : STD_LOGIC;
  signal \^gfwd_rev_pipeline1.s_ready_i_reg\ : STD_LOGIC;
  signal \^goreg_dm.dout_i_reg[59]_0\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal minusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_2\ : label is "soft_lutpair4";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \gfwd_rev_pipeline1.s_ready_i_reg\ <= \^gfwd_rev_pipeline1.s_ready_i_reg\;
  \goreg_dm.dout_i_reg[59]_0\(55 downto 0) <= \^goreg_dm.dout_i_reg[59]_0\(55 downto 0);
arvalid_en0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(2),
      I1 => \^goreg_dm.dout_i_reg[59]_0\(21),
      I2 => \^goreg_dm.dout_i_reg[59]_0\(22),
      I3 => Q(3),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[2]\(1)
    );
arvalid_en0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => Q(0),
      I1 => \^goreg_dm.dout_i_reg[59]_0\(19),
      I2 => \^goreg_dm.dout_i_reg[59]_0\(20),
      I3 => Q(1),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[2]\(0)
    );
arvalid_en0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[59]_0\(22),
      I1 => Q(3),
      I2 => \^goreg_dm.dout_i_reg[59]_0\(21),
      I3 => Q(2),
      O => \goreg_dm.dout_i_reg[26]_0\(1)
    );
arvalid_en0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[59]_0\(20),
      I1 => Q(1),
      I2 => \^goreg_dm.dout_i_reg[59]_0\(19),
      I3 => Q(0),
      O => \goreg_dm.dout_i_reg[26]_0\(0)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(0),
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      I2 => rd_fifo_free_space(0),
      O => D(0)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(1),
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      I2 => rd_fifo_free_space(1),
      O => D(1)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(2),
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      I2 => rd_fifo_free_space(2),
      O => D(2)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(3),
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      I2 => rd_fifo_free_space(3),
      O => D(3)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(3),
      I1 => \^goreg_dm.dout_i_reg[59]_0\(22),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(2),
      I1 => \^goreg_dm.dout_i_reg[59]_0\(21),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(1),
      I1 => \^goreg_dm.dout_i_reg[59]_0\(20),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(0),
      I1 => \^goreg_dm.dout_i_reg[59]_0\(19),
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(4),
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      I2 => rd_fifo_free_space(4),
      O => D(4)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(5),
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      I2 => rd_fifo_free_space(5),
      O => D(5)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(6),
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      I2 => rd_fifo_free_space(6),
      O => D(6)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(7),
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      I2 => rd_fifo_free_space(7),
      O => D(7)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(8),
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      I2 => rd_fifo_free_space(8),
      O => D(8)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => minusOp(9),
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\,
      I2 => rd_fifo_free_space(9),
      O => D(9)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\,
      I1 => s_axi_rready,
      I2 => CO(0),
      I3 => arready_pkt,
      I4 => \out\,
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_5_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_0\,
      CO(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_1\,
      CO(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_2\,
      CO(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => minusOp(3 downto 0),
      S(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_3_n_0\,
      S(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_4_n_0\,
      S(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_5_n_0\,
      S(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[3]_i_6_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]_i_2_n_0\,
      CO(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_0\,
      CO(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_1\,
      CO(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_2\,
      CO(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => minusOp(7 downto 4),
      S(3 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3 downto 0)
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_i_2_n_0\,
      CO(3 downto 1) => \NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => Q(8),
      O(3 downto 2) => \NLW_gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_i_4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => minusOp(9 downto 8),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\(1 downto 0)
    );
\gdm.dm_gen.dm\: entity work.sys_top_s00_data_fifo_452_dmem_17
     port map (
      I40 => I40,
      I555(55 downto 0) => I555(55 downto 0),
      count_d1(4 downto 0) => count_d1(4 downto 0),
      count_d10_in(4 downto 0) => count_d10_in(4 downto 0),
      dout_i(55) => \gdm.dm_gen.dm_n_0\,
      dout_i(54) => \gdm.dm_gen.dm_n_1\,
      dout_i(53) => \gdm.dm_gen.dm_n_2\,
      dout_i(52) => \gdm.dm_gen.dm_n_3\,
      dout_i(51) => \gdm.dm_gen.dm_n_4\,
      dout_i(50) => \gdm.dm_gen.dm_n_5\,
      dout_i(49) => \gdm.dm_gen.dm_n_6\,
      dout_i(48) => \gdm.dm_gen.dm_n_7\,
      dout_i(47) => \gdm.dm_gen.dm_n_8\,
      dout_i(46) => \gdm.dm_gen.dm_n_9\,
      dout_i(45) => \gdm.dm_gen.dm_n_10\,
      dout_i(44) => \gdm.dm_gen.dm_n_11\,
      dout_i(43) => \gdm.dm_gen.dm_n_12\,
      dout_i(42) => \gdm.dm_gen.dm_n_13\,
      dout_i(41) => \gdm.dm_gen.dm_n_14\,
      dout_i(40) => \gdm.dm_gen.dm_n_15\,
      dout_i(39) => \gdm.dm_gen.dm_n_16\,
      dout_i(38) => \gdm.dm_gen.dm_n_17\,
      dout_i(37) => \gdm.dm_gen.dm_n_18\,
      dout_i(36) => \gdm.dm_gen.dm_n_19\,
      dout_i(35) => \gdm.dm_gen.dm_n_20\,
      dout_i(34) => \gdm.dm_gen.dm_n_21\,
      dout_i(33) => \gdm.dm_gen.dm_n_22\,
      dout_i(32) => \gdm.dm_gen.dm_n_23\,
      dout_i(31) => \gdm.dm_gen.dm_n_24\,
      dout_i(30) => \gdm.dm_gen.dm_n_25\,
      dout_i(29) => \gdm.dm_gen.dm_n_26\,
      dout_i(28) => \gdm.dm_gen.dm_n_27\,
      dout_i(27) => \gdm.dm_gen.dm_n_28\,
      dout_i(26) => \gdm.dm_gen.dm_n_29\,
      dout_i(25) => \gdm.dm_gen.dm_n_30\,
      dout_i(24) => \gdm.dm_gen.dm_n_31\,
      dout_i(23) => \gdm.dm_gen.dm_n_32\,
      dout_i(22) => \gdm.dm_gen.dm_n_33\,
      dout_i(21) => \gdm.dm_gen.dm_n_34\,
      dout_i(20) => \gdm.dm_gen.dm_n_35\,
      dout_i(19) => \gdm.dm_gen.dm_n_36\,
      dout_i(18) => \gdm.dm_gen.dm_n_37\,
      dout_i(17) => \gdm.dm_gen.dm_n_38\,
      dout_i(16) => \gdm.dm_gen.dm_n_39\,
      dout_i(15) => \gdm.dm_gen.dm_n_40\,
      dout_i(14) => \gdm.dm_gen.dm_n_41\,
      dout_i(13) => \gdm.dm_gen.dm_n_42\,
      dout_i(12) => \gdm.dm_gen.dm_n_43\,
      dout_i(11) => \gdm.dm_gen.dm_n_44\,
      dout_i(10) => \gdm.dm_gen.dm_n_45\,
      dout_i(9) => \gdm.dm_gen.dm_n_46\,
      dout_i(8) => \gdm.dm_gen.dm_n_47\,
      dout_i(7) => \gdm.dm_gen.dm_n_48\,
      dout_i(6) => \gdm.dm_gen.dm_n_49\,
      dout_i(5) => \gdm.dm_gen.dm_n_50\,
      dout_i(4) => \gdm.dm_gen.dm_n_51\,
      dout_i(3) => \gdm.dm_gen.dm_n_52\,
      dout_i(2) => \gdm.dm_gen.dm_n_53\,
      dout_i(1) => \gdm.dm_gen.dm_n_54\,
      dout_i(0) => \gdm.dm_gen.dm_n_55\,
      \gpr1.dout_i_reg[4]_0\(0) => \gpr1.dout_i_reg[4]\(0),
      s_aclk => s_aclk
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_49\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_48\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_47\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_46\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(9),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_45\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_44\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_43\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_42\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_41\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_40\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_39\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_38\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_37\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_36\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_35\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_34\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_33\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_32\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_31\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_30\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_29\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_28\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_27\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_26\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_25\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_24\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_23\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_22\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_21\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_20\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(35),
      R => '0'
    );
\goreg_dm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_19\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(36),
      R => '0'
    );
\goreg_dm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_18\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(37),
      R => '0'
    );
\goreg_dm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_17\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(38),
      R => '0'
    );
\goreg_dm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_16\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(39),
      R => '0'
    );
\goreg_dm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_15\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(40),
      R => '0'
    );
\goreg_dm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_14\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(41),
      R => '0'
    );
\goreg_dm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_13\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(42),
      R => '0'
    );
\goreg_dm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_12\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(43),
      R => '0'
    );
\goreg_dm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_11\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(44),
      R => '0'
    );
\goreg_dm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_10\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(45),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_55\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_9\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(46),
      R => '0'
    );
\goreg_dm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_8\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(47),
      R => '0'
    );
\goreg_dm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_7\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(48),
      R => '0'
    );
\goreg_dm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_6\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(49),
      R => '0'
    );
\goreg_dm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_5\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(50),
      R => '0'
    );
\goreg_dm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_4\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(51),
      R => '0'
    );
\goreg_dm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_3\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(52),
      R => '0'
    );
\goreg_dm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_2\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(53),
      R => '0'
    );
\goreg_dm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_1\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(54),
      R => '0'
    );
\goreg_dm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_0\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(55),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_54\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_53\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_52\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_51\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_50\,
      Q => \^goreg_dm.dout_i_reg[59]_0\(5),
      R => '0'
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D55555552AAAAAAA"
    )
        port map (
      I0 => \^gfwd_rev_pipeline1.s_ready_i_reg\,
      I1 => \^goreg_dm.dout_i_reg[59]_0\(20),
      I2 => \^goreg_dm.dout_i_reg[59]_0\(19),
      I3 => \^goreg_dm.dout_i_reg[59]_0\(21),
      I4 => \^goreg_dm.dout_i_reg[59]_0\(22),
      I5 => Q(4),
      O => \goreg_dm.dout_i_reg[24]_0\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000808"
    )
        port map (
      I0 => CO(0),
      I1 => arready_pkt,
      I2 => \out\,
      I3 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\,
      I4 => s_axi_rready,
      O => \^gfwd_rev_pipeline1.s_ready_i_reg\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAFFFF95550000"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[59]_0\(22),
      I1 => \^goreg_dm.dout_i_reg[59]_0\(21),
      I2 => \^goreg_dm.dout_i_reg[59]_0\(19),
      I3 => \^goreg_dm.dout_i_reg[59]_0\(20),
      I4 => \^gfwd_rev_pipeline1.s_ready_i_reg\,
      I5 => Q(3),
      O => \goreg_dm.dout_i_reg[26]_1\(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AFF9500"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[59]_0\(21),
      I1 => \^goreg_dm.dout_i_reg[59]_0\(20),
      I2 => \^goreg_dm.dout_i_reg[59]_0\(19),
      I3 => \^gfwd_rev_pipeline1.s_ready_i_reg\,
      I4 => Q(2),
      O => \goreg_dm.dout_i_reg[26]_1\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F90"
    )
        port map (
      I0 => \^goreg_dm.dout_i_reg[59]_0\(20),
      I1 => \^goreg_dm.dout_i_reg[59]_0\(19),
      I2 => \^gfwd_rev_pipeline1.s_ready_i_reg\,
      I3 => Q(1),
      O => \goreg_dm.dout_i_reg[26]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_rd_logic is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    empty_fwft_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_out : out STD_LOGIC;
    comp0 : out STD_LOGIC;
    \gc0.count_d1_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    awready_pkt : in STD_LOGIC;
    ram_empty_fb_i_i_4 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_rd_logic;

architecture STRUCTURE of sys_top_s00_data_fifo_452_rd_logic is
  signal p_2_out : STD_LOGIC;
  signal \^p_8_out\ : STD_LOGIC;
  signal rpntr_n_0 : STD_LOGIC;
begin
  p_8_out <= \^p_8_out\;
\gr1.gr1_int.rfwft\: entity work.sys_top_s00_data_fifo_452_rd_fwft
     port map (
      AR(0) => AR(0),
      D(8 downto 0) => D(8 downto 0),
      DI(0) => DI(0),
      DIADI(0) => DIADI(0),
      E(0) => E(0),
      Q(9 downto 0) => Q(9 downto 0),
      S(2 downto 0) => S(2 downto 0),
      awready_pkt => awready_pkt,
      empty_fwft_i_reg_0 => empty_fwft_i_reg,
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]\ => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]\,
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\(3 downto 0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\(3 downto 0),
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\(0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\(0),
      \gpregsm1.curr_fwft_state_reg[1]_0\(0) => \^p_8_out\,
      \gpregsm1.curr_fwft_state_reg[1]_1\ => p_2_out,
      \out\(1 downto 0) => \out\(1 downto 0),
      s_aclk => s_aclk,
      s_axi_wvalid => s_axi_wvalid
    );
\grss.rsts\: entity work.sys_top_s00_data_fifo_452_rd_status_flags_ss
     port map (
      AR(0) => AR(0),
      \out\ => p_2_out,
      ram_empty_fb_i_reg_0 => rpntr_n_0,
      s_aclk => s_aclk
    );
rpntr: entity work.sys_top_s00_data_fifo_452_rd_bin_cntr
     port map (
      AR(0) => AR(0),
      E(0) => \^p_8_out\,
      comp0 => comp0,
      \gc0.count_d1_reg[4]_0\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \out\ => p_2_out,
      ram_empty_fb_i_i_4_0(4 downto 0) => ram_empty_fb_i_i_4(4 downto 0),
      ram_empty_fb_i_reg => rpntr_n_0,
      ram_empty_fb_i_reg_0(0) => ram_empty_fb_i_reg(0),
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_rd_logic_14 is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    empty_fwft_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_4_out__0\ : out STD_LOGIC;
    empty_fwft_i_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    comp0 : out STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gc0.count_d1_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gfwd_rev_pipeline1.s_ready_i_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \ram_empty_fb_i_i_4__0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \_inferred__0/i__carry\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sys_top_s00_data_fifo_452_rd_logic_14 : entity is "rd_logic";
end sys_top_s00_data_fifo_452_rd_logic_14;

architecture STRUCTURE of sys_top_s00_data_fifo_452_rd_logic_14 is
  signal \^gpregsm1.curr_fwft_state_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_out : STD_LOGIC;
  signal rpntr_n_0 : STD_LOGIC;
begin
  \gpregsm1.curr_fwft_state_reg[1]\(0) <= \^gpregsm1.curr_fwft_state_reg[1]\(0);
\gr1.gr1_int.rfwft\: entity work.sys_top_s00_data_fifo_452_rd_fwft_20
     port map (
      AR(0) => AR(0),
      CO(0) => CO(0),
      DI(0) => DI(0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      S(0) => S(0),
      \_inferred__0/i__carry\(0) => \_inferred__0/i__carry\(0),
      arready_pkt => arready_pkt,
      empty_fwft_i_reg_0(0) => empty_fwft_i_reg(0),
      empty_fwft_i_reg_1(0) => empty_fwft_i_reg_0(0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(1 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(1 downto 0),
      \gfwd_rev_pipeline1.s_ready_i_reg\(0) => \gfwd_rev_pipeline1.s_ready_i_reg\(0),
      \gpregsm1.curr_fwft_state_reg[1]_0\(0) => \^gpregsm1.curr_fwft_state_reg[1]\(0),
      \gpregsm1.curr_fwft_state_reg[1]_1\ => p_2_out,
      \out\ => \out\,
      \p_4_out__0\ => \p_4_out__0\,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready
    );
\grss.rsts\: entity work.sys_top_s00_data_fifo_452_rd_status_flags_ss_21
     port map (
      AR(0) => AR(0),
      \out\ => p_2_out,
      ram_empty_fb_i_reg_0 => rpntr_n_0,
      s_aclk => s_aclk
    );
rpntr: entity work.sys_top_s00_data_fifo_452_rd_bin_cntr_22
     port map (
      AR(0) => AR(0),
      E(0) => \^gpregsm1.curr_fwft_state_reg[1]\(0),
      comp0 => comp0,
      \gc0.count_d1_reg[4]_0\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \out\ => p_2_out,
      \ram_empty_fb_i_i_4__0_0\(4 downto 0) => \ram_empty_fb_i_i_4__0\(4 downto 0),
      ram_empty_fb_i_reg => rpntr_n_0,
      ram_empty_fb_i_reg_0(0) => ram_empty_fb_i_reg(0),
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_rd_status_flags_ss__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    \gmux.gm[1].gms.ms\ : in STD_LOGIC;
    \gmux.gm[2].gms.ms\ : in STD_LOGIC;
    \gmux.gm[3].gms.ms\ : in STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    ram_empty_i_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_rd_status_flags_ss__parameterized0\ : entity is "rd_status_flags_ss";
end \sys_top_s00_data_fifo_452_rd_status_flags_ss__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_rd_status_flags_ss__parameterized0\ is
  signal c1_n_0 : STD_LOGIC;
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
c1: entity work.\sys_top_s00_data_fifo_452_compare__parameterized0_1\
     port map (
      E(0) => E(0),
      comp1 => comp1,
      \gmux.gm[1].gms.ms_0\ => \gmux.gm[1].gms.ms\,
      \gmux.gm[2].gms.ms_0\ => \gmux.gm[2].gms.ms\,
      \gmux.gm[3].gms.ms_0\ => \gmux.gm[3].gms.ms\,
      \gmux.gm[4].gms.ms_0\ => \gmux.gm[4].gms.ms\,
      \out\ => ram_empty_fb_i,
      ram_empty_fb_i_reg => c1_n_0,
      ram_empty_i_reg => ram_empty_i_reg_0,
      ram_empty_i_reg_0 => ram_empty_i_reg_1,
      ram_empty_i_reg_1(0) => ram_empty_i_reg_2(0)
    );
c2: entity work.\sys_top_s00_data_fifo_452_compare__parameterized0_2\
     port map (
      comp1 => comp1,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_rd_status_flags_ss__parameterized0_10\ is
  port (
    \out\ : out STD_LOGIC;
    \gmux.gm[1].gms.ms\ : in STD_LOGIC;
    \gmux.gm[2].gms.ms\ : in STD_LOGIC;
    \gmux.gm[3].gms.ms\ : in STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    ram_empty_i_reg_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_rd_status_flags_ss__parameterized0_10\ : entity is "rd_status_flags_ss";
end \sys_top_s00_data_fifo_452_rd_status_flags_ss__parameterized0_10\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_rd_status_flags_ss__parameterized0_10\ is
  signal c1_n_0 : STD_LOGIC;
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
c1: entity work.\sys_top_s00_data_fifo_452_compare__parameterized0_12\
     port map (
      E(0) => E(0),
      comp1 => comp1,
      \gmux.gm[1].gms.ms_0\ => \gmux.gm[1].gms.ms\,
      \gmux.gm[2].gms.ms_0\ => \gmux.gm[2].gms.ms\,
      \gmux.gm[3].gms.ms_0\ => \gmux.gm[3].gms.ms\,
      \gmux.gm[4].gms.ms_0\ => \gmux.gm[4].gms.ms\,
      \out\ => ram_empty_fb_i,
      ram_empty_fb_i_reg => c1_n_0,
      ram_empty_i_reg => ram_empty_i_reg_0,
      ram_empty_i_reg_0 => ram_empty_i_reg_1,
      ram_empty_i_reg_1(0) => ram_empty_i_reg_2(0)
    );
c2: entity work.\sys_top_s00_data_fifo_452_compare__parameterized0_13\
     port map (
      comp1 => comp1,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_reset_blk_ramfifo is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC
  );
end sys_top_s00_data_fifo_452_reset_blk_ramfifo;

architecture STRUCTURE of sys_top_s00_data_fifo_452_reset_blk_ramfifo is
  signal \grstd1.grst_full.grst_f.rst_d1_i_1_n_0\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
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
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_wr_rst_cc : STD_LOGIC_VECTOR ( 3 downto 0 );
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
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sckt_wr_rst_cc(1),
      I1 => sckt_wr_rst_cc(0),
      I2 => rst_wr_reg2,
      O => AR(0)
    );
\grstd1.grst_full.grst_f.rst_d1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sckt_wr_rst_cc(2),
      I1 => sckt_wr_rst_cc(3),
      I2 => sckt_wr_rst_cc(0),
      I3 => sckt_wr_rst_cc(1),
      I4 => rst_wr_reg2,
      O => \grstd1.grst_full.grst_f.rst_d1_i_1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d1_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_d2,
      I1 => rst_wr_reg2,
      I2 => sckt_wr_rst_cc(0),
      I3 => sckt_wr_rst_cc(1),
      O => p_2_out
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => p_2_out,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_wr_reg2,
      Q => sckt_wr_rst_cc(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => sckt_wr_rst_cc(0),
      Q => sckt_wr_rst_cc(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => sckt_wr_rst_cc(1),
      Q => sckt_wr_rst_cc(2),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => sckt_wr_rst_cc(2),
      Q => sckt_wr_rst_cc(3),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\sys_top_s00_data_fifo_452_xpm_cdc_async_rst__3\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    src_in : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized0\ : entity is "reset_blk_ramfifo";
end \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized0\ is
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
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
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal \^src_in\ : STD_LOGIC;
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
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d3;
  \out\ <= rst_d2;
  src_in <= \^src_in\;
\gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rst_wr_reg2,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      I4 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      O => \^src_in\
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^src_in\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_d2,
      I1 => rst_wr_reg2,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      O => p_2_out
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => p_2_out,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_wr_reg2,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\sys_top_s00_data_fifo_452_xpm_cdc_async_rst__5\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_arst
    );
\ram_empty_fb_i_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I2 => rst_wr_reg2,
      O => AR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized0__xdcDup__1\ is
  port (
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    src_in : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \goreg_dm.dout_i_reg[59]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \goreg_dm.dout_i_reg[59]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized0__xdcDup__1\ : entity is "reset_blk_ramfifo";
end \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized0__xdcDup__1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized0__xdcDup__1\ is
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
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
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal \^src_in\ : STD_LOGIC;
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
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d3;
  \out\ <= rst_d2;
  src_in <= \^src_in\;
\gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rst_wr_reg2,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      I4 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      O => \^src_in\
    );
\goreg_dm.dout_i[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010000000100"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I2 => rst_wr_reg2,
      I3 => \goreg_dm.dout_i_reg[59]\(1),
      I4 => \goreg_dm.dout_i_reg[59]\(0),
      I5 => \goreg_dm.dout_i_reg[59]_0\,
      O => E(0)
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^src_in\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_d2,
      I1 => rst_wr_reg2,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      O => p_2_out
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => p_2_out,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_wr_reg2,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\sys_top_s00_data_fifo_452_xpm_cdc_async_rst__4\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_arst
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I2 => rst_wr_reg2,
      O => AR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized1\ is
  port (
    src_arst : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \gfwd_rev_pipeline1.s_ready_i_reg\ : out STD_LOGIC;
    m_axi_arready_0 : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    arready_pkt : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \gfwd_rev_pipeline1.s_ready_i_reg_0\ : in STD_LOGIC;
    \p_4_out__0\ : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized1\ : entity is "reset_blk_ramfifo";
end \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized1\ is
  signal \grstd1.grst_full.grst_f.rst_d1_i_1__1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "false";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "false";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "false";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "false";
  signal \^src_arst\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "false";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "false";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "false";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  \out\ <= rst_d2;
  src_arst <= \^src_arst\;
\gfwd_rev_pipeline1.m_valid_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33000322"
    )
        port map (
      I0 => \p_4_out__0\,
      I1 => p_2_out,
      I2 => m_axi_arready,
      I3 => \gfwd_rev_pipeline1.s_ready_i_reg_0\,
      I4 => areset_d1,
      O => m_axi_arready_0
    );
\gfwd_rev_pipeline1.s_ready_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FCCCFEEE"
    )
        port map (
      I0 => arready_pkt,
      I1 => areset_d1,
      I2 => m_axi_arready,
      I3 => \gfwd_rev_pipeline1.s_ready_i_reg_0\,
      I4 => \p_4_out__0\,
      I5 => p_2_out,
      O => \gfwd_rev_pipeline1.s_ready_i_reg\
    );
\grstd1.grst_full.grst_f.rst_d1_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rst_wr_reg2,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      I4 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      O => \grstd1.grst_full.grst_f.rst_d1_i_1__1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d1_i_1__1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_d2,
      I1 => rst_wr_reg2,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      O => p_2_out
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => p_2_out,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_wr_reg2,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.sys_top_s00_data_fifo_452_xpm_cdc_async_rst
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => \^src_arst\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \^src_arst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized1__xdcDup__1\ is
  port (
    \out\ : out STD_LOGIC;
    \gfwd_rev_pipeline1.s_ready_i_reg\ : out STD_LOGIC;
    m_axi_awready_0 : out STD_LOGIC;
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    awready_pkt : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \gfwd_rev_pipeline1.s_ready_i_reg_0\ : in STD_LOGIC;
    \p_4_out__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized1__xdcDup__1\ : entity is "reset_blk_ramfifo";
end \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized1__xdcDup__1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized1__xdcDup__1\ is
  signal \grstd1.grst_full.grst_f.rst_d1_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "false";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "false";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "false";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "false";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "false";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "false";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "false";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  \out\ <= rst_d2;
\gfwd_rev_pipeline1.m_valid_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33000322"
    )
        port map (
      I0 => \p_4_out__0\,
      I1 => p_2_out,
      I2 => m_axi_awready,
      I3 => \gfwd_rev_pipeline1.s_ready_i_reg_0\,
      I4 => areset_d1,
      O => m_axi_awready_0
    );
\gfwd_rev_pipeline1.s_ready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FCCCFEEE"
    )
        port map (
      I0 => awready_pkt,
      I1 => areset_d1,
      I2 => m_axi_awready,
      I3 => \gfwd_rev_pipeline1.s_ready_i_reg_0\,
      I4 => \p_4_out__0\,
      I5 => p_2_out,
      O => \gfwd_rev_pipeline1.s_ready_i_reg\
    );
\grstd1.grst_full.grst_f.rst_d1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rst_wr_reg2,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      I4 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      O => \grstd1.grst_full.grst_f.rst_d1_i_1__0_n_0\
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d1_i_1__0_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_d2,
      I1 => rst_wr_reg2,
      I2 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      I3 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      O => p_2_out
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => p_2_out,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_wr_reg2,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[1]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\sys_top_s00_data_fifo_452_xpm_cdc_async_rst__6\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized2\ is
  port (
    \out\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized2\ : entity is "reset_blk_ramfifo";
end \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized2\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dest_rst : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\ : STD_LOGIC;
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
  signal wr_rst_busy_i : STD_LOGIC;
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
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT : string;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \out\ <= rst_d3;
\gpregsm1.curr_fwft_state[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => SR(0)
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
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
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      Q => rst_d2,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rst_d2,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0\,
      Q => rst_d3,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => dest_rst,
      Q => \^q\(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^q\(0),
      Q => \^q\(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^q\(1),
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\: entity work.sys_top_s00_data_fifo_452_xpm_cdc_sync_rst
     port map (
      dest_clk => s_aclk,
      dest_rst => dest_rst,
      src_rst => src_arst
    );
\wr_rst_busy_i_inferred_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      I1 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => wr_rst_busy_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized2__xdcDup__1\ is
  port (
    \out\ : out STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized2__xdcDup__1\ : entity is "reset_blk_ramfifo";
end \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized2__xdcDup__1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized2__xdcDup__1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dest_rst : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\ : STD_LOGIC;
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
  signal wr_rst_busy_i : STD_LOGIC;
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
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT : string;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \grstd1.grst_full.grst_f.rst_d3_reg_0\ <= rst_d3;
  \out\ <= wr_rst_busy_i;
\gpregsm1.curr_fwft_state[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => SR(0)
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
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
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      Q => rst_d2,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rst_d2,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0\,
      Q => rst_d3,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => dest_rst,
      Q => \^q\(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^q\(0),
      Q => \^q\(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^q\(1),
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\: entity work.\sys_top_s00_data_fifo_452_xpm_cdc_sync_rst__2\
     port map (
      dest_clk => s_aclk,
      dest_rst => dest_rst,
      src_rst => src_arst
    );
wr_rst_busy_i_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[3]\,
      I1 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg_n_0_[2]\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => wr_rst_busy_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_wr_logic is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    p_8_out : in STD_LOGIC;
    comp0 : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    PNTR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_wr_logic;

architecture STRUCTURE of sys_top_s00_data_fifo_452_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal comp1 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gwss.wsts\: entity work.sys_top_s00_data_fifo_452_wr_status_flags_ss
     port map (
      E(0) => \^e\(0),
      comp0 => comp0,
      comp1 => comp1,
      \out\ => \out\,
      p_8_out => p_8_out,
      ram_full_i_reg_0 => ram_full_i_reg,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
wpntr: entity work.sys_top_s00_data_fifo_452_wr_bin_cntr
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      PNTR(4 downto 0) => PNTR(4 downto 0),
      Q(4 downto 0) => Q(4 downto 0),
      comp1 => comp1,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_wr_logic_15 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    comp0 : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    I47 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sys_top_s00_data_fifo_452_wr_logic_15 : entity is "wr_logic";
end sys_top_s00_data_fifo_452_wr_logic_15;

architecture STRUCTURE of sys_top_s00_data_fifo_452_wr_logic_15 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal comp1 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gwss.wsts\: entity work.sys_top_s00_data_fifo_452_wr_status_flags_ss_18
     port map (
      E(0) => \^e\(0),
      comp0 => comp0,
      comp1 => comp1,
      \out\ => \out\,
      ram_full_i_reg_0(0) => ram_full_i_reg(0),
      ram_full_i_reg_1 => ram_full_i_reg_0,
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid
    );
wpntr: entity work.sys_top_s00_data_fifo_452_wr_bin_cntr_19
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      I47(4 downto 0) => I47(4 downto 0),
      Q(4 downto 0) => Q(4 downto 0),
      comp1 => comp1,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_wr_status_flags_ss__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    \p_4_out__0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_out : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_wr_status_flags_ss__parameterized0\ : entity is "wr_status_flags_ss";
end \sys_top_s00_data_fifo_452_wr_status_flags_ss__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_wr_status_flags_ss__parameterized0\ is
  signal c1_n_0 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
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
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => ram_full_fb_i,
      O => s_axi_wvalid_0(0)
    );
c0: entity work.\sys_top_s00_data_fifo_452_compare__parameterized0\
     port map (
      comp0 => comp0,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
c1: entity work.\sys_top_s00_data_fifo_452_compare__parameterized0_0\
     port map (
      SR(0) => SR(0),
      comp0 => comp0,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => c1_n_0,
      \out\ => ram_full_fb_i,
      p_8_out => p_8_out,
      ram_full_i_reg => ram_full_i_reg_0,
      s_axi_wvalid => s_axi_wvalid,
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0)
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => DIADI(0),
      I1 => s_axi_wvalid,
      I2 => ram_full_fb_i,
      I3 => \p_4_out__0\,
      O => E(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_fb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_fb_i,
      R => '0'
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_i,
      R => '0'
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axi_wready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_wr_status_flags_ss__parameterized0_5\ is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_out : in STD_LOGIC;
    ram_full_i_reg_0 : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_wr_status_flags_ss__parameterized0_5\ : entity is "wr_status_flags_ss";
end \sys_top_s00_data_fifo_452_wr_status_flags_ss__parameterized0_5\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_wr_status_flags_ss__parameterized0_5\ is
  signal c1_n_0 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
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
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
c0: entity work.\sys_top_s00_data_fifo_452_compare__parameterized0_7\
     port map (
      comp0 => comp0,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
c1: entity work.\sys_top_s00_data_fifo_452_compare__parameterized0_8\
     port map (
      SR(0) => SR(0),
      comp0 => comp0,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => c1_n_0,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => ram_full_fb_i,
      p_8_out => p_8_out,
      ram_full_i_reg => ram_full_i_reg_0,
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => ram_afull_fb
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => m_axi_rready
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_fb_i,
      R => '0'
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_axi_reg_slice is
  port (
    src_arst : out STD_LOGIC;
    \gfwd_rev_pipeline1.m_valid_i_reg_0\ : out STD_LOGIC;
    arready_pkt : out STD_LOGIC;
    \gfwd_rev_pipeline1.storage_data1_reg[59]_0\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    s_aclk : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \p_4_out__0\ : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
end sys_top_s00_data_fifo_452_axi_reg_slice;

architecture STRUCTURE of sys_top_s00_data_fifo_452_axi_reg_slice is
  signal areset_d1 : STD_LOGIC;
  signal \^arready_pkt\ : STD_LOGIC;
  signal extnd_reset : STD_LOGIC;
  signal \^gfwd_rev_pipeline1.m_valid_i_reg_0\ : STD_LOGIC;
  signal \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\ : STD_LOGIC;
  signal rstblk_n_2 : STD_LOGIC;
  signal rstblk_n_3 : STD_LOGIC;
begin
  arready_pkt <= \^arready_pkt\;
  \gfwd_rev_pipeline1.m_valid_i_reg_0\ <= \^gfwd_rev_pipeline1.m_valid_i_reg_0\;
\gfwd_rev_pipeline1.areset_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => extnd_reset,
      Q => areset_d1,
      R => '0'
    );
\gfwd_rev_pipeline1.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rstblk_n_3,
      Q => \^gfwd_rev_pipeline1.m_valid_i_reg_0\,
      R => '0'
    );
\gfwd_rev_pipeline1.s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rstblk_n_2,
      Q => \^arready_pkt\,
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1[59]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gfwd_rev_pipeline1.m_valid_i_reg_0\,
      O => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\
    );
\gfwd_rev_pipeline1.storage_data1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(6),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(6),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(7),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(7),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(8),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(8),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(9),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(9),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(10),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(10),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(11),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(11),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(12),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(12),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(13),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(13),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(14),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(14),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(15),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(15),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(16),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(16),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(17),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(17),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(18),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(18),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(19),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(19),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(20),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(20),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(21),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(21),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(22),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(22),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(23),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(23),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(24),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(24),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(25),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(25),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(26),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(26),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(27),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(27),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(28),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(28),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(29),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(29),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(30),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(30),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(31),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(31),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(32),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(32),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(33),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(33),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(34),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(34),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(35),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(35),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(36),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(36),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(37),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(37),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(38),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(38),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(39),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(39),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(40),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(40),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(41),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(41),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(42),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(42),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(43),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(43),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(44),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(44),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(45),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(45),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(0),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(0),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(46),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(46),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(47),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(47),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(48),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(48),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(49),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(49),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(50),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(50),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(51),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(51),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(52),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(52),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(53),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(53),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(54),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(54),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(55),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(55),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(1),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(1),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(2),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(2),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(3),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(3),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(4),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(4),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1__0_n_0\,
      D => D(5),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(5),
      R => '0'
    );
rstblk: entity work.\sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized1\
     port map (
      areset_d1 => areset_d1,
      arready_pkt => \^arready_pkt\,
      \gfwd_rev_pipeline1.s_ready_i_reg\ => rstblk_n_2,
      \gfwd_rev_pipeline1.s_ready_i_reg_0\ => \^gfwd_rev_pipeline1.m_valid_i_reg_0\,
      m_axi_arready => m_axi_arready,
      m_axi_arready_0 => rstblk_n_3,
      \out\ => extnd_reset,
      \p_4_out__0\ => \p_4_out__0\,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_axi_reg_slice__xdcDup__1\ is
  port (
    \gfwd_rev_pipeline1.m_valid_i_reg_0\ : out STD_LOGIC;
    awready_pkt : out STD_LOGIC;
    \gfwd_rev_pipeline1.storage_data1_reg[59]_0\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \p_4_out__0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_axi_reg_slice__xdcDup__1\ : entity is "axi_reg_slice";
end \sys_top_s00_data_fifo_452_axi_reg_slice__xdcDup__1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_axi_reg_slice__xdcDup__1\ is
  signal areset_d1 : STD_LOGIC;
  signal \^awready_pkt\ : STD_LOGIC;
  signal extnd_reset : STD_LOGIC;
  signal \^gfwd_rev_pipeline1.m_valid_i_reg_0\ : STD_LOGIC;
  signal \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\ : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal rstblk_n_2 : STD_LOGIC;
begin
  awready_pkt <= \^awready_pkt\;
  \gfwd_rev_pipeline1.m_valid_i_reg_0\ <= \^gfwd_rev_pipeline1.m_valid_i_reg_0\;
\gfwd_rev_pipeline1.areset_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => extnd_reset,
      Q => areset_d1,
      R => '0'
    );
\gfwd_rev_pipeline1.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rstblk_n_2,
      Q => \^gfwd_rev_pipeline1.m_valid_i_reg_0\,
      R => '0'
    );
\gfwd_rev_pipeline1.s_ready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rstblk_n_1,
      Q => \^awready_pkt\,
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1[59]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gfwd_rev_pipeline1.m_valid_i_reg_0\,
      O => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\
    );
\gfwd_rev_pipeline1.storage_data1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(6),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(6),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(7),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(7),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(8),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(8),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(9),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(9),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(10),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(10),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(11),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(11),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(12),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(12),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(13),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(13),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(14),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(14),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(15),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(15),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(16),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(16),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(17),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(17),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(18),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(18),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(19),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(19),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(20),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(20),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(21),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(21),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(22),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(22),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(23),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(23),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(24),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(24),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(25),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(25),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(26),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(26),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(27),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(27),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(28),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(28),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(29),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(29),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(30),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(30),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(31),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(31),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(32),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(32),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(33),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(33),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(34),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(34),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(35),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(35),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(36),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(36),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(37),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(37),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(38),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(38),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(39),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(39),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(40),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(40),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(41),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(41),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(42),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(42),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(43),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(43),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(44),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(44),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(45),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(45),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(0),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(0),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(46),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(46),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(47),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(47),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(48),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(48),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(49),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(49),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(50),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(50),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(51),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(51),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(52),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(52),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(53),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(53),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(54),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(54),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(55),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(55),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(1),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(1),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(2),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(2),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(3),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(3),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(4),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(4),
      R => '0'
    );
\gfwd_rev_pipeline1.storage_data1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gfwd_rev_pipeline1.storage_data1[59]_i_1_n_0\,
      D => D(5),
      Q => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(5),
      R => '0'
    );
rstblk: entity work.\sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized1__xdcDup__1\
     port map (
      areset_d1 => areset_d1,
      awready_pkt => \^awready_pkt\,
      \gfwd_rev_pipeline1.s_ready_i_reg\ => rstblk_n_1,
      \gfwd_rev_pipeline1.s_ready_i_reg_0\ => \^gfwd_rev_pipeline1.m_valid_i_reg_0\,
      m_axi_awready => m_axi_awready,
      m_axi_awready_0 => rstblk_n_2,
      \out\ => extnd_reset,
      \p_4_out__0\ => \p_4_out__0\,
      s_aclk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_blk_mem_gen_generic_cstr is
  port (
    D : out STD_LOGIC_VECTOR ( 74 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_blk_mem_gen_generic_cstr;

architecture STRUCTURE of sys_top_s00_data_fifo_452_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.sys_top_s00_data_fifo_452_blk_mem_gen_prim_width
     port map (
      D(35 downto 0) => D(35 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0),
      DIADI(15 downto 0) => DIADI(15 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      s_aclk => s_aclk,
      s_axi_wdata(18 downto 0) => s_axi_wdata(18 downto 0),
      s_axi_wstrb(0) => s_axi_wstrb(0)
    );
\ramloop[1].ram.r\: entity work.\sys_top_s00_data_fifo_452_blk_mem_gen_prim_width__parameterized0\
     port map (
      D(38 downto 0) => D(74 downto 36),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      s_aclk => s_aclk,
      s_axi_wdata(37 downto 0) => s_axi_wdata(56 downto 19),
      s_axi_wid(0) => s_axi_wid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_blk_mem_gen_generic_cstr__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    POR_B : out STD_LOGIC;
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_blk_mem_gen_generic_cstr__parameterized0\ : entity is "blk_mem_gen_generic_cstr";
end \sys_top_s00_data_fifo_452_blk_mem_gen_generic_cstr__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_blk_mem_gen_generic_cstr__parameterized0\ is
begin
\ramloop[0].ram.r\: entity work.\sys_top_s00_data_fifo_452_blk_mem_gen_prim_width__parameterized1\
     port map (
      D(68 downto 0) => D(68 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\,
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg_0\ => \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_fifo_generator_ramfifo is
  port (
    \out\ : out STD_LOGIC;
    src_in : out STD_LOGIC;
    \goreg_dm.dout_i_reg[59]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_4_out__0\ : out STD_LOGIC;
    \gfwd_rev_pipeline1.s_ready_i_reg\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \goreg_dm.dout_i_reg[26]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \goreg_dm.dout_i_reg[24]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_fifo_free_space : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_rready : in STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I555 : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
end sys_top_s00_data_fifo_452_fifo_generator_ramfifo;

architecture STRUCTURE of sys_top_s00_data_fifo_452_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gl0.rd_n_1\ : STD_LOGIC;
  signal \^goreg_dm.dout_i_reg[59]\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \gwss.wsts/comp0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_19_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_3 : STD_LOGIC;
begin
  \goreg_dm.dout_i_reg[59]\(55 downto 0) <= \^goreg_dm.dout_i_reg[59]\(55 downto 0);
  \out\ <= \^out\;
\gntv_or_sync_fifo.gl0.rd\: entity work.sys_top_s00_data_fifo_452_rd_logic_14
     port map (
      AR(0) => rstblk_n_3,
      CO(0) => CO(0),
      DI(0) => DI(0),
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      Q(5 downto 0) => Q(9 downto 4),
      S(0) => S(0),
      \_inferred__0/i__carry\(0) => \^goreg_dm.dout_i_reg[59]\(19),
      arready_pkt => arready_pkt,
      comp0 => \gwss.wsts/comp0\,
      empty_fwft_i_reg(0) => E(0),
      empty_fwft_i_reg_0(0) => ram_rd_en_i,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(3 downto 2),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3 downto 2),
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out(4 downto 0),
      \gfwd_rev_pipeline1.s_ready_i_reg\(0) => \goreg_dm.dout_i_reg[26]\(0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => p_8_out,
      \out\ => \^out\,
      \p_4_out__0\ => \p_4_out__0\,
      \ram_empty_fb_i_i_4__0\(4 downto 0) => p_12_out(4 downto 0),
      ram_empty_fb_i_reg(0) => p_19_out,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.sys_top_s00_data_fifo_452_wr_logic_15
     port map (
      AR(0) => rstblk_n_3,
      E(0) => p_19_out,
      I47(4 downto 0) => p_0_out(4 downto 0),
      Q(4 downto 0) => p_12_out(4 downto 0),
      comp0 => \gwss.wsts/comp0\,
      \out\ => rst_full_ff_i,
      ram_full_i_reg(0) => p_8_out,
      ram_full_i_reg_0 => rst_full_gen_i,
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid
    );
\gntv_or_sync_fifo.mem\: entity work.sys_top_s00_data_fifo_452_memory_16
     port map (
      CO(0) => CO(0),
      D(9 downto 0) => D(9 downto 0),
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_1\,
      I40 => p_19_out,
      I555(55 downto 0) => I555(55 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      arready_pkt => arready_pkt,
      count_d1(4 downto 0) => p_0_out(4 downto 0),
      count_d10_in(4 downto 0) => p_12_out(4 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[2]\(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(1 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_0\(3 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\ => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]_0\(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(1 downto 0),
      \gfwd_rev_pipeline1.s_ready_i_reg\ => \gfwd_rev_pipeline1.s_ready_i_reg\,
      \goreg_dm.dout_i_reg[24]_0\(0) => \goreg_dm.dout_i_reg[24]\(0),
      \goreg_dm.dout_i_reg[26]_0\(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(1 downto 0),
      \goreg_dm.dout_i_reg[26]_1\(2 downto 0) => \goreg_dm.dout_i_reg[26]\(3 downto 1),
      \goreg_dm.dout_i_reg[59]_0\(55 downto 0) => \^goreg_dm.dout_i_reg[59]\(55 downto 0),
      \gpr1.dout_i_reg[4]\(0) => ram_rd_en_i,
      \out\ => \^out\,
      rd_fifo_free_space(9 downto 0) => rd_fifo_free_space(9 downto 0),
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready
    );
rstblk: entity work.\sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized0\
     port map (
      AR(0) => rstblk_n_3,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_gen_i,
      \out\ => rst_full_ff_i,
      s_aclk => s_aclk,
      src_arst => src_arst,
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__xdcDup__1\ is
  port (
    src_in : out STD_LOGIC;
    empty_fwft_i_reg : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \goreg_dm.dout_i_reg[59]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \out\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 0 to 0 );
    awready_pkt : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[55]\ : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__xdcDup__1\ : entity is "fifo_generator_ramfifo";
end \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__xdcDup__1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__xdcDup__1\ is
  signal \^empty_fwft_i_reg\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_0\ : STD_LOGIC;
  signal \gr1.gr1_int.rfwft/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gwss.wsts/comp0\ : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_19_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_3 : STD_LOGIC;
  signal rstblk_n_4 : STD_LOGIC;
begin
  empty_fwft_i_reg <= \^empty_fwft_i_reg\;
\gntv_or_sync_fifo.gl0.rd\: entity work.sys_top_s00_data_fifo_452_rd_logic
     port map (
      AR(0) => rstblk_n_4,
      D(8 downto 0) => D(8 downto 0),
      DI(0) => DI(0),
      DIADI(0) => DIADI(0),
      E(0) => ram_rd_en_i,
      Q(9 downto 0) => Q(9 downto 0),
      S(2 downto 0) => S(2 downto 0),
      awready_pkt => awready_pkt,
      comp0 => \gwss.wsts/comp0\,
      empty_fwft_i_reg => \^empty_fwft_i_reg\,
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]\ => \out\,
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\(3 downto 0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\(3 downto 0),
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\(0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\(0),
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \out\(1) => \gntv_or_sync_fifo.gl0.rd_n_0\,
      \out\(0) => \gr1.gr1_int.rfwft/p_0_in\(0),
      p_8_out => p_8_out,
      ram_empty_fb_i_i_4(4 downto 0) => p_12_out(4 downto 0),
      ram_empty_fb_i_reg(0) => p_19_out,
      s_aclk => s_aclk,
      s_axi_wvalid => s_axi_wvalid
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.sys_top_s00_data_fifo_452_wr_logic
     port map (
      AR(0) => rstblk_n_4,
      E(0) => p_19_out,
      PNTR(4 downto 0) => p_0_out_0(4 downto 0),
      Q(4 downto 0) => p_12_out(4 downto 0),
      comp0 => \gwss.wsts/comp0\,
      \out\ => rst_full_ff_i,
      p_8_out => p_8_out,
      ram_full_i_reg => rst_full_gen_i,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
\gntv_or_sync_fifo.mem\: entity work.sys_top_s00_data_fifo_452_memory
     port map (
      E(0) => rstblk_n_3,
      EN => p_19_out,
      count_d1(4 downto 0) => p_0_out_0(4 downto 0),
      count_d10_in(4 downto 0) => p_12_out(4 downto 0),
      \goreg_dm.dout_i_reg[59]_0\(55 downto 0) => \goreg_dm.dout_i_reg[59]\(55 downto 0),
      \gpr1.dout_i_reg[4]\(0) => ram_rd_en_i,
      \gpr1.dout_i_reg[55]\(55 downto 0) => \gpr1.dout_i_reg[55]\(55 downto 0),
      s_aclk => s_aclk
    );
rstblk: entity work.\sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized0__xdcDup__1\
     port map (
      AR(0) => rstblk_n_4,
      E(0) => rstblk_n_3,
      \goreg_dm.dout_i_reg[59]\(1) => \gntv_or_sync_fifo.gl0.rd_n_0\,
      \goreg_dm.dout_i_reg[59]\(0) => \gr1.gr1_int.rfwft/p_0_in\(0),
      \goreg_dm.dout_i_reg[59]_0\ => \^empty_fwft_i_reg\,
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_gen_i,
      \out\ => rst_full_ff_i,
      s_aclk => s_aclk,
      src_arst => src_arst,
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_rd_logic__parameterized0\ is
  port (
    ENB_I : out STD_LOGIC;
    p_8_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    \gc0.count_d1_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gmux.gm[1].gms.ms\ : in STD_LOGIC;
    \gmux.gm[2].gms.ms\ : in STD_LOGIC;
    \gmux.gm[3].gms.ms\ : in STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    \gc0.count_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ENB_dly_D : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_rd_logic__parameterized0\ : entity is "rd_logic";
end \sys_top_s00_data_fifo_452_rd_logic__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_rd_logic__parameterized0\ is
  signal p_2_out : STD_LOGIC;
  signal \^p_8_out\ : STD_LOGIC;
begin
  p_8_out <= \^p_8_out\;
\gr1.gr1_int.rfwft\: entity work.\sys_top_s00_data_fifo_452_rd_fwft__parameterized0\
     port map (
      E(0) => \^p_8_out\,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      Q(1 downto 0) => Q(1 downto 0),
      \gpregsm1.user_valid_reg_0\ => \gc0.count_reg[0]\,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\(0) => E(0),
      \out\ => p_2_out,
      s_aclk => s_aclk
    );
\grss.rsts\: entity work.\sys_top_s00_data_fifo_452_rd_status_flags_ss__parameterized0\
     port map (
      E(0) => \^p_8_out\,
      \gmux.gm[1].gms.ms\ => \gmux.gm[1].gms.ms\,
      \gmux.gm[2].gms.ms\ => \gmux.gm[2].gms.ms\,
      \gmux.gm[3].gms.ms\ => \gmux.gm[3].gms.ms\,
      \gmux.gm[4].gms.ms\ => \gmux.gm[4].gms.ms\,
      \out\ => p_2_out,
      ram_empty_i_reg_0 => ram_empty_i_reg,
      ram_empty_i_reg_1 => \gc0.count_reg[0]\,
      ram_empty_i_reg_2(0) => ram_empty_i_reg_0(0),
      s_aclk => s_aclk,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
rpntr: entity work.\sys_top_s00_data_fifo_452_rd_bin_cntr__parameterized0\
     port map (
      E(0) => \^p_8_out\,
      Q(8 downto 0) => \gc0.count_reg[8]\(8 downto 0),
      \gc0.count_d1_reg[8]_0\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gc0.count_reg[0]_0\ => \gc0.count_reg[0]\,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_rd_logic__parameterized0_3\ is
  port (
    \out\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    p_8_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    \gc0.count_d1_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gmux.gm[1].gms.ms\ : in STD_LOGIC;
    \gmux.gm[2].gms.ms\ : in STD_LOGIC;
    \gmux.gm[3].gms.ms\ : in STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC;
    ram_empty_i_reg : in STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[8]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC;
    \_inferred__0/i__carry__0\ : in STD_LOGIC;
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_bm.dout_i_reg[68]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC;
    ram_empty_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_rd_logic__parameterized0_3\ : entity is "rd_logic";
end \sys_top_s00_data_fifo_452_rd_logic__parameterized0_3\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_rd_logic__parameterized0_3\ is
  signal p_2_out : STD_LOGIC;
  signal \^p_8_out\ : STD_LOGIC;
begin
  p_8_out <= \^p_8_out\;
\gr1.gr1_int.rfwft\: entity work.\sys_top_s00_data_fifo_452_rd_fwft__parameterized0_9\
     port map (
      CO(0) => CO(0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => p_2_out,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\,
      E(0) => \^p_8_out\,
      ENB_I => ENB_I,
      Q(0) => Q(0),
      S(0) => S(0),
      \_inferred__0/i__carry__0\ => \_inferred__0/i__carry__0\,
      arready_pkt => arready_pkt,
      \goreg_bm.dout_i_reg[68]\(1 downto 0) => \goreg_bm.dout_i_reg[68]\(1 downto 0),
      \gpregsm1.user_valid_reg_0\ => \gc0.count_d1_reg[8]_0\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_cc_reg[0]\(0) => E(0),
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\grss.rsts\: entity work.\sys_top_s00_data_fifo_452_rd_status_flags_ss__parameterized0_10\
     port map (
      E(0) => \^p_8_out\,
      \gmux.gm[1].gms.ms\ => \gmux.gm[1].gms.ms\,
      \gmux.gm[2].gms.ms\ => \gmux.gm[2].gms.ms\,
      \gmux.gm[3].gms.ms\ => \gmux.gm[3].gms.ms\,
      \gmux.gm[4].gms.ms\ => \gmux.gm[4].gms.ms\,
      \out\ => p_2_out,
      ram_empty_i_reg_0 => ram_empty_i_reg,
      ram_empty_i_reg_1 => \gc0.count_d1_reg[8]_0\,
      ram_empty_i_reg_2(0) => ram_empty_i_reg_0(0),
      s_aclk => s_aclk,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
rpntr: entity work.\sys_top_s00_data_fifo_452_rd_bin_cntr__parameterized0_11\
     port map (
      E(0) => \^p_8_out\,
      Q(8 downto 0) => \gc0.count_reg[8]\(8 downto 0),
      \gc0.count_d1_reg[8]_0\(8 downto 0) => \gc0.count_d1_reg[8]\(8 downto 0),
      \gc0.count_d1_reg[8]_1\ => \gc0.count_d1_reg[8]_0\,
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_wr_logic__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[0]\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[6]\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    \p_4_out__0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_out : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_wr_logic__parameterized0\ : entity is "wr_logic";
end \sys_top_s00_data_fifo_452_wr_logic__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_wr_logic__parameterized0\ is
  signal \c0/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s_axi_wvalid_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  s_axi_wvalid_0(0) <= \^s_axi_wvalid_0\(0);
\gwss.wsts\: entity work.\sys_top_s00_data_fifo_452_wr_status_flags_ss__parameterized0\
     port map (
      DIADI(0) => DIADI(0),
      E(0) => E(0),
      SR(0) => SR(0),
      \out\ => \out\,
      \p_4_out__0\ => \p_4_out__0\,
      p_8_out => p_8_out,
      ram_full_i_reg_0 => ram_full_i_reg,
      s_aclk => s_aclk,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0(0) => \^s_axi_wvalid_0\(0),
      v1_reg(4 downto 0) => \c0/v1_reg\(4 downto 0),
      v1_reg_0(4 downto 0) => \c1/v1_reg\(4 downto 0)
    );
wpntr: entity work.\sys_top_s00_data_fifo_452_wr_bin_cntr__parameterized0\
     port map (
      E(0) => \^s_axi_wvalid_0\(0),
      Q(8 downto 0) => Q(8 downto 0),
      SR(0) => SR(0),
      \gcc0.gc0.count_d1_reg[0]_0\ => \gcc0.gc0.count_d1_reg[0]\,
      \gcc0.gc0.count_d1_reg[2]_0\ => \gcc0.gc0.count_d1_reg[2]\,
      \gcc0.gc0.count_d1_reg[4]_0\ => \gcc0.gc0.count_d1_reg[4]\,
      \gcc0.gc0.count_d1_reg[6]_0\ => \gcc0.gc0.count_d1_reg[6]\,
      \gcc0.gc0.count_d1_reg[8]_0\ => \gcc0.gc0.count_d1_reg[8]\,
      \gmux.gm[4].gms.ms\(8 downto 0) => \gmux.gm[4].gms.ms\(8 downto 0),
      \gmux.gm[4].gms.ms_0\(8 downto 0) => \gmux.gm[4].gms.ms_0\(8 downto 0),
      s_aclk => s_aclk,
      v1_reg(4 downto 0) => v1_reg(4 downto 0),
      v1_reg_0(4 downto 0) => \c0/v1_reg\(4 downto 0),
      v1_reg_1(4 downto 0) => \c1/v1_reg\(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_wr_logic__parameterized0_4\ is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[0]\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[6]\ : out STD_LOGIC;
    \gcc0.gc0.count_d1_reg[8]\ : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_out : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_wr_logic__parameterized0_4\ : entity is "wr_logic";
end \sys_top_s00_data_fifo_452_wr_logic__parameterized0_4\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_wr_logic__parameterized0_4\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \c0/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  E(0) <= \^e\(0);
\gwss.wsts\: entity work.\sys_top_s00_data_fifo_452_wr_status_flags_ss__parameterized0_5\
     port map (
      E(0) => \^e\(0),
      SR(0) => SR(0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      p_8_out => p_8_out,
      ram_full_i_reg_0 => ram_full_i_reg,
      s_aclk => s_aclk,
      v1_reg(4 downto 0) => \c0/v1_reg\(4 downto 0),
      v1_reg_0(4 downto 0) => \c1/v1_reg\(4 downto 0)
    );
wpntr: entity work.\sys_top_s00_data_fifo_452_wr_bin_cntr__parameterized0_6\
     port map (
      E(0) => \^e\(0),
      Q(8 downto 0) => Q(8 downto 0),
      SR(0) => SR(0),
      \gcc0.gc0.count_d1_reg[0]_0\ => \gcc0.gc0.count_d1_reg[0]\,
      \gcc0.gc0.count_d1_reg[2]_0\ => \gcc0.gc0.count_d1_reg[2]\,
      \gcc0.gc0.count_d1_reg[4]_0\ => \gcc0.gc0.count_d1_reg[4]\,
      \gcc0.gc0.count_d1_reg[6]_0\ => \gcc0.gc0.count_d1_reg[6]\,
      \gcc0.gc0.count_d1_reg[8]_0\ => \gcc0.gc0.count_d1_reg[8]\,
      \gmux.gm[4].gms.ms\(8 downto 0) => \gmux.gm[4].gms.ms\(8 downto 0),
      \gmux.gm[4].gms.ms_0\(8 downto 0) => \gmux.gm[4].gms.ms_0\(8 downto 0),
      s_aclk => s_aclk,
      v1_reg(4 downto 0) => v1_reg(4 downto 0),
      v1_reg_0(4 downto 0) => \c0/v1_reg\(4 downto 0),
      v1_reg_1(4 downto 0) => \c1/v1_reg\(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_blk_mem_gen_top is
  port (
    D : out STD_LOGIC_VECTOR ( 74 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_blk_mem_gen_top;

architecture STRUCTURE of sys_top_s00_data_fifo_452_blk_mem_gen_top is
begin
\valid.cstr\: entity work.sys_top_s00_data_fifo_452_blk_mem_gen_generic_cstr
     port map (
      D(74 downto 0) => D(74 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0),
      DIADI(15 downto 0) => DIADI(15 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      s_aclk => s_aclk,
      s_axi_wdata(56 downto 0) => s_axi_wdata(56 downto 0),
      s_axi_wid(0) => s_axi_wid(0),
      s_axi_wstrb(0) => s_axi_wstrb(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_blk_mem_gen_top__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    POR_B : out STD_LOGIC;
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_blk_mem_gen_top__parameterized0\ : entity is "blk_mem_gen_top";
end \sys_top_s00_data_fifo_452_blk_mem_gen_top__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_blk_mem_gen_top__parameterized0\ is
begin
\valid.cstr\: entity work.\sys_top_s00_data_fifo_452_blk_mem_gen_generic_cstr__parameterized0\
     port map (
      D(68 downto 0) => D(68 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\,
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ => \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_fifo_generator_top is
  port (
    \out\ : out STD_LOGIC;
    src_in : out STD_LOGIC;
    \goreg_dm.dout_i_reg[59]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p_4_out__0\ : out STD_LOGIC;
    \gfwd_rev_pipeline1.s_ready_i_reg\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \goreg_dm.dout_i_reg[26]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \goreg_dm.dout_i_reg[24]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_fifo_free_space : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_rready : in STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I555 : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
end sys_top_s00_data_fifo_452_fifo_generator_top;

architecture STRUCTURE of sys_top_s00_data_fifo_452_fifo_generator_top is
begin
\grf.rf\: entity work.sys_top_s00_data_fifo_452_fifo_generator_ramfifo
     port map (
      CO(0) => CO(0),
      D(9 downto 0) => D(9 downto 0),
      DI(0) => DI(0),
      E(0) => E(0),
      I555(55 downto 0) => I555(55 downto 0),
      Q(9 downto 0) => Q(9 downto 0),
      S(0) => S(0),
      arready_pkt => arready_pkt,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(3 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(3 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_0\(3 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_0\(3 downto 0),
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(1 downto 0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(1 downto 0),
      \gfwd_rev_pipeline1.s_ready_i_reg\ => \gfwd_rev_pipeline1.s_ready_i_reg\,
      \goreg_dm.dout_i_reg[24]\(0) => \goreg_dm.dout_i_reg[24]\(0),
      \goreg_dm.dout_i_reg[26]\(3 downto 0) => \goreg_dm.dout_i_reg[26]\(3 downto 0),
      \goreg_dm.dout_i_reg[59]\(55 downto 0) => \goreg_dm.dout_i_reg[59]\(55 downto 0),
      \out\ => \out\,
      \p_4_out__0\ => \p_4_out__0\,
      rd_fifo_free_space(9 downto 0) => rd_fifo_free_space(9 downto 0),
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rready => s_axi_rready,
      src_arst => src_arst,
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_fifo_generator_top__xdcDup__1\ is
  port (
    src_in : out STD_LOGIC;
    \p_4_out__0\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \goreg_dm.dout_i_reg[59]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \out\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 0 to 0 );
    awready_pkt : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[55]\ : in STD_LOGIC_VECTOR ( 55 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_fifo_generator_top__xdcDup__1\ : entity is "fifo_generator_top";
end \sys_top_s00_data_fifo_452_fifo_generator_top__xdcDup__1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_fifo_generator_top__xdcDup__1\ is
begin
\grf.rf\: entity work.\sys_top_s00_data_fifo_452_fifo_generator_ramfifo__xdcDup__1\
     port map (
      D(8 downto 0) => D(8 downto 0),
      DI(0) => DI(0),
      DIADI(0) => DIADI(0),
      Q(9 downto 0) => Q(9 downto 0),
      S(2 downto 0) => S(2 downto 0),
      awready_pkt => awready_pkt,
      empty_fwft_i_reg => \p_4_out__0\,
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\(3 downto 0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\(3 downto 0),
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\(0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\(0),
      \goreg_dm.dout_i_reg[59]\(55 downto 0) => \goreg_dm.dout_i_reg[59]\(55 downto 0),
      \gpr1.dout_i_reg[55]\(55 downto 0) => \gpr1.dout_i_reg[55]\(55 downto 0),
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid,
      src_arst => src_arst,
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 74 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3_synth;

architecture STRUCTURE of sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.sys_top_s00_data_fifo_452_blk_mem_gen_top
     port map (
      D(74 downto 0) => D(74 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0),
      DIADI(15 downto 0) => DIADI(15 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      s_aclk => s_aclk,
      s_axi_wdata(56 downto 0) => s_axi_wdata(56 downto 0),
      s_axi_wid(0) => s_axi_wid(0),
      s_axi_wstrb(0) => s_axi_wstrb(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3_synth__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    POR_B : out STD_LOGIC;
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3_synth__parameterized0\ : entity is "blk_mem_gen_v8_4_3_synth";
end \sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3_synth__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3_synth__parameterized0\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\sys_top_s00_data_fifo_452_blk_mem_gen_top__parameterized0\
     port map (
      D(68 downto 0) => D(68 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\,
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ => \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 74 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3;

architecture STRUCTURE of sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3 is
begin
inst_blk_mem_gen: entity work.sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3_synth
     port map (
      D(74 downto 0) => D(74 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0),
      DIADI(15 downto 0) => DIADI(15 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      s_aclk => s_aclk,
      s_axi_wdata(56 downto 0) => s_axi_wdata(56 downto 0),
      s_axi_wid(0) => s_axi_wid(0),
      s_axi_wstrb(0) => s_axi_wstrb(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 68 downto 0 );
    POR_B : out STD_LOGIC;
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3__parameterized1\ : entity is "blk_mem_gen_v8_4_3";
end \sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3__parameterized1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3__parameterized1\ is
begin
inst_blk_mem_gen: entity work.\sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3_synth__parameterized0\
     port map (
      D(68 downto 0) => D(68 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\,
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ => \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_memory__parameterized0\ is
  port (
    \goreg_bm.dout_i_reg[74]_0\ : out STD_LOGIC_VECTOR ( 74 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    DIADI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_memory__parameterized0\ : entity is "memory";
end \sys_top_s00_data_fifo_452_memory__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_memory__parameterized0\ is
  signal doutb : STD_LOGIC_VECTOR ( 74 downto 0 );
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3
     port map (
      D(74 downto 0) => doutb(74 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0),
      DIADI(15 downto 0) => DIADI(15 downto 0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      s_aclk => s_aclk,
      s_axi_wdata(56 downto 0) => s_axi_wdata(56 downto 0),
      s_axi_wid(0) => s_axi_wid(0),
      s_axi_wstrb(0) => s_axi_wstrb(0)
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(0),
      Q => \goreg_bm.dout_i_reg[74]_0\(0),
      R => '0'
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(10),
      Q => \goreg_bm.dout_i_reg[74]_0\(10),
      R => '0'
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(11),
      Q => \goreg_bm.dout_i_reg[74]_0\(11),
      R => '0'
    );
\goreg_bm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(12),
      Q => \goreg_bm.dout_i_reg[74]_0\(12),
      R => '0'
    );
\goreg_bm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(13),
      Q => \goreg_bm.dout_i_reg[74]_0\(13),
      R => '0'
    );
\goreg_bm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(14),
      Q => \goreg_bm.dout_i_reg[74]_0\(14),
      R => '0'
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(15),
      Q => \goreg_bm.dout_i_reg[74]_0\(15),
      R => '0'
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(16),
      Q => \goreg_bm.dout_i_reg[74]_0\(16),
      R => '0'
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(17),
      Q => \goreg_bm.dout_i_reg[74]_0\(17),
      R => '0'
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(18),
      Q => \goreg_bm.dout_i_reg[74]_0\(18),
      R => '0'
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(19),
      Q => \goreg_bm.dout_i_reg[74]_0\(19),
      R => '0'
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(1),
      Q => \goreg_bm.dout_i_reg[74]_0\(1),
      R => '0'
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(20),
      Q => \goreg_bm.dout_i_reg[74]_0\(20),
      R => '0'
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(21),
      Q => \goreg_bm.dout_i_reg[74]_0\(21),
      R => '0'
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(22),
      Q => \goreg_bm.dout_i_reg[74]_0\(22),
      R => '0'
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(23),
      Q => \goreg_bm.dout_i_reg[74]_0\(23),
      R => '0'
    );
\goreg_bm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(24),
      Q => \goreg_bm.dout_i_reg[74]_0\(24),
      R => '0'
    );
\goreg_bm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(25),
      Q => \goreg_bm.dout_i_reg[74]_0\(25),
      R => '0'
    );
\goreg_bm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(26),
      Q => \goreg_bm.dout_i_reg[74]_0\(26),
      R => '0'
    );
\goreg_bm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(27),
      Q => \goreg_bm.dout_i_reg[74]_0\(27),
      R => '0'
    );
\goreg_bm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(28),
      Q => \goreg_bm.dout_i_reg[74]_0\(28),
      R => '0'
    );
\goreg_bm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(29),
      Q => \goreg_bm.dout_i_reg[74]_0\(29),
      R => '0'
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(2),
      Q => \goreg_bm.dout_i_reg[74]_0\(2),
      R => '0'
    );
\goreg_bm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(30),
      Q => \goreg_bm.dout_i_reg[74]_0\(30),
      R => '0'
    );
\goreg_bm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(31),
      Q => \goreg_bm.dout_i_reg[74]_0\(31),
      R => '0'
    );
\goreg_bm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(32),
      Q => \goreg_bm.dout_i_reg[74]_0\(32),
      R => '0'
    );
\goreg_bm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(33),
      Q => \goreg_bm.dout_i_reg[74]_0\(33),
      R => '0'
    );
\goreg_bm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(34),
      Q => \goreg_bm.dout_i_reg[74]_0\(34),
      R => '0'
    );
\goreg_bm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(35),
      Q => \goreg_bm.dout_i_reg[74]_0\(35),
      R => '0'
    );
\goreg_bm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(36),
      Q => \goreg_bm.dout_i_reg[74]_0\(36),
      R => '0'
    );
\goreg_bm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(37),
      Q => \goreg_bm.dout_i_reg[74]_0\(37),
      R => '0'
    );
\goreg_bm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(38),
      Q => \goreg_bm.dout_i_reg[74]_0\(38),
      R => '0'
    );
\goreg_bm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(39),
      Q => \goreg_bm.dout_i_reg[74]_0\(39),
      R => '0'
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(3),
      Q => \goreg_bm.dout_i_reg[74]_0\(3),
      R => '0'
    );
\goreg_bm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(40),
      Q => \goreg_bm.dout_i_reg[74]_0\(40),
      R => '0'
    );
\goreg_bm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(41),
      Q => \goreg_bm.dout_i_reg[74]_0\(41),
      R => '0'
    );
\goreg_bm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(42),
      Q => \goreg_bm.dout_i_reg[74]_0\(42),
      R => '0'
    );
\goreg_bm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(43),
      Q => \goreg_bm.dout_i_reg[74]_0\(43),
      R => '0'
    );
\goreg_bm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(44),
      Q => \goreg_bm.dout_i_reg[74]_0\(44),
      R => '0'
    );
\goreg_bm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(45),
      Q => \goreg_bm.dout_i_reg[74]_0\(45),
      R => '0'
    );
\goreg_bm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(46),
      Q => \goreg_bm.dout_i_reg[74]_0\(46),
      R => '0'
    );
\goreg_bm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(47),
      Q => \goreg_bm.dout_i_reg[74]_0\(47),
      R => '0'
    );
\goreg_bm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(48),
      Q => \goreg_bm.dout_i_reg[74]_0\(48),
      R => '0'
    );
\goreg_bm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(49),
      Q => \goreg_bm.dout_i_reg[74]_0\(49),
      R => '0'
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(4),
      Q => \goreg_bm.dout_i_reg[74]_0\(4),
      R => '0'
    );
\goreg_bm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(50),
      Q => \goreg_bm.dout_i_reg[74]_0\(50),
      R => '0'
    );
\goreg_bm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(51),
      Q => \goreg_bm.dout_i_reg[74]_0\(51),
      R => '0'
    );
\goreg_bm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(52),
      Q => \goreg_bm.dout_i_reg[74]_0\(52),
      R => '0'
    );
\goreg_bm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(53),
      Q => \goreg_bm.dout_i_reg[74]_0\(53),
      R => '0'
    );
\goreg_bm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(54),
      Q => \goreg_bm.dout_i_reg[74]_0\(54),
      R => '0'
    );
\goreg_bm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(55),
      Q => \goreg_bm.dout_i_reg[74]_0\(55),
      R => '0'
    );
\goreg_bm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(56),
      Q => \goreg_bm.dout_i_reg[74]_0\(56),
      R => '0'
    );
\goreg_bm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(57),
      Q => \goreg_bm.dout_i_reg[74]_0\(57),
      R => '0'
    );
\goreg_bm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(58),
      Q => \goreg_bm.dout_i_reg[74]_0\(58),
      R => '0'
    );
\goreg_bm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(59),
      Q => \goreg_bm.dout_i_reg[74]_0\(59),
      R => '0'
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(5),
      Q => \goreg_bm.dout_i_reg[74]_0\(5),
      R => '0'
    );
\goreg_bm.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(60),
      Q => \goreg_bm.dout_i_reg[74]_0\(60),
      R => '0'
    );
\goreg_bm.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(61),
      Q => \goreg_bm.dout_i_reg[74]_0\(61),
      R => '0'
    );
\goreg_bm.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(62),
      Q => \goreg_bm.dout_i_reg[74]_0\(62),
      R => '0'
    );
\goreg_bm.dout_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(63),
      Q => \goreg_bm.dout_i_reg[74]_0\(63),
      R => '0'
    );
\goreg_bm.dout_i_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(64),
      Q => \goreg_bm.dout_i_reg[74]_0\(64),
      R => '0'
    );
\goreg_bm.dout_i_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(65),
      Q => \goreg_bm.dout_i_reg[74]_0\(65),
      R => '0'
    );
\goreg_bm.dout_i_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(66),
      Q => \goreg_bm.dout_i_reg[74]_0\(66),
      R => '0'
    );
\goreg_bm.dout_i_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(67),
      Q => \goreg_bm.dout_i_reg[74]_0\(67),
      R => '0'
    );
\goreg_bm.dout_i_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(68),
      Q => \goreg_bm.dout_i_reg[74]_0\(68),
      R => '0'
    );
\goreg_bm.dout_i_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(69),
      Q => \goreg_bm.dout_i_reg[74]_0\(69),
      R => '0'
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(6),
      Q => \goreg_bm.dout_i_reg[74]_0\(6),
      R => '0'
    );
\goreg_bm.dout_i_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(70),
      Q => \goreg_bm.dout_i_reg[74]_0\(70),
      R => '0'
    );
\goreg_bm.dout_i_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(71),
      Q => \goreg_bm.dout_i_reg[74]_0\(71),
      R => '0'
    );
\goreg_bm.dout_i_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(72),
      Q => \goreg_bm.dout_i_reg[74]_0\(72),
      R => '0'
    );
\goreg_bm.dout_i_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(73),
      Q => \goreg_bm.dout_i_reg[74]_0\(73),
      R => '0'
    );
\goreg_bm.dout_i_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(74),
      Q => \goreg_bm.dout_i_reg[74]_0\(74),
      R => '0'
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(7),
      Q => \goreg_bm.dout_i_reg[74]_0\(7),
      R => '0'
    );
\goreg_bm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(8),
      Q => \goreg_bm.dout_i_reg[74]_0\(8),
      R => '0'
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => doutb(9),
      Q => \goreg_bm.dout_i_reg[74]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_memory__parameterized1\ is
  port (
    POR_B : out STD_LOGIC;
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ : out STD_LOGIC;
    ENA_I : out STD_LOGIC;
    \goreg_bm.dout_i_reg[68]_0\ : out STD_LOGIC_VECTOR ( 68 downto 0 );
    s_aclk : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \goreg_bm.dout_i_reg[68]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_memory__parameterized1\ : entity is "memory";
end \sys_top_s00_data_fifo_452_memory__parameterized1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_memory__parameterized1\ is
  signal doutb : STD_LOGIC_VECTOR ( 68 downto 0 );
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.\sys_top_s00_data_fifo_452_blk_mem_gen_v8_4_3__parameterized1\
     port map (
      D(68 downto 0) => doutb(68 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\,
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_B => POR_B,
      Q(8 downto 0) => Q(8 downto 0),
      \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ => \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_wvalid => s_axi_wvalid
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(0),
      Q => \goreg_bm.dout_i_reg[68]_0\(0),
      R => '0'
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(10),
      Q => \goreg_bm.dout_i_reg[68]_0\(10),
      R => '0'
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(11),
      Q => \goreg_bm.dout_i_reg[68]_0\(11),
      R => '0'
    );
\goreg_bm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(12),
      Q => \goreg_bm.dout_i_reg[68]_0\(12),
      R => '0'
    );
\goreg_bm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(13),
      Q => \goreg_bm.dout_i_reg[68]_0\(13),
      R => '0'
    );
\goreg_bm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(14),
      Q => \goreg_bm.dout_i_reg[68]_0\(14),
      R => '0'
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(15),
      Q => \goreg_bm.dout_i_reg[68]_0\(15),
      R => '0'
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(16),
      Q => \goreg_bm.dout_i_reg[68]_0\(16),
      R => '0'
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(17),
      Q => \goreg_bm.dout_i_reg[68]_0\(17),
      R => '0'
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(18),
      Q => \goreg_bm.dout_i_reg[68]_0\(18),
      R => '0'
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(19),
      Q => \goreg_bm.dout_i_reg[68]_0\(19),
      R => '0'
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(1),
      Q => \goreg_bm.dout_i_reg[68]_0\(1),
      R => '0'
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(20),
      Q => \goreg_bm.dout_i_reg[68]_0\(20),
      R => '0'
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(21),
      Q => \goreg_bm.dout_i_reg[68]_0\(21),
      R => '0'
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(22),
      Q => \goreg_bm.dout_i_reg[68]_0\(22),
      R => '0'
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(23),
      Q => \goreg_bm.dout_i_reg[68]_0\(23),
      R => '0'
    );
\goreg_bm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(24),
      Q => \goreg_bm.dout_i_reg[68]_0\(24),
      R => '0'
    );
\goreg_bm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(25),
      Q => \goreg_bm.dout_i_reg[68]_0\(25),
      R => '0'
    );
\goreg_bm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(26),
      Q => \goreg_bm.dout_i_reg[68]_0\(26),
      R => '0'
    );
\goreg_bm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(27),
      Q => \goreg_bm.dout_i_reg[68]_0\(27),
      R => '0'
    );
\goreg_bm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(28),
      Q => \goreg_bm.dout_i_reg[68]_0\(28),
      R => '0'
    );
\goreg_bm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(29),
      Q => \goreg_bm.dout_i_reg[68]_0\(29),
      R => '0'
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(2),
      Q => \goreg_bm.dout_i_reg[68]_0\(2),
      R => '0'
    );
\goreg_bm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(30),
      Q => \goreg_bm.dout_i_reg[68]_0\(30),
      R => '0'
    );
\goreg_bm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(31),
      Q => \goreg_bm.dout_i_reg[68]_0\(31),
      R => '0'
    );
\goreg_bm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(32),
      Q => \goreg_bm.dout_i_reg[68]_0\(32),
      R => '0'
    );
\goreg_bm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(33),
      Q => \goreg_bm.dout_i_reg[68]_0\(33),
      R => '0'
    );
\goreg_bm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(34),
      Q => \goreg_bm.dout_i_reg[68]_0\(34),
      R => '0'
    );
\goreg_bm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(35),
      Q => \goreg_bm.dout_i_reg[68]_0\(35),
      R => '0'
    );
\goreg_bm.dout_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(36),
      Q => \goreg_bm.dout_i_reg[68]_0\(36),
      R => '0'
    );
\goreg_bm.dout_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(37),
      Q => \goreg_bm.dout_i_reg[68]_0\(37),
      R => '0'
    );
\goreg_bm.dout_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(38),
      Q => \goreg_bm.dout_i_reg[68]_0\(38),
      R => '0'
    );
\goreg_bm.dout_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(39),
      Q => \goreg_bm.dout_i_reg[68]_0\(39),
      R => '0'
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(3),
      Q => \goreg_bm.dout_i_reg[68]_0\(3),
      R => '0'
    );
\goreg_bm.dout_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(40),
      Q => \goreg_bm.dout_i_reg[68]_0\(40),
      R => '0'
    );
\goreg_bm.dout_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(41),
      Q => \goreg_bm.dout_i_reg[68]_0\(41),
      R => '0'
    );
\goreg_bm.dout_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(42),
      Q => \goreg_bm.dout_i_reg[68]_0\(42),
      R => '0'
    );
\goreg_bm.dout_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(43),
      Q => \goreg_bm.dout_i_reg[68]_0\(43),
      R => '0'
    );
\goreg_bm.dout_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(44),
      Q => \goreg_bm.dout_i_reg[68]_0\(44),
      R => '0'
    );
\goreg_bm.dout_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(45),
      Q => \goreg_bm.dout_i_reg[68]_0\(45),
      R => '0'
    );
\goreg_bm.dout_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(46),
      Q => \goreg_bm.dout_i_reg[68]_0\(46),
      R => '0'
    );
\goreg_bm.dout_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(47),
      Q => \goreg_bm.dout_i_reg[68]_0\(47),
      R => '0'
    );
\goreg_bm.dout_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(48),
      Q => \goreg_bm.dout_i_reg[68]_0\(48),
      R => '0'
    );
\goreg_bm.dout_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(49),
      Q => \goreg_bm.dout_i_reg[68]_0\(49),
      R => '0'
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(4),
      Q => \goreg_bm.dout_i_reg[68]_0\(4),
      R => '0'
    );
\goreg_bm.dout_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(50),
      Q => \goreg_bm.dout_i_reg[68]_0\(50),
      R => '0'
    );
\goreg_bm.dout_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(51),
      Q => \goreg_bm.dout_i_reg[68]_0\(51),
      R => '0'
    );
\goreg_bm.dout_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(52),
      Q => \goreg_bm.dout_i_reg[68]_0\(52),
      R => '0'
    );
\goreg_bm.dout_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(53),
      Q => \goreg_bm.dout_i_reg[68]_0\(53),
      R => '0'
    );
\goreg_bm.dout_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(54),
      Q => \goreg_bm.dout_i_reg[68]_0\(54),
      R => '0'
    );
\goreg_bm.dout_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(55),
      Q => \goreg_bm.dout_i_reg[68]_0\(55),
      R => '0'
    );
\goreg_bm.dout_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(56),
      Q => \goreg_bm.dout_i_reg[68]_0\(56),
      R => '0'
    );
\goreg_bm.dout_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(57),
      Q => \goreg_bm.dout_i_reg[68]_0\(57),
      R => '0'
    );
\goreg_bm.dout_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(58),
      Q => \goreg_bm.dout_i_reg[68]_0\(58),
      R => '0'
    );
\goreg_bm.dout_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(59),
      Q => \goreg_bm.dout_i_reg[68]_0\(59),
      R => '0'
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(5),
      Q => \goreg_bm.dout_i_reg[68]_0\(5),
      R => '0'
    );
\goreg_bm.dout_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(60),
      Q => \goreg_bm.dout_i_reg[68]_0\(60),
      R => '0'
    );
\goreg_bm.dout_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(61),
      Q => \goreg_bm.dout_i_reg[68]_0\(61),
      R => '0'
    );
\goreg_bm.dout_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(62),
      Q => \goreg_bm.dout_i_reg[68]_0\(62),
      R => '0'
    );
\goreg_bm.dout_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(63),
      Q => \goreg_bm.dout_i_reg[68]_0\(63),
      R => '0'
    );
\goreg_bm.dout_i_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(64),
      Q => \goreg_bm.dout_i_reg[68]_0\(64),
      R => '0'
    );
\goreg_bm.dout_i_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(65),
      Q => \goreg_bm.dout_i_reg[68]_0\(65),
      R => '0'
    );
\goreg_bm.dout_i_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(66),
      Q => \goreg_bm.dout_i_reg[68]_0\(66),
      R => '0'
    );
\goreg_bm.dout_i_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(67),
      Q => \goreg_bm.dout_i_reg[68]_0\(67),
      R => '0'
    );
\goreg_bm.dout_i_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(68),
      Q => \goreg_bm.dout_i_reg[68]_0\(68),
      R => '0'
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(6),
      Q => \goreg_bm.dout_i_reg[68]_0\(6),
      R => '0'
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(7),
      Q => \goreg_bm.dout_i_reg[68]_0\(7),
      R => '0'
    );
\goreg_bm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(8),
      Q => \goreg_bm.dout_i_reg[68]_0\(8),
      R => '0'
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \goreg_bm.dout_i_reg[68]_1\(0),
      D => doutb(9),
      Q => \goreg_bm.dout_i_reg[68]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 74 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    \p_4_out__0\ : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__parameterized0\ : entity is "fifo_generator_ramfifo";
end \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__parameterized0\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dout_i : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_I\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_17\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_18\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_19\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_20\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_21\ : STD_LOGIC;
  signal \grss.rsts/c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_19_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_2 : STD_LOGIC;
  signal rstblk_n_3 : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
\gntv_or_sync_fifo.gl0.rd\: entity work.\sys_top_s00_data_fifo_452_rd_logic__parameterized0\
     port map (
      E(0) => dout_i,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_I\,
      ENB_dly_D => ENB_dly_D,
      Q(1) => rstblk_n_2,
      Q(0) => rstblk_n_3,
      \gc0.count_d1_reg[8]\(8 downto 0) => p_0_out(8 downto 0),
      \gc0.count_reg[0]\ => \^sr\(0),
      \gc0.count_reg[8]\(8 downto 0) => rd_pntr_plus1(8 downto 0),
      \gmux.gm[1].gms.ms\ => \gntv_or_sync_fifo.gl0.wr_n_17\,
      \gmux.gm[2].gms.ms\ => \gntv_or_sync_fifo.gl0.wr_n_18\,
      \gmux.gm[3].gms.ms\ => \gntv_or_sync_fifo.gl0.wr_n_19\,
      \gmux.gm[4].gms.ms\ => \gntv_or_sync_fifo.gl0.wr_n_20\,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      p_8_out => p_8_out,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.wr_n_21\,
      ram_empty_i_reg_0(0) => p_19_out,
      s_aclk => s_aclk,
      v1_reg(4 downto 0) => \grss.rsts/c2/v1_reg\(4 downto 0)
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\sys_top_s00_data_fifo_452_wr_logic__parameterized0\
     port map (
      DIADI(0) => DIADI(0),
      E(0) => E(0),
      Q(8 downto 0) => p_12_out(8 downto 0),
      SR(0) => \^sr\(0),
      \gcc0.gc0.count_d1_reg[0]\ => \gntv_or_sync_fifo.gl0.wr_n_17\,
      \gcc0.gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.wr_n_18\,
      \gcc0.gc0.count_d1_reg[4]\ => \gntv_or_sync_fifo.gl0.wr_n_19\,
      \gcc0.gc0.count_d1_reg[6]\ => \gntv_or_sync_fifo.gl0.wr_n_20\,
      \gcc0.gc0.count_d1_reg[8]\ => \gntv_or_sync_fifo.gl0.wr_n_21\,
      \gmux.gm[4].gms.ms\(8 downto 0) => p_0_out(8 downto 0),
      \gmux.gm[4].gms.ms_0\(8 downto 0) => rd_pntr_plus1(8 downto 0),
      \out\ => ram_full_fb_i_reg,
      \p_4_out__0\ => \p_4_out__0\,
      p_8_out => p_8_out,
      ram_full_i_reg => rst_full_gen_i,
      s_aclk => s_aclk,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0(0) => p_19_out,
      v1_reg(4 downto 0) => \grss.rsts/c2/v1_reg\(4 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.\sys_top_s00_data_fifo_452_memory__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => p_0_out(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(0) => p_19_out,
      DIADI(15 downto 0) => DIADI(15 downto 0),
      E(0) => dout_i,
      ENA_I => ENA_I,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENB_I\,
      POR_B => POR_B,
      Q(8 downto 0) => p_12_out(8 downto 0),
      \goreg_bm.dout_i_reg[74]_0\(74 downto 0) => Q(74 downto 0),
      s_aclk => s_aclk,
      s_axi_wdata(56 downto 0) => s_axi_wdata(56 downto 0),
      s_axi_wid(0) => s_axi_wid(0),
      s_axi_wstrb(0) => s_axi_wstrb(0)
    );
rstblk: entity work.\sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized2__xdcDup__1\
     port map (
      Q(1) => rstblk_n_2,
      Q(0) => rstblk_n_3,
      SR(0) => \^sr\(0),
      \grstd1.grst_full.grst_f.rst_d3_reg_0\ => rst_full_gen_i,
      \out\ => \out\,
      s_aclk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__parameterized1\ is
  port (
    POR_B : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENA_I : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \goreg_bm.dout_i_reg[68]\ : out STD_LOGIC_VECTOR ( 68 downto 0 );
    s_aclk : in STD_LOGIC;
    src_arst : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC;
    \_inferred__0/i__carry__0\ : in STD_LOGIC;
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__parameterized1\ : entity is "fifo_generator_ramfifo";
end \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__parameterized1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_fifo_generator_ramfifo__parameterized1\ is
  signal \^safety_ckt_gen.enb_no_reg.enb_dly_d_reg\ : STD_LOGIC;
  signal dout_i : STD_LOGIC;
  signal full_fb_rdch : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_16\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_17\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_18\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_19\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_20\ : STD_LOGIC;
  signal \grss.rsts/c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_19_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal rstblk_n_2 : STD_LOGIC;
  signal rstblk_n_3 : STD_LOGIC;
begin
  \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ <= \^safety_ckt_gen.enb_no_reg.enb_dly_d_reg\;
\gntv_or_sync_fifo.gl0.rd\: entity work.\sys_top_s00_data_fifo_452_rd_logic__parameterized0_3\
     port map (
      CO(0) => CO(0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ => \^safety_ckt_gen.enb_no_reg.enb_dly_d_reg\,
      E(0) => dout_i,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      Q(0) => Q(0),
      S(0) => S(0),
      \_inferred__0/i__carry__0\ => \_inferred__0/i__carry__0\,
      arready_pkt => arready_pkt,
      \gc0.count_d1_reg[8]\(8 downto 0) => p_0_out(8 downto 0),
      \gc0.count_d1_reg[8]_0\ => rstblk_n_3,
      \gc0.count_reg[8]\(8 downto 0) => rd_pntr_plus1(8 downto 0),
      \gmux.gm[1].gms.ms\ => \gntv_or_sync_fifo.gl0.wr_n_16\,
      \gmux.gm[2].gms.ms\ => \gntv_or_sync_fifo.gl0.wr_n_17\,
      \gmux.gm[3].gms.ms\ => \gntv_or_sync_fifo.gl0.wr_n_18\,
      \gmux.gm[4].gms.ms\ => \gntv_or_sync_fifo.gl0.wr_n_19\,
      \goreg_bm.dout_i_reg[68]\(1) => rstblk_n_1,
      \goreg_bm.dout_i_reg[68]\(0) => rstblk_n_2,
      \out\ => \out\,
      p_8_out => p_8_out,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.wr_n_20\,
      ram_empty_i_reg_0(0) => p_19_out,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      v1_reg(4 downto 0) => \grss.rsts/c2/v1_reg\(4 downto 0)
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\sys_top_s00_data_fifo_452_wr_logic__parameterized0_4\
     port map (
      E(0) => p_19_out,
      Q(8 downto 0) => p_12_out(8 downto 0),
      SR(0) => rstblk_n_3,
      \gcc0.gc0.count_d1_reg[0]\ => \gntv_or_sync_fifo.gl0.wr_n_16\,
      \gcc0.gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.wr_n_17\,
      \gcc0.gc0.count_d1_reg[4]\ => \gntv_or_sync_fifo.gl0.wr_n_18\,
      \gcc0.gc0.count_d1_reg[6]\ => \gntv_or_sync_fifo.gl0.wr_n_19\,
      \gcc0.gc0.count_d1_reg[8]\ => \gntv_or_sync_fifo.gl0.wr_n_20\,
      \gmux.gm[4].gms.ms\(8 downto 0) => p_0_out(8 downto 0),
      \gmux.gm[4].gms.ms_0\(8 downto 0) => rd_pntr_plus1(8 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => full_fb_rdch,
      p_8_out => p_8_out,
      ram_full_i_reg => rst_full_gen_i,
      s_aclk => s_aclk,
      v1_reg(4 downto 0) => \grss.rsts/c2/v1_reg\(4 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.\sys_top_s00_data_fifo_452_memory__parameterized1\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(8 downto 0) => p_0_out(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_1\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\,
      E(0) => p_19_out,
      ENA_I => ENA_I,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      POR_B => POR_B,
      Q(8 downto 0) => p_12_out(8 downto 0),
      \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ => \^safety_ckt_gen.enb_no_reg.enb_dly_d_reg\,
      \goreg_bm.dout_i_reg[68]_0\(68 downto 0) => \goreg_bm.dout_i_reg[68]\(68 downto 0),
      \goreg_bm.dout_i_reg[68]_1\(0) => dout_i,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => full_fb_rdch,
      s_aclk => s_aclk,
      s_axi_wvalid => s_axi_wvalid
    );
rstblk: entity work.\sys_top_s00_data_fifo_452_reset_blk_ramfifo__parameterized2\
     port map (
      Q(1) => rstblk_n_1,
      Q(0) => rstblk_n_2,
      SR(0) => rstblk_n_3,
      \out\ => rst_full_gen_i,
      s_aclk => s_aclk,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_fifo_generator_top__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    p_7_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 74 downto 0 );
    src_arst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    \p_4_out__0\ : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_fifo_generator_top__parameterized0\ : entity is "fifo_generator_top";
end \sys_top_s00_data_fifo_452_fifo_generator_top__parameterized0\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_fifo_generator_top__parameterized0\ is
begin
\grf.rf\: entity work.\sys_top_s00_data_fifo_452_fifo_generator_ramfifo__parameterized0\
     port map (
      DIADI(15 downto 0) => DIADI(15 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_dly_D => ENB_dly_D,
      POR_B => POR_B,
      Q(74 downto 0) => Q(74 downto 0),
      SR(0) => p_7_out,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      \out\ => \out\,
      \p_4_out__0\ => \p_4_out__0\,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      s_aclk => s_aclk,
      s_axi_wdata(56 downto 0) => s_axi_wdata(56 downto 0),
      s_axi_wid(0) => s_axi_wid(0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(0) => s_axi_wstrb(0),
      s_axi_wvalid => s_axi_wvalid,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \sys_top_s00_data_fifo_452_fifo_generator_top__parameterized1\ is
  port (
    POR_B : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENA_I : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \goreg_bm.dout_i_reg[68]\ : out STD_LOGIC_VECTOR ( 68 downto 0 );
    s_aclk : in STD_LOGIC;
    src_arst : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC;
    \_inferred__0/i__carry__0\ : in STD_LOGIC;
    arready_pkt : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \sys_top_s00_data_fifo_452_fifo_generator_top__parameterized1\ : entity is "fifo_generator_top";
end \sys_top_s00_data_fifo_452_fifo_generator_top__parameterized1\;

architecture STRUCTURE of \sys_top_s00_data_fifo_452_fifo_generator_top__parameterized1\ is
begin
\grf.rf\: entity work.\sys_top_s00_data_fifo_452_fifo_generator_ramfifo__parameterized1\
     port map (
      CO(0) => CO(0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\,
      ENA_I => ENA_I,
      POR_B => POR_B,
      Q(0) => Q(0),
      S(0) => S(0),
      \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\ => ENB_dly_D,
      \_inferred__0/i__carry__0\ => \_inferred__0/i__carry__0\,
      arready_pkt => arready_pkt,
      \goreg_bm.dout_i_reg[68]\(68 downto 0) => \goreg_bm.dout_i_reg[68]\(68 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wvalid => s_axi_wvalid,
      src_arst => src_arst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_fifo_generator_v13_2_4_synth is
  port (
    Q : out STD_LOGIC_VECTOR ( 74 downto 0 );
    \goreg_bm.dout_i_reg[68]\ : out STD_LOGIC_VECTOR ( 68 downto 0 );
    \gfwd_rev_pipeline1.storage_data1_reg[59]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \gfwd_rev_pipeline1.storage_data1_reg[59]_0\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \gfwd_rev_pipeline1.m_valid_i_reg\ : out STD_LOGIC;
    \gfwd_rev_pipeline1.m_valid_i_reg_0\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    DIADI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 55 downto 0 );
    I555 : in STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
end sys_top_s00_data_fifo_452_fifo_generator_v13_2_4_synth;

architecture STRUCTURE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4_synth is
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal arready_pkt : STD_LOGIC;
  signal arvalid_en : STD_LOGIC;
  signal arvalid_en0_carry_n_0 : STD_LOGIC;
  signal arvalid_en0_carry_n_1 : STD_LOGIC;
  signal arvalid_en0_carry_n_2 : STD_LOGIC;
  signal arvalid_en0_carry_n_3 : STD_LOGIC;
  signal awready_pkt : STD_LOGIC;
  signal dest_out : STD_LOGIC;
  signal dest_out40_out : STD_LOGIC;
  signal empty_fb_rdch : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9]\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_10\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_11\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_12\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_13\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_14\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_15\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_16\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_17\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_18\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_19\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_2\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_20\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_21\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_22\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_23\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_24\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_25\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_26\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_27\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_28\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_29\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_3\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_30\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_31\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_32\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_33\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_34\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_39\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_4\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_40\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_41\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_42\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_43\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_44\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_45\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_46\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_47\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_48\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_49\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_5\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_50\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_51\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_52\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_53\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_54\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_55\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_56\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_57\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_6\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_7\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_70\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_72\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_73\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_74\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_75\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_76\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_77\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_78\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_79\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_8\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_80\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_81\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_82\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_83\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_84\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_85\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_86\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grach2.axi_rach_n_9\ : STD_LOGIC;
  signal \gaxi_full_lite.gread_ch.grdch2.axi_rdch_n_3\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_5_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_10\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_11\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_12\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_13\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_14\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_15\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_16\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_17\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_18\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_19\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_20\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_21\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_22\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_23\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_24\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_25\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_26\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_27\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_28\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_29\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_3\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_30\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_31\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_32\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_33\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_34\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_35\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_36\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_37\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_38\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_39\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_4\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_40\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_41\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_42\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_43\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_44\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_45\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_46\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_47\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_48\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_49\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_5\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_50\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_51\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_52\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_53\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_54\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_55\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_56\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_57\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_58\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_59\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_6\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_60\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_61\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_62\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_63\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_64\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_65\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_66\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_67\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_7\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_8\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_9\ : STD_LOGIC;
  signal \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\ : STD_LOGIC;
  signal \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\ : STD_LOGIC;
  signal \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\ : STD_LOGIC;
  signal \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENA_I\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal inverted_reset : STD_LOGIC;
  signal p_0_out_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_1_in_0 : STD_LOGIC;
  signal \p_4_out__0\ : STD_LOGIC;
  signal \p_4_out__0_0\ : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal rach_empty : STD_LOGIC;
  signal rd_fifo_free_space : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal value : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_rst_busy_rach : STD_LOGIC;
  signal wr_rst_busy_rach_sync : STD_LOGIC;
  signal wr_rst_busy_wach : STD_LOGIC;
  signal wr_rst_busy_wdch : STD_LOGIC;
  signal \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_arvalid_en0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_arvalid_en0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_arvalid_en0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of arvalid_en0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \arvalid_en0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is 4;
  attribute INIT_SYNC_FF of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is 0;
  attribute SIM_ASSERT_CHK of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is 0;
  attribute SRC_INPUT_REG of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is 1;
  attribute VERSION of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is 0;
  attribute XPM_CDC of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is "SINGLE";
  attribute XPM_MODULE of \gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is 4;
  attribute INIT_SYNC_FF of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is 0;
  attribute SIM_ASSERT_CHK of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is 0;
  attribute SRC_INPUT_REG of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is 1;
  attribute VERSION of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is 0;
  attribute XPM_CDC of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is "SINGLE";
  attribute XPM_MODULE of \gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\ : label is "TRUE";
begin
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0]\,
      DI(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3]\,
      DI(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2]\,
      DI(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1]\,
      DI(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_70\,
      O(3 downto 0) => rd_fifo_free_space(3 downto 0),
      S(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_82\,
      S(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_83\,
      S(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_84\,
      S(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_85\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6]\,
      DI(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\,
      DI(1) => \i__carry__0_i_1_n_0\,
      DI(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4]\,
      O(3 downto 0) => rd_fifo_free_space(7 downto 4),
      S(3) => \i__carry__0_i_2_n_0\,
      S(2) => \i__carry__0_i_3_n_0\,
      S(1) => \gaxi_full_lite.gread_ch.grdch2.axi_rdch_n_3\,
      S(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_86\
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3 downto 1) => \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7]\,
      O(3 downto 2) => \NLW__inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => rd_fifo_free_space(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__1_i_1_n_0\,
      S(0) => \i__carry__1_i_2_n_0\
    );
arvalid_en0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => arvalid_en0_carry_n_0,
      CO(2) => arvalid_en0_carry_n_1,
      CO(1) => arvalid_en0_carry_n_2,
      CO(0) => arvalid_en0_carry_n_3,
      CYINIT => '0',
      DI(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_74\,
      DI(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_75\,
      DI(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_76\,
      DI(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_77\,
      O(3 downto 0) => NLW_arvalid_en0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_78\,
      S(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_79\,
      S(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_80\,
      S(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_81\
    );
\arvalid_en0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => arvalid_en0_carry_n_0,
      CO(3 downto 1) => \NLW_arvalid_en0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => arvalid_en,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_73\,
      O(3 downto 0) => \NLW_arvalid_en0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_72\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7]\,
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6]\,
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\,
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4]\,
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9]\,
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8]\,
      O => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7_n_0\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\,
      CLR => p_0_out_1,
      D => p_1_in(0),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\,
      CLR => p_0_out_1,
      D => p_1_in(1),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\,
      CLR => p_0_out_1,
      D => p_1_in(2),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\,
      CLR => p_0_out_1,
      D => p_1_in(3),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\,
      CLR => p_0_out_1,
      D => p_1_in(4),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\,
      CLR => p_0_out_1,
      D => p_1_in(5),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\,
      CLR => p_0_out_1,
      D => p_1_in(6),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\,
      CLR => p_0_out_1,
      D => p_1_in(7),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\,
      CLR => p_0_out_1,
      D => p_1_in(8),
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8]\
    );
\gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\,
      D => p_1_in(9),
      PRE => p_0_out_1,
      Q => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9]\
    );
\gaxi_full_lite.gread_ch.grach2.axi_rach\: entity work.sys_top_s00_data_fifo_452_fifo_generator_top
     port map (
      CO(0) => arvalid_en,
      D(9 downto 0) => p_1_in(9 downto 0),
      DI(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_73\,
      E(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_68\,
      I555(55 downto 0) => I555(55 downto 0),
      Q(9) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9]\,
      Q(8) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8]\,
      Q(7) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7]\,
      Q(6) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6]\,
      Q(5) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\,
      Q(4) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[4]\,
      Q(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[3]\,
      Q(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[2]\,
      Q(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[1]\,
      Q(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[0]\,
      S(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_72\,
      arready_pkt => arready_pkt,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[0]\ => empty_fb_rdch,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_74\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_75\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_76\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[6]\(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_77\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_78\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_79\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_80\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]\(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_81\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_0\(3) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_3_n_0\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_0\(2) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_4_n_0\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_0\(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_5_n_0\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[7]_0\(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[7]_i_6_n_0\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(1) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_6_n_0\,
      \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg[9]\(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space[9]_i_7_n_0\,
      \gfwd_rev_pipeline1.s_ready_i_reg\ => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_70\,
      \goreg_dm.dout_i_reg[24]\(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_86\,
      \goreg_dm.dout_i_reg[26]\(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_82\,
      \goreg_dm.dout_i_reg[26]\(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_83\,
      \goreg_dm.dout_i_reg[26]\(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_84\,
      \goreg_dm.dout_i_reg[26]\(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_85\,
      \goreg_dm.dout_i_reg[59]\(55) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_2\,
      \goreg_dm.dout_i_reg[59]\(54) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_3\,
      \goreg_dm.dout_i_reg[59]\(53) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_4\,
      \goreg_dm.dout_i_reg[59]\(52) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_5\,
      \goreg_dm.dout_i_reg[59]\(51) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_6\,
      \goreg_dm.dout_i_reg[59]\(50) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_7\,
      \goreg_dm.dout_i_reg[59]\(49) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_8\,
      \goreg_dm.dout_i_reg[59]\(48) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_9\,
      \goreg_dm.dout_i_reg[59]\(47) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_10\,
      \goreg_dm.dout_i_reg[59]\(46) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_11\,
      \goreg_dm.dout_i_reg[59]\(45) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_12\,
      \goreg_dm.dout_i_reg[59]\(44) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_13\,
      \goreg_dm.dout_i_reg[59]\(43) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_14\,
      \goreg_dm.dout_i_reg[59]\(42) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_15\,
      \goreg_dm.dout_i_reg[59]\(41) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_16\,
      \goreg_dm.dout_i_reg[59]\(40) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_17\,
      \goreg_dm.dout_i_reg[59]\(39) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_18\,
      \goreg_dm.dout_i_reg[59]\(38) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_19\,
      \goreg_dm.dout_i_reg[59]\(37) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_20\,
      \goreg_dm.dout_i_reg[59]\(36) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_21\,
      \goreg_dm.dout_i_reg[59]\(35) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_22\,
      \goreg_dm.dout_i_reg[59]\(34) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_23\,
      \goreg_dm.dout_i_reg[59]\(33) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_24\,
      \goreg_dm.dout_i_reg[59]\(32) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_25\,
      \goreg_dm.dout_i_reg[59]\(31) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_26\,
      \goreg_dm.dout_i_reg[59]\(30) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_27\,
      \goreg_dm.dout_i_reg[59]\(29) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_28\,
      \goreg_dm.dout_i_reg[59]\(28) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_29\,
      \goreg_dm.dout_i_reg[59]\(27) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_30\,
      \goreg_dm.dout_i_reg[59]\(26) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_31\,
      \goreg_dm.dout_i_reg[59]\(25) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_32\,
      \goreg_dm.dout_i_reg[59]\(24) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_33\,
      \goreg_dm.dout_i_reg[59]\(23) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_34\,
      \goreg_dm.dout_i_reg[59]\(22 downto 19) => value(3 downto 0),
      \goreg_dm.dout_i_reg[59]\(18) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_39\,
      \goreg_dm.dout_i_reg[59]\(17) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_40\,
      \goreg_dm.dout_i_reg[59]\(16) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_41\,
      \goreg_dm.dout_i_reg[59]\(15) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_42\,
      \goreg_dm.dout_i_reg[59]\(14) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_43\,
      \goreg_dm.dout_i_reg[59]\(13) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_44\,
      \goreg_dm.dout_i_reg[59]\(12) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_45\,
      \goreg_dm.dout_i_reg[59]\(11) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_46\,
      \goreg_dm.dout_i_reg[59]\(10) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_47\,
      \goreg_dm.dout_i_reg[59]\(9) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_48\,
      \goreg_dm.dout_i_reg[59]\(8) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_49\,
      \goreg_dm.dout_i_reg[59]\(7) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_50\,
      \goreg_dm.dout_i_reg[59]\(6) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_51\,
      \goreg_dm.dout_i_reg[59]\(5) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_52\,
      \goreg_dm.dout_i_reg[59]\(4) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_53\,
      \goreg_dm.dout_i_reg[59]\(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_54\,
      \goreg_dm.dout_i_reg[59]\(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_55\,
      \goreg_dm.dout_i_reg[59]\(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_56\,
      \goreg_dm.dout_i_reg[59]\(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_57\,
      \out\ => rach_empty,
      \p_4_out__0\ => \p_4_out__0\,
      rd_fifo_free_space(9 downto 0) => rd_fifo_free_space(9 downto 0),
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rready => s_axi_rready,
      src_arst => inverted_reset,
      src_in => wr_rst_busy_rach
    );
\gaxi_full_lite.gread_ch.grach2.gaxi_arvld.rach_pkt_reg_slice\: entity work.sys_top_s00_data_fifo_452_axi_reg_slice
     port map (
      D(55) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_2\,
      D(54) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_3\,
      D(53) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_4\,
      D(52) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_5\,
      D(51) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_6\,
      D(50) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_7\,
      D(49) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_8\,
      D(48) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_9\,
      D(47) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_10\,
      D(46) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_11\,
      D(45) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_12\,
      D(44) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_13\,
      D(43) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_14\,
      D(42) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_15\,
      D(41) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_16\,
      D(40) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_17\,
      D(39) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_18\,
      D(38) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_19\,
      D(37) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_20\,
      D(36) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_21\,
      D(35) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_22\,
      D(34) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_23\,
      D(33) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_24\,
      D(32) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_25\,
      D(31) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_26\,
      D(30) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_27\,
      D(29) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_28\,
      D(28) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_29\,
      D(27) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_30\,
      D(26) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_31\,
      D(25) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_32\,
      D(24) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_33\,
      D(23) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_34\,
      D(22 downto 19) => value(3 downto 0),
      D(18) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_39\,
      D(17) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_40\,
      D(16) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_41\,
      D(15) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_42\,
      D(14) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_43\,
      D(13) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_44\,
      D(12) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_45\,
      D(11) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_46\,
      D(10) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_47\,
      D(9) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_48\,
      D(8) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_49\,
      D(7) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_50\,
      D(6) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_51\,
      D(5) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_52\,
      D(4) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_53\,
      D(3) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_54\,
      D(2) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_55\,
      D(1) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_56\,
      D(0) => \gaxi_full_lite.gread_ch.grach2.axi_rach_n_57\,
      arready_pkt => arready_pkt,
      \gfwd_rev_pipeline1.m_valid_i_reg_0\ => \gfwd_rev_pipeline1.m_valid_i_reg_0\,
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(55 downto 0) => \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(55 downto 0),
      m_axi_arready => m_axi_arready,
      \p_4_out__0\ => \p_4_out__0\,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      src_arst => inverted_reset
    );
\gaxi_full_lite.gread_ch.grach2.xpm_cdc_single_inst3\: entity work.sys_top_s00_data_fifo_452_xpm_cdc_single
     port map (
      dest_clk => s_aclk,
      dest_out => wr_rst_busy_rach_sync,
      src_clk => s_aclk,
      src_in => wr_rst_busy_rach
    );
\gaxi_full_lite.gread_ch.grdch2.axi_rdch\: entity work.\sys_top_s00_data_fifo_452_fifo_generator_top__parameterized1\
     port map (
      CO(0) => arvalid_en,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(3 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(3 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_0\ => p_1_in_0,
      ENA_I => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENA_I\,
      ENB_dly_D => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      POR_B => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      Q(0) => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\,
      S(0) => \gaxi_full_lite.gread_ch.grdch2.axi_rdch_n_3\,
      \_inferred__0/i__carry__0\ => rach_empty,
      arready_pkt => arready_pkt,
      \goreg_bm.dout_i_reg[68]\(68 downto 0) => \goreg_bm.dout_i_reg[68]\(68 downto 0),
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => empty_fb_rdch,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wvalid => s_axi_wvalid,
      src_arst => inverted_reset
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(0),
      O => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[0]_i_1_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(1),
      O => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_2_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(3),
      I1 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(4),
      O => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_3_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(2),
      I1 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(3),
      O => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_4_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(1),
      I1 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(2),
      O => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_5_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(7),
      I1 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(8),
      O => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_2_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(6),
      I1 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(7),
      O => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_3_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(5),
      I1 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(6),
      O => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_4_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(4),
      I1 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(5),
      O => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_5_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(8),
      I1 => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(9),
      O => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[9]_i_3_n_0\
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\,
      D => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[0]_i_1_n_0\,
      Q => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(0),
      R => p_7_out
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\,
      D => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_11\,
      Q => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(1),
      R => p_7_out
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\,
      D => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_10\,
      Q => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(2),
      R => p_7_out
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\,
      D => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_9\,
      Q => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(3),
      R => p_7_out
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\,
      D => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_8\,
      Q => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(4),
      R => p_7_out
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\,
      D => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_7\,
      Q => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(5),
      R => p_7_out
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\,
      D => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_6\,
      Q => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(6),
      R => p_7_out
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\,
      D => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_5\,
      Q => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(7),
      R => p_7_out
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\,
      D => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_4\,
      Q => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(8),
      R => p_7_out
    );
\gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\,
      D => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_3\,
      Q => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(9),
      R => p_7_out
    );
\gaxi_full_lite.gwrite_ch.gwach2.axi_wach\: entity work.\sys_top_s00_data_fifo_452_fifo_generator_top__xdcDup__1\
     port map (
      D(8) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_3\,
      D(7) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_4\,
      D(6) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_5\,
      D(5) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_6\,
      D(4) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_7\,
      D(3) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_8\,
      D(2) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_9\,
      D(1) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_10\,
      D(0) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_11\,
      DI(0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_2_n_0\,
      DIADI(0) => DIADI(0),
      Q(9 downto 0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg\(9 downto 0),
      S(2) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_3_n_0\,
      S(1) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_4_n_0\,
      S(0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[4]_i_5_n_0\,
      awready_pkt => awready_pkt,
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\(3) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_2_n_0\,
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\(2) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_3_n_0\,
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\(1) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_4_n_0\,
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[8]\(0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[8]_i_5_n_0\,
      \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count_reg[9]\(0) => \gaxi_full_lite.gwrite_ch.gaxi_pkt_fifo_wr.gaxi_mm_cc_pkt_wr.wr_pkt_count[9]_i_3_n_0\,
      \goreg_dm.dout_i_reg[59]\(55) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_12\,
      \goreg_dm.dout_i_reg[59]\(54) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_13\,
      \goreg_dm.dout_i_reg[59]\(53) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_14\,
      \goreg_dm.dout_i_reg[59]\(52) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_15\,
      \goreg_dm.dout_i_reg[59]\(51) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_16\,
      \goreg_dm.dout_i_reg[59]\(50) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_17\,
      \goreg_dm.dout_i_reg[59]\(49) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_18\,
      \goreg_dm.dout_i_reg[59]\(48) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_19\,
      \goreg_dm.dout_i_reg[59]\(47) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_20\,
      \goreg_dm.dout_i_reg[59]\(46) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_21\,
      \goreg_dm.dout_i_reg[59]\(45) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_22\,
      \goreg_dm.dout_i_reg[59]\(44) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_23\,
      \goreg_dm.dout_i_reg[59]\(43) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_24\,
      \goreg_dm.dout_i_reg[59]\(42) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_25\,
      \goreg_dm.dout_i_reg[59]\(41) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_26\,
      \goreg_dm.dout_i_reg[59]\(40) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_27\,
      \goreg_dm.dout_i_reg[59]\(39) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_28\,
      \goreg_dm.dout_i_reg[59]\(38) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_29\,
      \goreg_dm.dout_i_reg[59]\(37) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_30\,
      \goreg_dm.dout_i_reg[59]\(36) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_31\,
      \goreg_dm.dout_i_reg[59]\(35) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_32\,
      \goreg_dm.dout_i_reg[59]\(34) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_33\,
      \goreg_dm.dout_i_reg[59]\(33) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_34\,
      \goreg_dm.dout_i_reg[59]\(32) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_35\,
      \goreg_dm.dout_i_reg[59]\(31) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_36\,
      \goreg_dm.dout_i_reg[59]\(30) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_37\,
      \goreg_dm.dout_i_reg[59]\(29) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_38\,
      \goreg_dm.dout_i_reg[59]\(28) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_39\,
      \goreg_dm.dout_i_reg[59]\(27) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_40\,
      \goreg_dm.dout_i_reg[59]\(26) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_41\,
      \goreg_dm.dout_i_reg[59]\(25) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_42\,
      \goreg_dm.dout_i_reg[59]\(24) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_43\,
      \goreg_dm.dout_i_reg[59]\(23) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_44\,
      \goreg_dm.dout_i_reg[59]\(22) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_45\,
      \goreg_dm.dout_i_reg[59]\(21) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_46\,
      \goreg_dm.dout_i_reg[59]\(20) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_47\,
      \goreg_dm.dout_i_reg[59]\(19) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_48\,
      \goreg_dm.dout_i_reg[59]\(18) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_49\,
      \goreg_dm.dout_i_reg[59]\(17) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_50\,
      \goreg_dm.dout_i_reg[59]\(16) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_51\,
      \goreg_dm.dout_i_reg[59]\(15) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_52\,
      \goreg_dm.dout_i_reg[59]\(14) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_53\,
      \goreg_dm.dout_i_reg[59]\(13) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_54\,
      \goreg_dm.dout_i_reg[59]\(12) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_55\,
      \goreg_dm.dout_i_reg[59]\(11) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_56\,
      \goreg_dm.dout_i_reg[59]\(10) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_57\,
      \goreg_dm.dout_i_reg[59]\(9) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_58\,
      \goreg_dm.dout_i_reg[59]\(8) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_59\,
      \goreg_dm.dout_i_reg[59]\(7) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_60\,
      \goreg_dm.dout_i_reg[59]\(6) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_61\,
      \goreg_dm.dout_i_reg[59]\(5) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_62\,
      \goreg_dm.dout_i_reg[59]\(4) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_63\,
      \goreg_dm.dout_i_reg[59]\(3) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_64\,
      \goreg_dm.dout_i_reg[59]\(2) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_65\,
      \goreg_dm.dout_i_reg[59]\(1) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_66\,
      \goreg_dm.dout_i_reg[59]\(0) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_67\,
      \gpr1.dout_i_reg[55]\(55 downto 0) => DI(55 downto 0),
      \out\ => p_1_in_0,
      \p_4_out__0\ => \p_4_out__0_0\,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid,
      src_arst => inverted_reset,
      src_in => wr_rst_busy_wach
    );
\gaxi_full_lite.gwrite_ch.gwach2.gawvld_pkt_fifo.wach_pkt_reg_slice\: entity work.\sys_top_s00_data_fifo_452_axi_reg_slice__xdcDup__1\
     port map (
      D(55) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_12\,
      D(54) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_13\,
      D(53) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_14\,
      D(52) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_15\,
      D(51) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_16\,
      D(50) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_17\,
      D(49) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_18\,
      D(48) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_19\,
      D(47) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_20\,
      D(46) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_21\,
      D(45) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_22\,
      D(44) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_23\,
      D(43) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_24\,
      D(42) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_25\,
      D(41) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_26\,
      D(40) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_27\,
      D(39) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_28\,
      D(38) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_29\,
      D(37) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_30\,
      D(36) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_31\,
      D(35) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_32\,
      D(34) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_33\,
      D(33) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_34\,
      D(32) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_35\,
      D(31) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_36\,
      D(30) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_37\,
      D(29) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_38\,
      D(28) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_39\,
      D(27) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_40\,
      D(26) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_41\,
      D(25) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_42\,
      D(24) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_43\,
      D(23) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_44\,
      D(22) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_45\,
      D(21) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_46\,
      D(20) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_47\,
      D(19) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_48\,
      D(18) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_49\,
      D(17) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_50\,
      D(16) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_51\,
      D(15) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_52\,
      D(14) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_53\,
      D(13) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_54\,
      D(12) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_55\,
      D(11) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_56\,
      D(10) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_57\,
      D(9) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_58\,
      D(8) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_59\,
      D(7) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_60\,
      D(6) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_61\,
      D(5) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_62\,
      D(4) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_63\,
      D(3) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_64\,
      D(2) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_65\,
      D(1) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_66\,
      D(0) => \gaxi_full_lite.gwrite_ch.gwach2.axi_wach_n_67\,
      awready_pkt => awready_pkt,
      \gfwd_rev_pipeline1.m_valid_i_reg_0\ => \gfwd_rev_pipeline1.m_valid_i_reg\,
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(55 downto 0) => \gfwd_rev_pipeline1.storage_data1_reg[59]\(55 downto 0),
      m_axi_awready => m_axi_awready,
      \p_4_out__0\ => \p_4_out__0_0\,
      s_aclk => s_aclk,
      src_arst => inverted_reset
    );
\gaxi_full_lite.gwrite_ch.gwach2.xpm_cdc_single_inst1\: entity work.\sys_top_s00_data_fifo_452_xpm_cdc_single__1\
     port map (
      dest_clk => s_aclk,
      dest_out => dest_out,
      src_clk => s_aclk,
      src_in => wr_rst_busy_wach
    );
\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch\: entity work.\sys_top_s00_data_fifo_452_fifo_generator_top__parameterized0\
     port map (
      DIADI(15 downto 0) => DIADI(15 downto 0),
      E(0) => \gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch_n_3\,
      ENA_I => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/ENA_I\,
      ENB_dly_D => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      POR_B => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      Q(74 downto 0) => Q(74 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      \out\ => wr_rst_busy_wdch,
      \p_4_out__0\ => \p_4_out__0_0\,
      p_7_out => p_7_out,
      ram_full_fb_i_reg => p_1_in_0,
      s_aclk => s_aclk,
      s_axi_wdata(56 downto 0) => s_axi_wdata(56 downto 0),
      s_axi_wid(0) => s_axi_wid(0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(0) => s_axi_wstrb(0),
      s_axi_wvalid => s_axi_wvalid,
      src_arst => inverted_reset
    );
\gaxi_full_lite.gwrite_ch.gwdch2.xpm_cdc_single_inst2\: entity work.\sys_top_s00_data_fifo_452_xpm_cdc_single__2\
     port map (
      dest_clk => s_aclk,
      dest_out => dest_out40_out,
      src_clk => s_aclk,
      src_in => wr_rst_busy_wdch
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6]\,
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[5]\,
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[6]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[9]\,
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[7]\,
      I1 => \gaxi_full_lite.gread_ch.gaxi_pkt_fifo_rd.gaxi_mm_cc_pkt_rd.rd_fifo_free_space_reg_n_0_[8]\,
      O => \i__carry__1_i_2_n_0\
    );
\reset_gen_cc.rstblk_cc\: entity work.sys_top_s00_data_fifo_452_reset_blk_ramfifo
     port map (
      AR(0) => p_0_out_1,
      s_aclk => s_aclk,
      src_arst => inverted_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 17 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 4;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 3;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 60;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 69;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 60;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 75;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 75;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 2;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 2;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is "512x72";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 510;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 510;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 14;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 511;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 511;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 2;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 32;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 512;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 32;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 512;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 9;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 5;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 9;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 : entity is 1;
end sys_top_s00_data_fifo_452_fifo_generator_v13_2_4;

architecture STRUCTURE of sys_top_s00_data_fifo_452_fifo_generator_v13_2_4 is
  signal \<const0>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(5) <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const0>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(5) <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(5) <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(5) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const0>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(5) <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(5) <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const0>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const0>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const0>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const0>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
  empty <= \<const0>\;
  full <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axis_tdata(63) <= \<const0>\;
  m_axis_tdata(62) <= \<const0>\;
  m_axis_tdata(61) <= \<const0>\;
  m_axis_tdata(60) <= \<const0>\;
  m_axis_tdata(59) <= \<const0>\;
  m_axis_tdata(58) <= \<const0>\;
  m_axis_tdata(57) <= \<const0>\;
  m_axis_tdata(56) <= \<const0>\;
  m_axis_tdata(55) <= \<const0>\;
  m_axis_tdata(54) <= \<const0>\;
  m_axis_tdata(53) <= \<const0>\;
  m_axis_tdata(52) <= \<const0>\;
  m_axis_tdata(51) <= \<const0>\;
  m_axis_tdata(50) <= \<const0>\;
  m_axis_tdata(49) <= \<const0>\;
  m_axis_tdata(48) <= \<const0>\;
  m_axis_tdata(47) <= \<const0>\;
  m_axis_tdata(46) <= \<const0>\;
  m_axis_tdata(45) <= \<const0>\;
  m_axis_tdata(44) <= \<const0>\;
  m_axis_tdata(43) <= \<const0>\;
  m_axis_tdata(42) <= \<const0>\;
  m_axis_tdata(41) <= \<const0>\;
  m_axis_tdata(40) <= \<const0>\;
  m_axis_tdata(39) <= \<const0>\;
  m_axis_tdata(38) <= \<const0>\;
  m_axis_tdata(37) <= \<const0>\;
  m_axis_tdata(36) <= \<const0>\;
  m_axis_tdata(35) <= \<const0>\;
  m_axis_tdata(34) <= \<const0>\;
  m_axis_tdata(33) <= \<const0>\;
  m_axis_tdata(32) <= \<const0>\;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9) <= \<const0>\;
  m_axis_tdata(8) <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(3) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(7) <= \<const0>\;
  m_axis_tid(6) <= \<const0>\;
  m_axis_tid(5) <= \<const0>\;
  m_axis_tid(4) <= \<const0>\;
  m_axis_tid(3) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_fifo_gen: entity work.sys_top_s00_data_fifo_452_fifo_generator_v13_2_4_synth
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(3 downto 2) => m_axi_rresp(1 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(1) => m_axi_ruser(0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram\(0) => m_axi_rlast,
      DI(55) => s_axi_awid(0),
      DI(54 downto 23) => s_axi_awaddr(31 downto 0),
      DI(22 downto 19) => s_axi_awlen(3 downto 0),
      DI(18 downto 16) => s_axi_awsize(2 downto 0),
      DI(15 downto 14) => s_axi_awburst(1 downto 0),
      DI(13 downto 12) => s_axi_awlock(1 downto 0),
      DI(11 downto 8) => s_axi_awcache(3 downto 0),
      DI(7 downto 5) => s_axi_awprot(2 downto 0),
      DI(4 downto 1) => s_axi_awqos(3 downto 0),
      DI(0) => s_axi_awuser(0),
      DIADI(15 downto 9) => s_axi_wdata(6 downto 0),
      DIADI(8) => s_axi_wstrb(7),
      DIADI(7 downto 2) => s_axi_wstrb(5 downto 0),
      DIADI(1) => s_axi_wuser(0),
      DIADI(0) => s_axi_wlast,
      I555(55) => s_axi_arid(0),
      I555(54 downto 23) => s_axi_araddr(31 downto 0),
      I555(22 downto 19) => s_axi_arlen(3 downto 0),
      I555(18 downto 16) => s_axi_arsize(2 downto 0),
      I555(15 downto 14) => s_axi_arburst(1 downto 0),
      I555(13 downto 12) => s_axi_arlock(1 downto 0),
      I555(11 downto 8) => s_axi_arcache(3 downto 0),
      I555(7 downto 5) => s_axi_arprot(2 downto 0),
      I555(4 downto 1) => s_axi_arqos(3 downto 0),
      I555(0) => s_axi_aruser(0),
      Q(74) => m_axi_wid(0),
      Q(73 downto 10) => m_axi_wdata(63 downto 0),
      Q(9 downto 2) => m_axi_wstrb(7 downto 0),
      Q(1) => m_axi_wuser(0),
      Q(0) => m_axi_wlast,
      \gfwd_rev_pipeline1.m_valid_i_reg\ => m_axi_awvalid,
      \gfwd_rev_pipeline1.m_valid_i_reg_0\ => m_axi_arvalid,
      \gfwd_rev_pipeline1.storage_data1_reg[59]\(55) => m_axi_awid(0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]\(54 downto 23) => m_axi_awaddr(31 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]\(22 downto 19) => m_axi_awlen(3 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]\(18 downto 16) => m_axi_awsize(2 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]\(15 downto 14) => m_axi_awburst(1 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]\(13 downto 12) => m_axi_awlock(1 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]\(11 downto 8) => m_axi_awcache(3 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]\(7 downto 5) => m_axi_awprot(2 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]\(4 downto 1) => m_axi_awqos(3 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]\(0) => m_axi_awuser(0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(55) => m_axi_arid(0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(54 downto 23) => m_axi_araddr(31 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(22 downto 19) => m_axi_arlen(3 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(18 downto 16) => m_axi_arsize(2 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(15 downto 14) => m_axi_arburst(1 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(13 downto 12) => m_axi_arlock(1 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(11 downto 8) => m_axi_arcache(3 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(7 downto 5) => m_axi_arprot(2 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(4 downto 1) => m_axi_arqos(3 downto 0),
      \gfwd_rev_pipeline1.storage_data1_reg[59]_0\(0) => m_axi_aruser(0),
      \goreg_bm.dout_i_reg[68]\(68) => s_axi_rid(0),
      \goreg_bm.dout_i_reg[68]\(67 downto 4) => s_axi_rdata(63 downto 0),
      \goreg_bm.dout_i_reg[68]\(3 downto 2) => s_axi_rresp(1 downto 0),
      \goreg_bm.dout_i_reg[68]\(1) => s_axi_ruser(0),
      \goreg_bm.dout_i_reg[68]\(0) => s_axi_rlast,
      m_axi_arready => m_axi_arready,
      m_axi_awready => m_axi_awready,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(56 downto 0) => s_axi_wdata(63 downto 7),
      s_axi_wid(0) => s_axi_wid(0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(0) => s_axi_wstrb(6),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 1;
  attribute C_AXI_READ_FIFO_DELAY : integer;
  attribute C_AXI_READ_FIFO_DELAY of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 1;
  attribute C_AXI_READ_FIFO_DEPTH : integer;
  attribute C_AXI_READ_FIFO_DEPTH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 512;
  attribute C_AXI_READ_FIFO_TYPE : string;
  attribute C_AXI_READ_FIFO_TYPE of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is "bram";
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 1;
  attribute C_AXI_WRITE_FIFO_DELAY : integer;
  attribute C_AXI_WRITE_FIFO_DELAY of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 1;
  attribute C_AXI_WRITE_FIFO_DEPTH : integer;
  attribute C_AXI_WRITE_FIFO_DEPTH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 512;
  attribute C_AXI_WRITE_FIFO_TYPE : string;
  attribute C_AXI_WRITE_FIFO_TYPE of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is "bram";
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is "zynq";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 2;
  attribute P_PRIM_FIFO_TYPE : string;
  attribute P_PRIM_FIFO_TYPE of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is "512x72";
  attribute P_READ_FIFO_DEPTH_LOG : integer;
  attribute P_READ_FIFO_DEPTH_LOG of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 9;
  attribute P_WIDTH_RACH : integer;
  attribute P_WIDTH_RACH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 60;
  attribute P_WIDTH_RDCH : integer;
  attribute P_WIDTH_RDCH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 69;
  attribute P_WIDTH_WACH : integer;
  attribute P_WIDTH_WACH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 60;
  attribute P_WIDTH_WDCH : integer;
  attribute P_WIDTH_WDCH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 75;
  attribute P_WIDTH_WRCH : integer;
  attribute P_WIDTH_WRCH of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 4;
  attribute P_WRITE_FIFO_DEPTH_LOG : integer;
  attribute P_WRITE_FIFO_DEPTH_LOG of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo : entity is 9;
end sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo;

architecture STRUCTURE of sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_buser\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_almost_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axis_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_bready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_s_axi_bvalid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_s_axis_tready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_wr_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axis_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axis_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_axis_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_dout_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_arregion_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axi_awregion_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tdata_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tdest_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tkeep_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_m_axis_tuser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_s_axi_bid_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_s_axi_bresp_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_s_axi_buser_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gen_fifo.fifo_gen_inst_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_AXI_ADDR_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 32;
  attribute C_AXI_ARUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_AWUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_BUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_DATA_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 64;
  attribute C_AXI_ID_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 4;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_AXI_RUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \gen_fifo.fifo_gen_inst\ : label is 3;
  attribute C_AXI_WUSER_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \gen_fifo.fifo_gen_inst\ : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \gen_fifo.fifo_gen_inst\ : label is 60;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \gen_fifo.fifo_gen_inst\ : label is 69;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \gen_fifo.fifo_gen_inst\ : label is 60;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \gen_fifo.fifo_gen_inst\ : label is 75;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \gen_fifo.fifo_gen_inst\ : label is 75;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \gen_fifo.fifo_gen_inst\ : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_FAMILY of \gen_fifo.fifo_gen_inst\ : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \gen_fifo.fifo_gen_inst\ : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \gen_fifo.fifo_gen_inst\ : label is "512x72";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \gen_fifo.fifo_gen_inst\ : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \gen_fifo.fifo_gen_inst\ : label is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \gen_fifo.fifo_gen_inst\ : label is 510;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \gen_fifo.fifo_gen_inst\ : label is 30;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \gen_fifo.fifo_gen_inst\ : label is 510;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \gen_fifo.fifo_gen_inst\ : label is 14;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \gen_fifo.fifo_gen_inst\ : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \gen_fifo.fifo_gen_inst\ : label is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \gen_fifo.fifo_gen_inst\ : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \gen_fifo.fifo_gen_inst\ : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \gen_fifo.fifo_gen_inst\ : label is 511;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \gen_fifo.fifo_gen_inst\ : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \gen_fifo.fifo_gen_inst\ : label is 511;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \gen_fifo.fifo_gen_inst\ : label is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \gen_fifo.fifo_gen_inst\ : label is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \gen_fifo.fifo_gen_inst\ : label is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \gen_fifo.fifo_gen_inst\ : label is 2;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \gen_fifo.fifo_gen_inst\ : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \gen_fifo.fifo_gen_inst\ : label is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \gen_fifo.fifo_gen_inst\ : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \gen_fifo.fifo_gen_inst\ : label is 32;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \gen_fifo.fifo_gen_inst\ : label is 512;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \gen_fifo.fifo_gen_inst\ : label is 32;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \gen_fifo.fifo_gen_inst\ : label is 512;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \gen_fifo.fifo_gen_inst\ : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \gen_fifo.fifo_gen_inst\ : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \gen_fifo.fifo_gen_inst\ : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \gen_fifo.fifo_gen_inst\ : label is 9;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \gen_fifo.fifo_gen_inst\ : label is 5;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \gen_fifo.fifo_gen_inst\ : label is 9;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \gen_fifo.fifo_gen_inst\ : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \gen_fifo.fifo_gen_inst\ : label is 1;
begin
  \^m_axi_bid\(0) <= m_axi_bid(0);
  \^m_axi_bresp\(1 downto 0) <= m_axi_bresp(1 downto 0);
  \^m_axi_buser\(0) <= m_axi_buser(0);
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^s_axi_bready\ <= s_axi_bready;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_bready <= \^s_axi_bready\;
  s_axi_bid(0) <= \^m_axi_bid\(0);
  s_axi_bresp(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  s_axi_buser(0) <= \^m_axi_buser\(0);
  s_axi_bvalid <= \^m_axi_bvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fifo.fifo_gen_inst\: entity work.sys_top_s00_data_fifo_452_fifo_generator_v13_2_4
     port map (
      almost_empty => \NLW_gen_fifo.fifo_gen_inst_almost_empty_UNCONNECTED\,
      almost_full => \NLW_gen_fifo.fifo_gen_inst_almost_full_UNCONNECTED\,
      axi_ar_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_ar_data_count_UNCONNECTED\(5 downto 0),
      axi_ar_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED\,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => \NLW_gen_fifo.fifo_gen_inst_axi_ar_overflow_UNCONNECTED\,
      axi_ar_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED\,
      axi_ar_prog_empty_thresh(4 downto 0) => B"00000",
      axi_ar_prog_full => \NLW_gen_fifo.fifo_gen_inst_axi_ar_prog_full_UNCONNECTED\,
      axi_ar_prog_full_thresh(4 downto 0) => B"00000",
      axi_ar_rd_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED\(5 downto 0),
      axi_ar_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED\,
      axi_ar_underflow => \NLW_gen_fifo.fifo_gen_inst_axi_ar_underflow_UNCONNECTED\,
      axi_ar_wr_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED\(5 downto 0),
      axi_aw_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_aw_data_count_UNCONNECTED\(5 downto 0),
      axi_aw_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED\,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => \NLW_gen_fifo.fifo_gen_inst_axi_aw_overflow_UNCONNECTED\,
      axi_aw_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED\,
      axi_aw_prog_empty_thresh(4 downto 0) => B"00000",
      axi_aw_prog_full => \NLW_gen_fifo.fifo_gen_inst_axi_aw_prog_full_UNCONNECTED\,
      axi_aw_prog_full_thresh(4 downto 0) => B"00000",
      axi_aw_rd_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED\(5 downto 0),
      axi_aw_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED\,
      axi_aw_underflow => \NLW_gen_fifo.fifo_gen_inst_axi_aw_underflow_UNCONNECTED\,
      axi_aw_wr_data_count(5 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED\(5 downto 0),
      axi_b_data_count(4 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_b_data_count_UNCONNECTED\(4 downto 0),
      axi_b_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_b_dbiterr_UNCONNECTED\,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => \NLW_gen_fifo.fifo_gen_inst_axi_b_overflow_UNCONNECTED\,
      axi_b_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axi_b_prog_empty_UNCONNECTED\,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => \NLW_gen_fifo.fifo_gen_inst_axi_b_prog_full_UNCONNECTED\,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED\(4 downto 0),
      axi_b_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_b_sbiterr_UNCONNECTED\,
      axi_b_underflow => \NLW_gen_fifo.fifo_gen_inst_axi_b_underflow_UNCONNECTED\,
      axi_b_wr_data_count(4 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED\(4 downto 0),
      axi_r_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_r_data_count_UNCONNECTED\(9 downto 0),
      axi_r_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_r_dbiterr_UNCONNECTED\,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => \NLW_gen_fifo.fifo_gen_inst_axi_r_overflow_UNCONNECTED\,
      axi_r_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axi_r_prog_empty_UNCONNECTED\,
      axi_r_prog_empty_thresh(8 downto 0) => B"000000000",
      axi_r_prog_full => \NLW_gen_fifo.fifo_gen_inst_axi_r_prog_full_UNCONNECTED\,
      axi_r_prog_full_thresh(8 downto 0) => B"000000000",
      axi_r_rd_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED\(9 downto 0),
      axi_r_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_r_sbiterr_UNCONNECTED\,
      axi_r_underflow => \NLW_gen_fifo.fifo_gen_inst_axi_r_underflow_UNCONNECTED\,
      axi_r_wr_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED\(9 downto 0),
      axi_w_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_w_data_count_UNCONNECTED\(9 downto 0),
      axi_w_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_w_dbiterr_UNCONNECTED\,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => \NLW_gen_fifo.fifo_gen_inst_axi_w_overflow_UNCONNECTED\,
      axi_w_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axi_w_prog_empty_UNCONNECTED\,
      axi_w_prog_empty_thresh(8 downto 0) => B"000000000",
      axi_w_prog_full => \NLW_gen_fifo.fifo_gen_inst_axi_w_prog_full_UNCONNECTED\,
      axi_w_prog_full_thresh(8 downto 0) => B"000000000",
      axi_w_rd_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED\(9 downto 0),
      axi_w_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axi_w_sbiterr_UNCONNECTED\,
      axi_w_underflow => \NLW_gen_fifo.fifo_gen_inst_axi_w_underflow_UNCONNECTED\,
      axi_w_wr_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED\(9 downto 0),
      axis_data_count(10 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axis_data_count_UNCONNECTED\(10 downto 0),
      axis_dbiterr => \NLW_gen_fifo.fifo_gen_inst_axis_dbiterr_UNCONNECTED\,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => \NLW_gen_fifo.fifo_gen_inst_axis_overflow_UNCONNECTED\,
      axis_prog_empty => \NLW_gen_fifo.fifo_gen_inst_axis_prog_empty_UNCONNECTED\,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => \NLW_gen_fifo.fifo_gen_inst_axis_prog_full_UNCONNECTED\,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axis_rd_data_count_UNCONNECTED\(10 downto 0),
      axis_sbiterr => \NLW_gen_fifo.fifo_gen_inst_axis_sbiterr_UNCONNECTED\,
      axis_underflow => \NLW_gen_fifo.fifo_gen_inst_axis_underflow_UNCONNECTED\,
      axis_wr_data_count(10 downto 0) => \NLW_gen_fifo.fifo_gen_inst_axis_wr_data_count_UNCONNECTED\(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_data_count_UNCONNECTED\(9 downto 0),
      dbiterr => \NLW_gen_fifo.fifo_gen_inst_dbiterr_UNCONNECTED\,
      din(17 downto 0) => B"000000000000000000",
      dout(17 downto 0) => \NLW_gen_fifo.fifo_gen_inst_dout_UNCONNECTED\(17 downto 0),
      empty => \NLW_gen_fifo.fifo_gen_inst_empty_UNCONNECTED\,
      full => \NLW_gen_fifo.fifo_gen_inst_full_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '1',
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => m_axi_arid(0),
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => m_axi_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_arregion_UNCONNECTED\(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => m_axi_aruser(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => m_axi_awid(0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => m_axi_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axi_awregion_UNCONNECTED\(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => m_axi_awuser(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => \NLW_gen_fifo.fifo_gen_inst_m_axi_bready_UNCONNECTED\,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => m_axi_ruser(0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wid(0) => m_axi_wid(0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wuser(0) => m_axi_wuser(0),
      m_axi_wvalid => m_axi_wvalid,
      m_axis_tdata(63 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tdata_UNCONNECTED\(63 downto 0),
      m_axis_tdest(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tdest_UNCONNECTED\(3 downto 0),
      m_axis_tid(7 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tid_UNCONNECTED\(7 downto 0),
      m_axis_tkeep(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tkeep_UNCONNECTED\(3 downto 0),
      m_axis_tlast => \NLW_gen_fifo.fifo_gen_inst_m_axis_tlast_UNCONNECTED\,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tstrb_UNCONNECTED\(3 downto 0),
      m_axis_tuser(3 downto 0) => \NLW_gen_fifo.fifo_gen_inst_m_axis_tuser_UNCONNECTED\(3 downto 0),
      m_axis_tvalid => \NLW_gen_fifo.fifo_gen_inst_m_axis_tvalid_UNCONNECTED\,
      overflow => \NLW_gen_fifo.fifo_gen_inst_overflow_UNCONNECTED\,
      prog_empty => \NLW_gen_fifo.fifo_gen_inst_prog_empty_UNCONNECTED\,
      prog_empty_thresh(9 downto 0) => B"0000000000",
      prog_empty_thresh_assert(9 downto 0) => B"0000000000",
      prog_empty_thresh_negate(9 downto 0) => B"0000000000",
      prog_full => \NLW_gen_fifo.fifo_gen_inst_prog_full_UNCONNECTED\,
      prog_full_thresh(9 downto 0) => B"0000000000",
      prog_full_thresh_assert(9 downto 0) => B"0000000000",
      prog_full_thresh_negate(9 downto 0) => B"0000000000",
      rd_clk => '0',
      rd_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_rd_data_count_UNCONNECTED\(9 downto 0),
      rd_en => '0',
      rd_rst => '0',
      rd_rst_busy => \NLW_gen_fifo.fifo_gen_inst_rd_rst_busy_UNCONNECTED\,
      rst => '0',
      s_aclk => aclk,
      s_aclk_en => '1',
      s_aresetn => aresetn,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arlock(1 downto 0) => s_axi_arlock(1 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => s_axi_aruser(0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => s_axi_awuser(0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => \NLW_gen_fifo.fifo_gen_inst_s_axi_bid_UNCONNECTED\(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => \NLW_gen_fifo.fifo_gen_inst_s_axi_bresp_UNCONNECTED\(1 downto 0),
      s_axi_buser(0) => \NLW_gen_fifo.fifo_gen_inst_s_axi_buser_UNCONNECTED\(0),
      s_axi_bvalid => \NLW_gen_fifo.fifo_gen_inst_s_axi_bvalid_UNCONNECTED\,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => s_axi_ruser(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wid(0) => s_axi_wid(0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wuser(0) => s_axi_wuser(0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => \NLW_gen_fifo.fifo_gen_inst_s_axis_tready_UNCONNECTED\,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => \NLW_gen_fifo.fifo_gen_inst_sbiterr_UNCONNECTED\,
      sleep => '0',
      srst => '0',
      underflow => \NLW_gen_fifo.fifo_gen_inst_underflow_UNCONNECTED\,
      valid => \NLW_gen_fifo.fifo_gen_inst_valid_UNCONNECTED\,
      wr_ack => \NLW_gen_fifo.fifo_gen_inst_wr_ack_UNCONNECTED\,
      wr_clk => '0',
      wr_data_count(9 downto 0) => \NLW_gen_fifo.fifo_gen_inst_wr_data_count_UNCONNECTED\(9 downto 0),
      wr_en => '0',
      wr_rst => '0',
      wr_rst_busy => \NLW_gen_fifo.fifo_gen_inst_wr_rst_busy_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_s00_data_fifo_452 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sys_top_s00_data_fifo_452 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of sys_top_s00_data_fifo_452 : entity is "sys_top_s00_data_fifo_444,axi_data_fifo_v2_1_18_axi_data_fifo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of sys_top_s00_data_fifo_452 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of sys_top_s00_data_fifo_452 : entity is "axi_data_fifo_v2_1_18_axi_data_fifo,Vivado 2019.1";
end sys_top_s00_data_fifo_452;

architecture STRUCTURE of sys_top_s00_data_fifo_452 is
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 1;
  attribute C_AXI_READ_FIFO_DELAY : integer;
  attribute C_AXI_READ_FIFO_DELAY of inst : label is 1;
  attribute C_AXI_READ_FIFO_DEPTH : integer;
  attribute C_AXI_READ_FIFO_DEPTH of inst : label is 512;
  attribute C_AXI_READ_FIFO_TYPE : string;
  attribute C_AXI_READ_FIFO_TYPE of inst : label is "bram";
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 1;
  attribute C_AXI_WRITE_FIFO_DELAY : integer;
  attribute C_AXI_WRITE_FIFO_DELAY of inst : label is 1;
  attribute C_AXI_WRITE_FIFO_DEPTH : integer;
  attribute C_AXI_WRITE_FIFO_DEPTH of inst : label is 512;
  attribute C_AXI_WRITE_FIFO_TYPE : string;
  attribute C_AXI_WRITE_FIFO_TYPE of inst : label is "bram";
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_PRIM_FIFO_TYPE : string;
  attribute P_PRIM_FIFO_TYPE of inst : label is "512x72";
  attribute P_READ_FIFO_DEPTH_LOG : integer;
  attribute P_READ_FIFO_DEPTH_LOG of inst : label is 9;
  attribute P_WIDTH_RACH : integer;
  attribute P_WIDTH_RACH of inst : label is 60;
  attribute P_WIDTH_RDCH : integer;
  attribute P_WIDTH_RDCH of inst : label is 69;
  attribute P_WIDTH_WACH : integer;
  attribute P_WIDTH_WACH of inst : label is 60;
  attribute P_WIDTH_WDCH : integer;
  attribute P_WIDTH_WDCH of inst : label is 75;
  attribute P_WIDTH_WRCH : integer;
  attribute P_WIDTH_WRCH of inst : label is 4;
  attribute P_WRITE_FIFO_DEPTH_LOG : integer;
  attribute P_WRITE_FIFO_DEPTH_LOG of inst : label is 9;
  attribute downgradeipidentifiedwarnings of inst : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 2.5e+08, PHASE 0.000, CLK_DOMAIN sys_top_processing_system7_0_0_FCLK_CLK3, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 2.5e+08, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN sys_top_processing_system7_0_0_FCLK_CLK3, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 2.5e+08, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN sys_top_processing_system7_0_0_FCLK_CLK3, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_aruser : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARUSER";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_awuser : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWUSER";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_ruser : signal is "xilinx.com:interface:aximm:1.0 M_AXI RUSER";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WID";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of m_axi_wuser : signal is "xilinx.com:interface:aximm:1.0 M_AXI WUSER";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_aruser : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARUSER";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_awuser : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWUSER";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_ruser : signal is "xilinx.com:interface:aximm:1.0 S_AXI RUSER";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WID";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_wuser : signal is "xilinx.com:interface:aximm:1.0 S_AXI WUSER";
begin
inst: entity work.sys_top_s00_data_fifo_452_axi_data_fifo_v2_1_18_axi_data_fifo
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => m_axi_arid(0),
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => m_axi_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => m_axi_aruser(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => m_axi_awid(0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => m_axi_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => m_axi_awuser(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => m_axi_bid(0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => m_axi_ruser(0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wid(0) => m_axi_wid(0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wuser(0) => m_axi_wuser(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arlock(1 downto 0) => s_axi_arlock(1 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => s_axi_aruser(0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => s_axi_awuser(0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => s_axi_ruser(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wid(0) => s_axi_wid(0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wuser(0) => s_axi_wuser(0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
