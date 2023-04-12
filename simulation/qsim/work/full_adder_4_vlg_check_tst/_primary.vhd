library verilog;
use verilog.vl_types.all;
entity full_adder_4_vlg_check_tst is
    port(
        c3              : in     vl_logic;
        codeout         : in     vl_logic_vector(7 downto 0);
        sum             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end full_adder_4_vlg_check_tst;
