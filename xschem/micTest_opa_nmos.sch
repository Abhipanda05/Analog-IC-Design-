v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 510 -920 1310 -520 {flags=graph
y1=0.4
y2=2.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0789149e-07
x2=1.1078917e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vdb(vout)
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=ac
rawfile=$netlist_dir/micTest_opa.raw}
N -40 -10 -40 30 {lab=GND}
N -40 -110 -40 -70 {lab=vnmic}
N -40 -110 50 -110 {lab=vnmic}
N 110 -110 180 -110 {lab=vn1}
N 240 -110 290 -110 {lab=vn2}
N 510 -10 510 30 {lab=GND}
N 390 -280 390 -110 {lab=virt}
N 390 -350 440 -350 {lab=virt}
N 390 -280 440 -280 {lab=virt}
N 340 70 340 110 {lab=GND}
N 650 -60 780 -60 {lab=vout}
N 780 30 780 70 {lab=GND}
N 780 -60 780 -30 {lab=vout}
N 390 -110 410 -110 {lab=virt}
N 500 -350 570 -350 {lab=vout}
N 500 -280 570 -280 {lab=vout}
N 620 -60 650 -60 {lab=vout}
N 340 -20 340 10 {lab=#net1}
N 340 -20 410 -20 {lab=#net1}
N 350 -110 390 -110 {lab=virt}
N 390 -350 390 -280 {lab=virt}
N 570 -350 570 -280 {lab=vout}
N 640 -250 640 -230 {lab=AVDD}
N 640 -170 640 -150 {lab=GND}
N 480 -250 480 -130 {lab=AVDD}
N 480 -250 640 -250 {lab=AVDD}
N 520 -150 520 -120 {lab=vib5u}
N 520 -250 520 -210 {lab=AVDD}
N 570 -320 750 -320 {lab=vout}
N 750 -320 750 -60 {lab=vout}
C {vsource.sym} -40 -40 0 0 {name=Vmic value="0 AC 1 sin(0 100m 1e3 0 0 0)" savecurrent=false}
C {res.sym} 80 -110 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 210 -110 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -40 30 0 0 {name=l1 lab=GND}
C {res.sym} 320 -110 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 510 30 0 0 {name=l2 lab=GND}
C {res.sym} 470 -280 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 470 -350 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 340 40 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 340 110 0 0 {name=l3 lab=GND}
C {capa.sym} 780 0 0 0 {name=C3
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 780 70 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 10 -110 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} 160 -110 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 280 -110 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 390 -130 0 0 {name=p4 sig_type=std_logic lab=virt}
C {lab_wire.sym} 720 -60 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -290 -790 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
  save all
  op
  write micTest_opa_nmos.raw
  set appendwrite
  AC DEC 100 0.1 10e6
  write micTest_opa_nmos.raw
  **
  MEAS AC gain_db MAX vdb(vout) FROM=0.1 TO=10e6
  LET vm3db = gain_db - 3.0
  print vm3db
  MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
  MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
  **MEAS AC fmid  WHEN vdb(vout)=gain_db
  **Phase Measurement
  LET phase_deg = cph(vout)*180/PI
  MEAS AC phase_zero FIND phase_deg AT=fzero
  MEAS AC phase_pole FIND phase_deg AT=fpole
  **MEAS AC phase_mid  FIND phase_deg AT=fmid
  ** MEAS fero fpole using phase
  **LET phase_zero_ph = phase_mid-45
  **MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
  **
  TRAN 1u 6m
  MEAS TRAN voutpp PP v(vout) FROM=1m TO=4m
  MEAS TRAN vinpp PP v(vnmic) FROM=1m TO=4m
  LET gaintran=voutpp/vinpp
  print gaintran
  FOURIER 1k v(vout)
  plot v(vout)
  plot (vnmic)
  
.ENDC
"}
C {opa_nmos1.sym} 610 150 0 0 {name=x1}
C {vsource.sym} 640 -200 0 0 {name=Vcc value="1.8" savecurrent=false}
C {isource.sym} 520 -180 0 0 {name=I0 value=5u}
C {gnd.sym} 640 -150 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 520 -140 2 0 {name=p5 sig_type=std_logic lab=vib5u}
C {lab_wire.sym} 620 -250 0 0 {name=p7 sig_type=std_logic lab=AVDD}
C {devices/code.sym} 220 -780 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
