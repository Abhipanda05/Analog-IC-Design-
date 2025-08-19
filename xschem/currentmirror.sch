v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -0 50 0 {lab=#net1}
N 90 -70 90 -30 {lab=#net2}
N 90 -70 250 -70 {lab=#net2}
N 250 -70 250 40 {lab=#net2}
N 90 30 90 160 {lab=#net3}
N 250 100 250 160 {lab=#net3}
N -170 160 250 160 {lab=#net3}
N -170 140 -170 160 {lab=#net3}
N 90 -0 160 0 {lab=#net3}
N 160 0 160 160 {lab=#net3}
N -60 30 -60 160 {lab=#net3}
N -100 0 -60 -0 {lab=#net3}
N -100 -0 -100 160 {lab=#net3}
N -170 -80 -170 80 {lab=#net1}
N -170 -80 0 -80 {lab=#net1}
N -0 -80 -0 -0 {lab=#net1}
N -60 -80 -60 -30 {lab=#net1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 70 0 0 0 {name=M1
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -40 0 2 0 {name=M2
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} 250 70 0 0 {name=Vds value="1 AC 1" savecurrent=false}
C {isource.sym} -170 110 2 0 {name=Iin value=50U}
C {devices/code.sym} -390 30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -380 -280 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
  op 
  DC vds 0 1.8 0.05 
  PLOT abs(vds#branch)
  AC DEC 100 100 1000
  PLOT '1/VM(VDS#BRANCH)'
.ENDC
"}
