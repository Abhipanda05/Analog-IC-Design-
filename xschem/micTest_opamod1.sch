v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -430 -170 -430 -130 {lab=vnmc}
N -430 -170 -380 -170 {lab=vnmc}
N -320 -170 -270 -170 {lab=vn1}
N -210 -170 -150 -170 {lab=vn2}
N -430 -70 -430 -40 {lab=GND}
N 100 -60 100 -10 {lab=GND}
N 10 -330 40 -330 {lab=vout}
N -60 -260 -50 -260 {lab=virt}
N -60 -260 -60 -170 {lab=virt}
N -60 -290 -60 -260 {lab=virt}
N -60 -330 -60 -290 {lab=virt}
N -60 -330 -50 -330 {lab=virt}
N -30 40 -30 60 {lab=GND}
N 370 -50 370 -40 {lab=GND}
N 370 -40 370 -20 {lab=GND}
N -60 -170 -60 -80 {lab=virt}
N -60 -80 -0 -80 {lab=virt}
N -90 -170 -60 -170 {lab=virt}
N -30 -170 -0 -170 {lab=#net1}
N -30 -170 -30 -20 {lab=#net1}
N 200 -330 200 -110 {lab=vout}
N 40 -330 200 -330 {lab=vout}
N 10 -260 200 -260 {lab=vout}
N 200 -110 370 -110 {lab=vout}
C {vsource.sym} -430 -100 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {capa.sym} -240 -170 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -350 -170 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} -120 -170 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -430 -40 0 0 {name=l2 lab=GND}
C {gnd.sym} 100 -10 0 0 {name=l3 lab=GND}
C {res.sym} -20 -260 3 0 {name=R3
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} -20 -330 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -30 10 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -30 60 0 0 {name=l4 lab=GND}
C {capa.sym} 370 -80 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 370 -20 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -410 -170 0 0 {name=p1 sig_type=std_logic lab=vnmc}
C {lab_wire.sym} -290 -170 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -170 -170 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} -60 -220 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 320 -110 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -770 -1000 0 0 {name=COMMANDS
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
C {opa_mod1.sym} 120 60 0 0 {name=x1}
