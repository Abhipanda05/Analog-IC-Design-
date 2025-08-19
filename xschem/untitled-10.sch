v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 -20 40 -20 {lab=#net1}
N -50 -90 -50 -50 {lab=#net1}
N 80 -90 80 -50 {lab=#net2}
N 80 -90 220 -90 {lab=#net2}
N 220 -90 220 10 {lab=#net2}
N 80 10 80 100 {lab=GND}
N 80 100 220 100 {lab=GND}
N 220 70 220 100 {lab=GND}
N 80 -20 120 -20 {lab=GND}
N 120 -20 120 100 {lab=GND}
N -140 80 -140 100 {lab=GND}
N -140 100 80 100 {lab=GND}
N -140 -110 -140 20 {lab=#net1}
N -140 -110 10 -110 {lab=#net1}
N 10 -110 10 -20 {lab=#net1}
N -50 -110 -50 -90 {lab=#net1}
N -50 10 -50 100 {lab=GND}
N -80 -20 -50 -20 {lab=GND}
N -80 -20 -80 100 {lab=GND}
N 20 100 20 120 {lab=GND}
C {simulator_commands_shown.sym} -300 -270 0 0 {name=COMMANDS
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 60 -20 0 0 {name=M1
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -30 -20 2 0 {name=M2
L=1
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} 220 40 0 0 {name=Vds value="1 AC 1" savecurrent=false}
C {gnd.sym} 20 120 0 0 {name=l1 lab=GND}
C {devices/code.sym} -420 -20 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {isource.sym} -140 50 2 0 {name=I0 value=50u}
