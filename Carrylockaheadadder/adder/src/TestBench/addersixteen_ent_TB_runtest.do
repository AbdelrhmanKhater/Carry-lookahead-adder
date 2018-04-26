SetActiveLib -work
comp -include "$DSN\src\adderonebit.vhd" 
comp -include "$DSN\src\Carrylockaheadfourbit.vhd" 
comp -include "$DSN\src\Adderfourbits.vhd" 
comp -include "$DSN\src\addersixteenbits.vhd" 
comp -include "$DSN\src\TestBench\addersixteen_ent_TB.vhd" 
asim TESTBENCH_FOR_addersixteen_ent 
wave 
wave -noreg cin
wave -noreg x
wave -noreg y
wave -noreg s
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\addersixteen_ent_TB_tim_cfg.vhd" 
# asim TIMING_FOR_addersixteen_ent 
