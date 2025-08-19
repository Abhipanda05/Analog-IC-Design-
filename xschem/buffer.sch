v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -150 -60 -150 -30 {lab=#net1}
N 170 -60 170 -30 {lab=#net2}
N 0 -60 0 -30 {lab=#net2}
N -150 30 -150 60 {lab=#net3}
N -150 60 170 60 {lab=#net3}
N 170 30 170 60 {lab=#net3}
N 210 -20 230 -20 {lab=voi}
N 210 20 230 20 {lab=vom}
N -210 -20 -190 -20 {lab=vip}
N -210 20 -190 20 {lab=vim}
N 0 30 0 60 {lab=#net3}
N -150 -60 -110 -60 {lab=#net1}
N -50 -60 0 -60 {lab=#net2}
N 0 -60 170 -60 {lab=#net2}
C {vcvs.sym} -150 0 0 0 {name=E1 value=1000}
C {vcvs.sym} 170 0 2 0 {name=E2 value=10}
C {capa.sym} 0 0 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -210 -20 2 0 {name=p1 lab=vip}
C {iopin.sym} -210 20 2 0 {name=p2 lab=vim}
C {iopin.sym} 230 -20 0 0 {name=p3 lab=vop}
C {iopin.sym} 230 20 0 0 {name=p4 lab=vom}
C {res.sym} -80 -60 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
