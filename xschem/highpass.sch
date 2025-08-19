v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -360 170 -360 210 {lab=vnmc}
N -250 170 -200 170 {lab=vnmc}
N -140 170 -80 170 {lab=vn2}
N -360 270 -360 300 {lab=GND}
N -20 170 20 170 {lab=virt}
N 20 170 70 170 {lab=virt}
N 80 80 110 80 {lab=vout}
N 110 80 110 120 {lab=vout}
N 10 80 20 80 {lab=virt}
N 10 80 10 170 {lab=virt}
N 40 130 70 130 {lab=vcm}
N 40 130 40 240 {lab=vcm}
N 40 300 40 320 {lab=GND}
N 110 120 220 120 {lab=vout}
N 220 120 280 120 {lab=vout}
N 140 190 140 250 {lab=GND}
N 200 120 200 140 {lab=vout}
N -310 170 -250 170 {lab=vnmc}
N -360 170 -310 170 {lab=vnmc}
C {vsource.sym} -360 240 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {capa.sym} -170 170 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -50 170 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -360 300 0 0 {name=l2 lab=GND}
C {gnd.sym} 140 250 0 0 {name=l3 lab=GND}
C {res.sym} 50 80 3 0 {name=R3
value=4.7k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 40 270 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 40 320 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -340 170 0 0 {name=p1 sig_type=std_logic lab=vnmc}
C {lab_wire.sym} -100 170 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 40 200 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 10 120 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 170 120 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -790 -220 0 0 {name=COMMANDS
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
C {opam.sym} 250 350 0 0 {name=x1}
