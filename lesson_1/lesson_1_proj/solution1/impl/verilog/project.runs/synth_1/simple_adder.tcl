# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /mnt/centos_share/Vivado_Tutorials/vivado_hls_tutorials/lesson_1/lesson_1_proj/solution1/impl/verilog/project.cache/wt [current_project]
set_property parent.project_path /mnt/centos_share/Vivado_Tutorials/vivado_hls_tutorials/lesson_1/lesson_1_proj/solution1/impl/verilog/project.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /mnt/centos_share/Vivado_Tutorials/vivado_hls_tutorials/lesson_1/lesson_1_proj/solution1/impl/verilog/simple_adder.v
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /mnt/centos_share/Vivado_Tutorials/vivado_hls_tutorials/lesson_1/lesson_1_proj/solution1/impl/verilog/simple_adder.xdc
set_property used_in_implementation false [get_files /mnt/centos_share/Vivado_Tutorials/vivado_hls_tutorials/lesson_1/lesson_1_proj/solution1/impl/verilog/simple_adder.xdc]


synth_design -top simple_adder -part xc7z020clg484-1 -no_iobuf -mode out_of_context


write_checkpoint -force -noxdef simple_adder.dcp

catch { report_utilization -file simple_adder_utilization_synth.rpt -pb simple_adder_utilization_synth.pb }
