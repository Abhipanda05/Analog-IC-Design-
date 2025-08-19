v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 150 20 150 60 {lab=vnmc}
N 150 20 200 20 {lab=vnmc}
N 260 20 310 20 {lab=vn1}
N 370 20 430 20 {lab=vn2}
N 150 120 150 150 {lab=GND}
N 490 20 530 20 {lab=virt}
N 530 20 580 20 {lab=virt}
N 620 30 620 80 {lab=GND}
N 590 -70 620 -70 {lab=vout}
N 620 -70 620 -30 {lab=vout}
N 590 -140 620 -140 {lab=vout}
N 620 -140 620 -70 {lab=vout}
N 520 -70 530 -70 {lab=virt}
N 520 -70 520 20 {lab=virt}
N 520 -100 520 -70 {lab=virt}
N 520 -140 520 -100 {lab=virt}
N 520 -140 530 -140 {lab=virt}
N 550 -20 580 -20 {lab=vcm}
N 550 -20 550 90 {lab=vcm}
N 550 150 550 170 {lab=GND}
N 620 -30 730 -30 {lab=vout}
N 730 30 730 40 {lab=GND}
N 730 40 730 60 {lab=GND}
C {vsource.sym} 150 90 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {capa.sym} 340 20 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 230 20 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} 460 20 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 620 0 0 0 {name=E1 value=10000}
C {gnd.sym} 150 150 0 0 {name=l2 lab=GND}
C {gnd.sym} 620 80 0 0 {name=l3 lab=GND}
C {res.sym} 560 -70 3 0 {name=R3
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} 560 -140 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 550 120 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 550 170 0 0 {name=l4 lab=GND}
C {capa.sym} 730 0 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 730 60 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 170 20 0 0 {name=p1 sig_type=std_logic lab=vnmc}
C {lab_wire.sym} 290 20 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 410 20 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 550 50 0 0 {name=p4 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 520 -30 0 0 {name=p5 sig_type=std_logic lab=virt}
C {lab_wire.sym} 680 -30 0 0 {name=p6 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} 800 -60 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
  .OP
  save all
  write untitled.raw
  AC DEC 100 1 10e6
  plot v(vnmc)
  plot v(vn1)
  plot v(vn2)
  plot v(vcm)
  .endc
  .end
   
"}
