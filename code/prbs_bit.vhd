library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity prbs_bit is 
    generic(
        type_prbs : string := "ITU-T O.150 PL9"
    );
    Port (
        clk : in std_logic;
        rst_n : in std_logic;
        data_in : in std_logic;
        data_out : out std_logic    
    );
end prbs_bit;

architecture arch_prbs_bit of prbs_bit is

signal d_xor : std_logic_vector(1 downto 0);

begin

    
    
    
    
    
    
inst_NOT_STANDARD : if type_prbs = "NOT STANDARD" generate
        constant POLY_LENGTH : integer := 7;
        constant POLY_TAP : integer := 6;
        signal d_out, d_in : std_logic_vector(POLY_LENGTH-1 downto 0);
    begin
        data_out <= d_out(POLY_LENGTH-1);
        d_in(0) <= data_in xor d_xor(0);

        inst_lower_d_in : for j in POLY_TAP-1 downto 1 generate
            d_in(j) <= d_out(j-1);
        end generate;        
        
        d_in(POLY_TAP) <= d_out(POLY_TAP-1) xor d_xor(1);
        
        inst_upper_d_in : if POLY_LENGTH-1 /= POLY_TAP generate
            inst_lower_d_in : for k in POLY_LENGTH-1 downto POLY_TAP+1 generate
                d_in(k) <= d_out(k-1);
            end generate;
        end generate;
        
        inst_xor : for i in 2 downto 0 generate
            d_xor(0) <= d_out(POLY_LENGTH-1);
            d_xor(1) <= d_out(POLY_LENGTH-1);
        end generate;
        
    
        process (clk, rst_n) 
        begin
            if rst_n = '0' then
                d_out <= (others=>'0');
            elsif rising_edge(clk) then
                d_out <= d_in;
            end if;
        end process;
    end generate;
    
    
    
    
ITU_T_O_150_PL_9 : if type_prbs = "ITU-T O.150 PL9" generate
        constant POLY_LENGTH : integer := 9;
        constant POLY_TAP : integer := 5;
        signal d_out, d_in : std_logic_vector(POLY_LENGTH-1 downto 0);
    begin
        data_out <= d_out(POLY_LENGTH-1);
        d_in(0) <= data_in xor d_xor(0);

        inst_lower_d_in : for j in POLY_TAP-1 downto 1 generate
            d_in(j) <= d_out(j-1);
        end generate;        
        
        d_in(POLY_TAP) <= d_out(POLY_TAP-1) xor d_xor(1);
        
        inst_upper_d_in : if POLY_LENGTH-1 /= POLY_TAP generate
            inst_lower_d_in : for k in POLY_LENGTH-1 downto POLY_TAP+1 generate
                d_in(k) <= d_out(k-1);
            end generate;
        end generate;
        
        inst_xor : for i in 2 downto 0 generate
            d_xor(0) <= d_out(POLY_LENGTH-1);
            d_xor(1) <= d_out(POLY_LENGTH-1);
        end generate;
        
    
        process (clk, rst_n) 
        begin
            if rst_n = '0' then
                d_out <= (others=>'0');
            elsif rising_edge(clk) then
                d_out <= d_in;
            end if;
        end process;
    end generate;




ITU_T_O_150_PL_11 : if type_prbs = "ITU-T O.150 PL11" generate
        constant POLY_LENGTH : integer := 11;
        constant POLY_TAP : integer := 9;
        signal d_out, d_in : std_logic_vector(POLY_LENGTH-1 downto 0);
    begin
        data_out <= d_out(POLY_LENGTH-1);
        d_in(0) <= data_in xor d_xor(0);

        inst_lower_d_in : for j in POLY_TAP-1 downto 1 generate
            d_in(j) <= d_out(j-1);
        end generate;        
        
        d_in(POLY_TAP) <= d_out(POLY_TAP-1) xor d_xor(1);
        
        inst_upper_d_in : if POLY_LENGTH-1 /= POLY_TAP generate
            inst_lower_d_in : for k in POLY_LENGTH-1 downto POLY_TAP+1 generate
                d_in(k) <= d_out(k-1);
            end generate;
        end generate;
        
        inst_xor : for i in 2 downto 0 generate
            d_xor(0) <= d_out(POLY_LENGTH-1);
            d_xor(1) <= d_out(POLY_LENGTH-1);
        end generate;
        
    
        process (clk, rst_n) 
        begin
            if rst_n = '0' then
                d_out <= (others=>'0');
            elsif rising_edge(clk) then
                d_out <= d_in;
            end if;
        end process;
    end generate;






ITU_T_O_150_PL_15 : if type_prbs = "ITU-T O.150 PL15" generate
        constant POLY_LENGTH : integer := 15;
        constant POLY_TAP : integer := 14;
        signal d_out, d_in : std_logic_vector(POLY_LENGTH-1 downto 0);
    begin
        data_out <= d_out(POLY_LENGTH-1);
        d_in(0) <= data_in xor d_xor(0);

        inst_lower_d_in : for j in POLY_TAP-1 downto 1 generate
            d_in(j) <= d_out(j-1);
        end generate;        
        
        d_in(POLY_TAP) <= d_out(POLY_TAP-1) xor d_xor(1);
        
        inst_upper_d_in : if POLY_LENGTH-1 /= POLY_TAP generate
            inst_lower_d_in : for k in POLY_LENGTH-1 downto POLY_TAP+1 generate
                d_in(k) <= d_out(k-1);
            end generate;
        end generate;
        
        inst_xor : for i in 2 downto 0 generate
            d_xor(0) <= d_out(POLY_LENGTH-1);
            d_xor(1) <= d_out(POLY_LENGTH-1);
        end generate;
        
    
        process (clk, rst_n) 
        begin
            if rst_n = '0' then
                d_out <= (others=>'0');
            elsif rising_edge(clk) then
                d_out <= d_in;
            end if;
        end process;
    end generate;







OIF_CEI_P_02_0 : if type_prbs = "OIF-CEI-P-02.0" generate
        constant POLY_LENGTH : integer := 17;
        constant POLY_TAP : integer := 14;
        signal d_out, d_in : std_logic_vector(POLY_LENGTH-1 downto 0);
    begin
        data_out <= d_out(POLY_LENGTH-1);
        d_in(0) <= data_in xor d_xor(0);

        inst_lower_d_in : for j in POLY_TAP-1 downto 1 generate
            d_in(j) <= d_out(j-1);
        end generate;        
        
        d_in(POLY_TAP) <= d_out(POLY_TAP-1) xor d_xor(1);
        
        inst_upper_d_in : if POLY_LENGTH-1 /= POLY_TAP generate
            inst_lower_d_in : for k in POLY_LENGTH-1 downto POLY_TAP+1 generate
                d_in(k) <= d_out(k-1);
            end generate;
        end generate;
        
        inst_xor : for i in 2 downto 0 generate
            d_xor(0) <= d_out(POLY_LENGTH-1);
            d_xor(1) <= d_out(POLY_LENGTH-1);
        end generate;
        
    
        process (clk, rst_n) 
        begin
            if rst_n = '0' then
                d_out <= (others=>'0');
            elsif rising_edge(clk) then
                d_out <= d_in;
            end if;
        end process;
    end generate;




ITU_T_O_150_PL_20 : if type_prbs = "ITU-T O.150 PL20" generate
        constant POLY_LENGTH : integer := 20;
        constant POLY_TAP : integer := 3;
        signal d_out, d_in : std_logic_vector(POLY_LENGTH-1 downto 0);
    begin
        data_out <= d_out(POLY_LENGTH-1);
        d_in(0) <= data_in xor d_xor(0);

        inst_lower_d_in : for j in POLY_TAP-1 downto 1 generate
            d_in(j) <= d_out(j-1);
        end generate;        
        
        d_in(POLY_TAP) <= d_out(POLY_TAP-1) xor d_xor(1);
        
        inst_upper_d_in : if POLY_LENGTH-1 /= POLY_TAP generate
            inst_lower_d_in : for k in POLY_LENGTH-1 downto POLY_TAP+1 generate
                d_in(k) <= d_out(k-1);
            end generate;
        end generate;
        
        inst_xor : for i in 2 downto 0 generate
            d_xor(0) <= d_out(POLY_LENGTH-1);
            d_xor(1) <= d_out(POLY_LENGTH-1);
        end generate;
        
    
        process (clk, rst_n) 
        begin
            if rst_n = '0' then
                d_out <= (others=>'0');
            elsif rising_edge(clk) then
                d_out <= d_in;
            end if;
        end process;
    end generate;

ITU_T_O_150_PL_23 : if type_prbs = "ITU-T O.150 PL23" generate
        constant POLY_LENGTH : integer := 23;
        constant POLY_TAP : integer := 18;
        signal d_out, d_in : std_logic_vector(POLY_LENGTH-1 downto 0);
    begin
        data_out <= d_out(POLY_LENGTH-1);
        d_in(0) <= data_in xor d_xor(0);

        inst_lower_d_in : for j in POLY_TAP-1 downto 1 generate
            d_in(j) <= d_out(j-1);
        end generate;        
        
        d_in(POLY_TAP) <= d_out(POLY_TAP-1) xor d_xor(1);
        
        inst_upper_d_in : if POLY_LENGTH-1 /= POLY_TAP generate
            inst_lower_d_in : for k in POLY_LENGTH-1 downto POLY_TAP+1 generate
                d_in(k) <= d_out(k-1);
            end generate;
        end generate;
        
        inst_xor : for i in 2 downto 0 generate
            d_xor(0) <= d_out(POLY_LENGTH-1);
            d_xor(1) <= d_out(POLY_LENGTH-1);
        end generate;
        
    
        process (clk, rst_n) 
        begin
            if rst_n = '0' then
                d_out <= (others=>'0');
            elsif rising_edge(clk) then
                d_out <= d_in;
            end if;
        end process;
    end generate;



ITU_T_O_150_PL_29 : if type_prbs = "ITU-T O.150 PL29" generate
        constant POLY_LENGTH : integer := 29;
        constant POLY_TAP : integer := 27;
        signal d_out, d_in : std_logic_vector(POLY_LENGTH-1 downto 0);
    begin
        data_out <= d_out(POLY_LENGTH-1);
        d_in(0) <= data_in xor d_xor(0);

        inst_lower_d_in : for j in POLY_TAP-1 downto 1 generate
            d_in(j) <= d_out(j-1);
        end generate;        
        
        d_in(POLY_TAP) <= d_out(POLY_TAP-1) xor d_xor(1);
        
        inst_upper_d_in : if POLY_LENGTH-1 /= POLY_TAP generate
            inst_lower_d_in : for k in POLY_LENGTH-1 downto POLY_TAP+1 generate
                d_in(k) <= d_out(k-1);
            end generate;
        end generate;
        
        inst_xor : for i in 2 downto 0 generate
            d_xor(0) <= d_out(POLY_LENGTH-1);
            d_xor(1) <= d_out(POLY_LENGTH-1);
        end generate;
        
    
        process (clk, rst_n) 
        begin
            if rst_n = '0' then
                d_out <= (others=>'0');
            elsif rising_edge(clk) then
                d_out <= d_in;
            end if;
        end process;
    end generate;



ITU_T_O_150_PL31_OIF_CEI_02_0 : if type_prbs = "ITU-T O.150 PL31 / OIF-CEI-02.0" generate
        constant POLY_LENGTH : integer := 31;
        constant POLY_TAP : integer := 28;
        signal d_out, d_in : std_logic_vector(POLY_LENGTH-1 downto 0);
    begin
        data_out <= d_out(POLY_LENGTH-1);
        d_in(0) <= data_in xor d_xor(0);

        inst_lower_d_in : for j in POLY_TAP-1 downto 1 generate
            d_in(j) <= d_out(j-1);
        end generate;        
        
        d_in(POLY_TAP) <= d_out(POLY_TAP-1) xor d_xor(1);
        
        inst_upper_d_in : if POLY_LENGTH-1 /= POLY_TAP generate
            inst_lower_d_in : for k in POLY_LENGTH-1 downto POLY_TAP+1 generate
                d_in(k) <= d_out(k-1);
            end generate;
        end generate;
        
        inst_xor : for i in 2 downto 0 generate
            d_xor(0) <= d_out(POLY_LENGTH-1);
            d_xor(1) <= d_out(POLY_LENGTH-1);
        end generate;
        
    
        process (clk, rst_n) 
        begin
            if rst_n = '0' then
                d_out <= (others=>'0');
            elsif rising_edge(clk) then
                d_out <= d_in;
            end if;
        end process;
    end generate;





end arch_prbs_bit;
