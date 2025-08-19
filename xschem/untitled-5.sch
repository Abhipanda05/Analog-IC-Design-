v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 150 20 150 60 {lab=vnmc}
N 150 20 200 20 {lab=vnmc}
N 260 20 310 20 {lab=vnmc}
N 370 20 430 20 {lab=vn2}
N 150 120 150 150 {lab=GND}
N 490 20 530 20 {lab=virt}
N 530 20 580 20 {lab=virt}
N 590 -70 620 -70 {lab=#net1}
N 520 -70 530 -70 {lab=virt}
N 520 -70 520 20 {lab=virt}
N 550 -20 580 -20 {lab=vcm}
N 550 -20 550 90 {lab=vcm}
N 550 150 550 170 {lab=GND}
N 200 20 260 20 {lab=vnmc}
N 580 20 580 70 {lab=virt}
N 620 -70 840 -70 {lab=#net1}
N 840 -70 840 40 {lab=#net1}
N 780 40 840 40 {lab=#net1}
C {vsource.sym} 150 90 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {capa.sym} 340 20 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 460 20 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 150 150 0 0 {name=l2 lab=GND}
C {res.sym} 560 -70 3 0 {name=R3
value=4.7k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 550 120 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 550 170 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 170 20 0 0 {name=p1 sig_type=std_logic lab=vnmc}
C {lab_wire.sym} 290 20 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 410 20 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 550 50 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 520 -30 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 750 -70 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -190 -810 0 0 {name=COMMANDS
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
  .endc
  .end
   
"}
C {opa_mod1.sym} 700 210 0 0 {name=x1}
