v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1020 -360 1090 -360 {lab=vip}
N 1500 -360 1570 -360 {lab=vim}
N 990 -110 1360 -110 {lab=ib5u}
N 830 -200 950 -200 {lab=ib5u}
N 950 -200 950 -140 {lab=ib5u}
N 950 -200 1090 -200 {lab=ib5u}
N 1090 -200 1090 -110 {lab=ib5u}
N 840 -50 950 -50 {lab=AVSS}
N 950 -80 950 -50 {lab=AVSS}
N 900 -110 950 -110 {lab=AVSS}
N 870 -110 900 -110 {lab=AVSS}
N 870 -110 870 -50 {lab=AVSS}
N 950 -50 1490 -50 {lab=AVSS}
N 1490 -110 1490 -50 {lab=AVSS}
N 1400 -110 1490 -110 {lab=AVSS}
N 1400 -80 1400 -50 {lab=AVSS}
N 1130 -330 1130 -280 {lab=#net1}
N 1130 -280 1460 -280 {lab=#net1}
N 1460 -330 1460 -280 {lab=#net1}
N 1130 -520 1130 -390 {lab=vom}
N 1460 -520 1460 -390 {lab=vout}
N 860 -690 1560 -690 {lab=AVDD}
N 1560 -690 1560 -550 {lab=AVDD}
N 1460 -690 1460 -580 {lab=AVDD}
N 1170 -550 1420 -550 {lab=vom}
N 1130 -690 1130 -580 {lab=AVDD}
N 1030 -690 1030 -550 {lab=AVDD}
N 1460 -450 1590 -450 {lab=vout}
N 1290 -550 1290 -490 {lab=vom}
N 1130 -490 1290 -490 {lab=vom}
N 1400 -280 1400 -140 {lab=#net1}
N 1030 -550 1130 -550 {lab=AVDD}
N 1460 -550 1560 -550 {lab=AVDD}
N 1130 -360 1190 -360 {lab=#net1}
N 1190 -360 1460 -360 {lab=#net1}
N 1310 -360 1310 -280 {lab=#net1}
C {iopin.sym} 1020 -360 2 0 {name=p3 lab=vip}
C {iopin.sym} 1570 -360 0 0 {name=p4 lab=vim}
C {iopin.sym} 1590 -450 0 0 {name=p7 lab=vout}
C {iopin.sym} 830 -200 2 0 {name=p8 lab=ib5u}
C {iopin.sym} 860 -690 2 0 {name=p1 lab=AVDD
}
C {iopin.sym} 840 -50 2 0 {name=p2 lab=AVSS
}
C {sky130_fd_pr/nfet_01v8.sym} 970 -110 0 1 {name=M1
L=1
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1380 -110 0 0 {name=M2
L=1
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1110 -360 0 0 {name=M3
L=2
W=5
nf=1 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1480 -360 0 1 {name=M4
L=2
W=4
nf=1 mult=5
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1150 -550 0 1 {name=M11
L=2
W=5
nf=1 mult=2
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1440 -550 0 0 {name=M5
L=2
W=5
nf=1 mult=2
model=pfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 1130 -440 0 0 {name=p5 sig_type=std_logic lab=vom}
C {devices/code.sym} 360 -160 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} 150 -720 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
 
"}
