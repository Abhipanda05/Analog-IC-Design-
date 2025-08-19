v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 10 40 10 90 {lab=#net1}
N -90 10 -30 10 {lab=#net2}
N -90 -90 -90 10 {lab=#net2}
N 10 -100 10 -20 {lab=#net2}
N -130 -100 10 -100 {lab=#net2}
N -90 -100 -90 -90 {lab=#net2}
N -130 -100 -130 60 {lab=#net2}
N 10 10 180 10 {lab=GND}
N 180 10 180 190 {lab=GND}
N 10 190 180 190 {lab=GND}
N 10 150 10 190 {lab=GND}
N -130 120 -130 190 {lab=GND}
N -130 190 10 190 {lab=GND}
N 10 190 10 230 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -10 10 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -130 90 0 0 {name=vgs value=1 savecurrent=false}
C {vsource.sym} 10 120 0 0 {name=vds value=0 savecurrent=false}
C {gnd.sym} 10 230 0 0 {name=l1 lab=GND}
C {devices/code.sym} -490 30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -500 -190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
  op 
  DC vds 0 1.8 0.05 vgs 0.4 1.0 0.1
  plot abs(vds#branch)
  plot sqrt(2*abs(vds#branch)
.ENDC
"}
