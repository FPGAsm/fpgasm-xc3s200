setMode -bscan
setCable -p auto
addDevice -p 1 -file test.bit
# adjust to your system's xilinx directory:
# addDevice -p 2 -file ~/m2/opt/ISE/14.7/ISE_DS/xcf/data/xcf02s.bsd
program -p 1
exit
