v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 -60 -50 -60 {lab=vip}
N -140 -20 -50 -20 {lab=vim}
N -10 -10 -10 20 {lab=vom}
N -10 20 70 20 {lab=vom}
N -10 -90 -10 -70 {lab=vop}
N -10 -90 70 -90 {lab=vop}
C {iopin.sym} 70 -90 0 0 {name=p1 lab=vop}
C {iopin.sym} 70 20 0 0 {name=p2 lab=vom}
C {iopin.sym} -140 -60 2 0 {name=p3 lab=vip}
C {iopin.sym} -140 -20 2 0 {name=p4 lab=vim}
C {vcvs.sym} -10 -40 0 0 {name=E1 value=1000}
