library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity prbs is
    generic(
        prbs_type : string := "NOT STANDARD"
    );
    Port (
        clk : in std_logic;
        rst_n : in std_logic;
        data_in : in std_logic;
        data_out : out std_logic    
    );
end prbs;

architecture Behavioral of prbs is

component prbs_bit is 
    generic(
        type_prbs : string := "NOT STANDARD"
    );
    Port (
        clk : in std_logic;
        rst_n : in std_logic;
        data_in : in std_logic;
        data_out : out std_logic    
    );
end component;


begin

inst_prbs_bit : prbs_bit
            generic map (
                type_prbs => "NOT STANDARD"
            )
            Port map (
                clk => clk,
                rst_n => rst_n,
                data_in => data_in,
                data_out => data_out
            );
    
    

end Behavioral;
