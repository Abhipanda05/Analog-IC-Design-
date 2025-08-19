v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 -70 -140 -40 {lab=#net1}
N 180 -70 180 -40 {lab=#net2}
N 10 -70 10 -40 {lab=#net2}
N -140 20 -140 50 {lab=#net3}
N -140 50 180 50 {lab=#net3}
N 180 20 180 50 {lab=#net3}
N 220 -30 240 -30 {lab=voi}
N 220 10 240 10 {lab=vom}
N -200 -30 -180 -30 {lab=vip}
N -200 10 -180 10 {lab=vim}
N 10 20 10 50 {lab=#net3}
N -140 -70 -100 -70 {lab=#net1}
N -40 -70 10 -70 {lab=#net2}
N 10 -70 180 -70 {lab=#net2}
C {vcvs.sym} -140 -10 0 0 {name=E1 value=1000}
C {vcvs.sym} 180 -10 2 0 {name=E2 value=10}
C {capa.sym} 10 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -200 -30 2 0 {name=p1 lab=vip}
C {iopin.sym} -200 10 2 0 {name=p2 lab=vim}
C {iopin.sym} 240 -30 0 0 {name=p3 lab=vop}
C {iopin.sym} 240 10 0 0 {name=p4 lab=vom}
C {res.sym} -70 -70 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
