
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name VGA_CONTROLER -dir "/home/ise/VHDL_COMPARTIDA/XILINX/ISE/VGA_CONTROLER/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "VGA_CONTROLER.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {gnerador_hsync.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {generador_vsync.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {generador_patrones.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {generador_blank.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {contador_vertical.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {contador_horizontal.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {VGA_CONTROLER.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top VGA_CONTROLER $srcset
add_files [list {VGA_CONTROLER.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
