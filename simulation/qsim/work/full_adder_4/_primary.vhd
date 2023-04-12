library verilog;
use verilog.vl_types.all;
entity full_adder_4 is
    port(
        c3              : out    vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        c0              : in     vl_logic;
        codeout         : out    vl_logic_vector(7 downto 0);
        sum             : out    vl_logic_vector(3 downto 0)
    );
end full_adder_4;
