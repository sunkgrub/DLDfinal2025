transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+testFSM  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.testFSM xil_defaultlib.glbl

do {testFSM.udo}

run 1000ns

endsim

quit -force
