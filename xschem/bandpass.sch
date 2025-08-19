v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 440 200 440 240 {lab=vnmc}
N 440 200 490 200 {lab=vnmc}
N 550 200 600 200 {lab=vnmc}
N 660 200 720 200 {lab=vn2}
N 440 300 440 330 {lab=GND}
N 780 200 820 200 {lab=virt}
N 820 200 870 200 {lab=virt}
N 880 110 910 110 {lab=vout}
N 810 110 820 110 {lab=virt}
N 810 110 810 200 {lab=virt}
N 840 160 840 270 {lab=vcm}
N 840 330 840 350 {lab=GND}
N 490 200 550 200 {lab=vnmc}
N 870 200 870 250 {lab=virt}
N 910 110 1130 110 {lab=vout}
N 980 140 980 170 {lab=#net1}
N 1300 140 1300 170 {lab=#net2}
N 1130 140 1130 170 {lab=#net2}
N 980 230 980 260 {lab=GND}
N 980 260 1300 260 {lab=GND}
N 1130 230 1130 260 {lab=GND}
N 980 140 1020 140 {lab=#net1}
N 1080 140 1130 140 {lab=#net2}
N 1130 140 1300 140 {lab=#net2}
N 1300 170 1300 180 {lab=#net2}
N 840 160 910 160 {lab=vcm}
N 870 250 910 250 {lab=virt}
N 1340 110 1340 170 {lab=vout}
N 1120 110 1340 110 {lab=vout}
N 1340 230 1340 290 {lab=GND}
N 1100 290 1340 290 {lab=GND}
N 1100 260 1100 290 {lab=GND}
N 1100 290 1100 310 {lab=GND}
N 1340 170 1440 170 {lab=vout}
N 910 160 910 180 {lab=vcm}
N 910 180 940 180 {lab=vcm}
N 910 250 940 250 {lab=virt}
N 940 220 940 250 {lab=virt}
N 1300 220 1300 260 {lab=GND}
C {vsource.sym} 440 270 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {capa.sym} 630 200 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 750 200 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 440 330 0 0 {name=l2 lab=GND}
C {res.sym} 850 110 3 0 {name=R3
value=4.7k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 840 300 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 840 350 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 460 200 0 0 {name=p1 sig_type=std_logic lab=vnmc}
C {lab_wire.sym} 700 200 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 840 230 3 0 {name=p4 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 810 150 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 1410 170 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} 250 -400 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
  .OP
  save all
  write mictest.raw
  AC DEC 100 1 10e12
**
  MEAS AC gain_db MAX vdb(vout) FROM=1 TO=10e12
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
C {vcvs.sym} 980 200 0 0 {name=E1 value=1000}
C {vcvs.sym} 1340 200 0 0 {name=E2 value=3}
C {capa.sym} 1130 200 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1050 140 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 1100 310 0 0 {name=l1 lab=GND}
