v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -20 -40 -20 {lab=vip}
N -110 20 -40 20 {lab=vim}
N 0 -40 0 -30 {lab=vop}
N 0 -40 90 -40 {lab=vop}
N 0 30 0 40 {lab=#net1}
N 0 40 90 40 {lab=#net1}
C {vcvs.sym} 0 0 0 0 {name=E1 value=1000
}
C {iopin.sym} -110 -20 2 0 {name=p1 lab=vip}
C {iopin.sym} -110 20 2 0 {name=p2 lab=vim}
C {iopin.sym} 90 -40 0 0 {name=p3 lab=vop}
C {iopin.sym} 90 40 0 0 {name=p4 lab=vom}
