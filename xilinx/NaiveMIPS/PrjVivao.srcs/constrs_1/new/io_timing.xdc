create_clock -period 20.000 -name clk_in -waveform {0.000 10.000} [get_ports clk_in]
create_clock -period 90.422 -name clk_uart_in -waveform {0.000 45.211} [get_ports clk_uart_in]
create_clock -period 31.250 -name VIRTUAL_CLK_OUT2_clk_wiz_v3_6 -waveform {0.000 15.625}
create_clock -period 125.000 -name VIRTUAL_CLK_OUT1_clk_wiz_v3_6 -waveform {0.000 62.500}
create_generated_clock -name vga_clk -source [get_ports clk_in] -multiply_by 1 [get_ports vga_clk]

set_input_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay 2.000 [get_ports {base_ram_data[*]}]
set_input_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 20 [get_ports {base_ram_data[*]}]
set_input_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay 2.000 [get_ports {ext_ram_data[*]}]
set_input_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 20 [get_ports {ext_ram_data[*]}]
set_input_delay -clock [get_clocks VIRTUAL_CLK_OUT1_clk_wiz_v3_6] -min -add_delay 2.000 [get_ports {flash_data[*]}]
set_input_delay -clock [get_clocks VIRTUAL_CLK_OUT1_clk_wiz_v3_6] -max -add_delay 70.000 [get_ports {flash_data[*]}]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports {base_ram_addr[*]}]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports {base_ram_addr[*]}]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports {base_ram_data[*]}]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports {base_ram_data[*]}]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports {ext_ram_addr[*]}]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports {ext_ram_addr[*]}]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports {ext_ram_data[*]}]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports {ext_ram_data[*]}]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports base_ram_ce_n]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports base_ram_ce_n]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports base_ram_oe_n]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports base_ram_oe_n]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports base_ram_we_n]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports base_ram_we_n]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports ext_ram_ce_n]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports ext_ram_ce_n]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports ext_ram_oe_n]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports ext_ram_oe_n]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -min -add_delay -2.000 [get_ports ext_ram_we_n]
set_output_delay -clock [get_clocks VIRTUAL_CLK_OUT2_clk_wiz_v3_6] -max -add_delay 11.000 [get_ports ext_ram_we_n]
set_output_delay -clock [get_clocks vga_clk] -min -add_delay -1.000 [get_ports {vga_pixel[*]}]
set_output_delay -clock [get_clocks vga_clk] -max -add_delay 2.000 [get_ports {vga_pixel[*]}]
set_output_delay -clock [get_clocks vga_clk] -min -add_delay -1.000 [get_ports vga_de]
set_output_delay -clock [get_clocks vga_clk] -max -add_delay 2.000 [get_ports vga_de]
set_output_delay -clock [get_clocks vga_clk] -min -add_delay -1.000 [get_ports vga_hsync]
set_output_delay -clock [get_clocks vga_clk] -max -add_delay 2.000 [get_ports vga_hsync]
set_output_delay -clock [get_clocks vga_clk] -min -add_delay -1.000 [get_ports vga_vsync]
set_output_delay -clock [get_clocks vga_clk] -max -add_delay 2.000 [get_ports vga_vsync]
set_false_path -from [get_clocks clk_uart_in] -to [get_clocks CLK_OUT1_clk_wiz_v3_6]


