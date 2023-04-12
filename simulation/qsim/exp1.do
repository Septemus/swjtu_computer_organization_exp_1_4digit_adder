onerror {exit -code 1}
vlib work
vlog -work work exp1.vo
vlog -work work exp1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.full_adder_4_vlg_vec_tst -voptargs="+acc"
vcd file -direction exp1.msim.vcd
vcd add -internal full_adder_4_vlg_vec_tst/*
vcd add -internal full_adder_4_vlg_vec_tst/i1/*
run -all
quit -f
