v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -430 80 -430 120 {lab=vnmc}
N -430 80 -380 80 {lab=vnmc}
N -320 80 -270 80 {lab=vn1}
N -210 80 -150 80 {lab=vn2}
N -430 180 -430 210 {lab=GND}
N -90 80 -50 80 {lab=virt}
N -50 80 0 80 {lab=virt}
N 10 -10 40 -10 {lab=vout}
N 40 -10 40 30 {lab=vout}
N 10 -80 40 -80 {lab=vout}
N 40 -80 40 -10 {lab=vout}
N -60 -10 -50 -10 {lab=virt}
N -60 -10 -60 80 {lab=virt}
N -60 -40 -60 -10 {lab=virt}
N -60 -80 -60 -40 {lab=virt}
N -60 -80 -50 -80 {lab=virt}
N -30 40 0 40 {lab=vcm}
N -30 40 -30 150 {lab=vcm}
N -30 210 -30 230 {lab=GND}
N 40 30 150 30 {lab=vout}
N 150 30 210 30 {lab=vout}
N 210 30 210 40 {lab=vout}
N 210 100 210 130 {lab=GND}
N 70 100 70 160 {lab=GND}
N 130 30 130 50 {lab=vout}
C {vsource.sym} -430 150 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {capa.sym} -240 80 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -350 80 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} -120 80 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -430 210 0 0 {name=l2 lab=GND}
C {gnd.sym} 70 160 0 0 {name=l3 lab=GND}
C {res.sym} -20 -10 3 0 {name=R3
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} -20 -80 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -30 180 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -30 230 0 0 {name=l4 lab=GND}
C {capa.sym} 210 70 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 210 130 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -410 80 0 0 {name=p1 sig_type=std_logic lab=vnmc}
C {lab_wire.sym} -290 80 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -170 80 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} -30 110 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {lab_wire.sym} -60 30 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 100 30 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -860 -310 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
  .OP
  save all
  write mictest.raw
  AC DEC 100 1 10e6
**
  MEAS AC gain_db MAX vdb(vout) FROM=1 TO=10e6
  LET vm3db = gain_db - 3.0
  print vm3db
  MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
  MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
  MEAS AC fmid WHEN vdb(vout)=gain_db
  **phase measurement
  LET phase deg = cph (vout)*180/PI
  MEAS AC phase_zero FIND phase_deg AT=fzero
  MEAS AC phase_pole FIND phase_deg AT=fpole
  MEAS AC phase_mid FIND phase_deg AT=fmid
  ** MEAS fzero fpole using phase
  LET phase_zero_ph = phase_mid-45
  MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
  zero_ph = phase_mid-45
  zero_ph WHEN phase_deg=phase_zero_ph
  .endc
  .end
   
"}
C {opam.sym} 180 260 0 0 {name=x1}
