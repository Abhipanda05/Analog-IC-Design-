v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 20 110 60 {lab=#net1}
N 110 120 110 170 {lab=vcm}
N -100 170 110 170 {lab=vcm}
N -100 120 -100 170 {lab=vcm}
N -180 110 -140 110 {lab=GND}
N -180 110 -180 140 {lab=GND}
N 70 110 70 140 {lab=GND}
N -180 140 70 140 {lab=GND}
N -180 140 -180 150 {lab=GND}
N 70 30 70 70 {lab=vin}
N -280 30 70 30 {lab=vin}
N -280 30 -280 100 {lab=vin}
N -160 70 -140 70 {lab=vin}
N -160 30 -160 70 {lab=vin}
N -90 -70 180 -70 {lab=vip}
N -100 -70 -100 60 {lab=vip}
N -100 -70 -90 -70 {lab=vip}
N -280 160 -280 180 {lab=GND}
N 0 170 0 190 {lab=vcm}
N 0 250 0 270 {lab=GND}
N 560 80 560 100 {lab=GND}
N 120 -140 120 -130 {lab=GND}
N 120 -240 120 -200 {lab=#net2}
N 120 -240 250 -240 {lab=#net2}
N 250 -240 260 -240 {lab=#net2}
N 180 -70 190 -70 {lab=vip}
N 260 -240 270 -240 {lab=#net2}
N 300 -240 300 -90 {lab=#net2}
N 270 -240 300 -240 {lab=#net2}
N 300 -240 360 -240 {lab=#net2}
N 360 -240 360 -180 {lab=#net2}
N 480 -0 560 0 {lab=GND}
N 560 0 560 20 {lab=GND}
N 110 20 160 20 {lab=#net1}
N 160 20 160 70 {lab=#net1}
N 160 70 210 70 {lab=#net1}
N 190 -60 210 -60 {lab=vip}
N 190 -70 190 -60 {lab=vip}
N 360 -120 360 -70 {lab=#net3}
N 330 90 330 140 {lab=GND}
C {vcvs.sym} -100 90 0 0 {name=E1 value=-0.5}
C {vcvs.sym} 110 90 0 0 {name=E2 value=0.5}
C {gnd.sym} -180 150 0 0 {name=l1 lab=GND}
C {vsource.sym} -280 130 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -280 180 0 0 {name=l2 lab=GND}
C {vsource.sym} 0 220 0 0 {name=Vcm value=0.9 savecurrent=false}
C {gnd.sym} 0 270 0 0 {name=l3 lab=GND}
C {gnd.sym} 560 100 0 0 {name=l5 lab=GND}
C {vsource.sym} 120 -170 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} 120 -130 0 0 {name=l6 lab=GND}
C {isource.sym} 360 -150 0 0 {name=I0 value=5u}
C {devices/code.sym} -500 60 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -710 -430 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.temp 27
.control
  save all
  save @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
  save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
  save @m.x1.xm2.msky130_fd_pr__nfet_01v8[id]
  save @m.x1.xm2.msky130_fd_pr__nfet_01v8[gm]
  save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
  save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
  save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[id]
  save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
  save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
  save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[id]
  save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[gm]
  OP
  WRITE TB_nmos2.raw
.endc
 
  

"}
C {capa.sym} 560 50 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 330 140 0 0 {name=l4 lab=GND}
C {opa_nmos1.sym} 620 400 0 0 {name=x1}
C {lab_wire.sym} -210 30 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 60 170 0 0 {name=p3 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 30 -70 0 0 {name=p4 sig_type=std_logic lab=vip}
C {lab_wire.sym} 240 -240 0 0 {name=p1 sig_type=std_logic lab=vdd}
