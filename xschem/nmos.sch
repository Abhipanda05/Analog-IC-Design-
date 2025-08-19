v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -260 -60 -260 -40 {lab=vg}
N -260 -60 -170 -60 {lab=vg}
N -130 -130 -130 -90 {lab=vd}
N -130 -130 50 -130 {lab=vd}
N 50 -130 50 -50 {lab=vd}
N 50 10 50 90 {lab=GND}
N -260 90 50 90 {lab=GND}
N -260 20 -260 90 {lab=GND}
N -130 -60 -100 -60 {lab=GND}
N -100 -60 -100 10 {lab=GND}
N -130 -30 -130 90 {lab=GND}
N -130 10 -100 10 {lab=GND}
N -130 90 -130 110 {lab=GND}
C {devices/code.sym} -550 20 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -150 -60 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -260 -10 0 0 {name=vgs value=1 savecurrent=false}
C {vsource.sym} 50 -20 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -130 110 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -560 -200 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
  op 
  DC vds 0 1.8 0.05 vgs 0.4 1.0 0.1
.ENDC
"}
C {lab_wire.sym} -210 -60 0 0 {name=p1 sig_type=std_logic lab=vg
}
C {lab_wire.sym} -50 -130 0 0 {name=p2 sig_type=std_logic lab=vd}
