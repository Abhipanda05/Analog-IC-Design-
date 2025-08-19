v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -310 -290 -310 -120 {lab=vim}
N -310 -290 230 -290 {lab=vim}
N 0 -200 0 -120 {lab=vip}
N 0 -200 230 -200 {lab=vip}
N -420 -70 -350 -70 {lab=GND}
N -420 -70 -420 10 {lab=GND}
N -420 -40 -40 -40 {lab=GND}
N -40 -70 -40 -40 {lab=GND}
N -310 -60 -310 -0 {lab=vcm}
N -310 -0 0 0 {lab=vcm}
N 0 -60 0 0 {lab=vcm}
N -140 -0 -140 30 {lab=vcm}
N -140 90 -140 120 {lab=GND}
N -40 -160 -40 -110 {lab=vindiff}
N -610 -160 -40 -160 {lab=vindiff}
N -610 -160 -610 20 {lab=vindiff}
N -400 -110 -350 -110 {lab=vindiff}
N -400 -160 -400 -110 {lab=vindiff}
N -610 80 -610 120 {lab=GND}
N 330 -190 330 -140 {lab=GND}
N 440 -240 500 -240 {lab=vout}
N 500 -240 500 -190 {lab=vout}
N 500 -130 500 -90 {lab=GND}
N 110 -430 110 -390 {lab=GND}
N 110 -520 300 -520 {lab=vdda}
N 110 -520 110 -490 {lab=vdda}
N 340 -400 340 -300 {lab=vib5u}
N 340 -520 340 -460 {lab=vdda}
N 300 -520 340 -520 {lab=vdda}
N 300 -330 300 -310 {lab=vdda}
N 270 -330 300 -330 {lab=vdda}
N 270 -520 270 -330 {lab=vdda}
C {vcvs.sym} 0 -90 0 0 {name=E2 value=0.5
}
C {vcvs.sym} -310 -90 0 0 {name=E1 value=-0.5}
C {opa_nmos1.sym} 430 -30 0 0 {name=x1}
C {gnd.sym} -420 10 0 0 {name=l1 lab=GND}
C {vsource.sym} -140 60 0 0 {name=Vcm value="0.9 AC 0" savecurrent=false}
C {gnd.sym} -140 120 0 0 {name=l2 lab=GND}
C {vsource.sym} -610 50 0 0 {name=V2 value="0.9 AC 1" savecurrent=false}
C {gnd.sym} -610 120 0 0 {name=l3 lab=GND}
C {gnd.sym} 330 -140 0 0 {name=l4 lab=GND}
C {capa.sym} 500 -160 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 500 -90 0 0 {name=l5 lab=GND}
C {vsource.sym} 110 -460 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} 110 -390 0 0 {name=l6 lab=GND}
C {isource.sym} 340 -430 0 0 {name=I0 value=5u}
C {devices/code.sym} -1160 -140 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -1460 -1570 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.temp 27
.control

 save all

 save @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
 save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
 
 save @m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[id]
 save @m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[gm]

 save @m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[id]
 save @m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[gm]

 save @m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[id]
 save @m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[gm]

 save @m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[id]
 save @m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[gm]

 save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[id]
 save @m.x1.xmtail.msky130_fd_pr__nfet_01v8[gm]

 OP

 write TB_opa_nmos1.raw

 let im1=@m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
 let iim=@m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[id]
 let iip=@m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[id]
 let icmm=@m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[id]
 let icmp=@m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[id]
 let imtail=@m.x1.xmtail.msky130_fd_pr__nfet_01v8[id]
 
 let gm1=@m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
 let gmim=@m.x1.xmim.msky130_fd_pr__nfet_01v8_lvt[gm]
 let gmip=@m.x1.xmip.msky130_fd_pr__nfet_01v8_lvt[gm]
 let gmcmm=@m.x1.xmpcmm.msky130_fd_pr__pfet_01v8_lvt[gm]
 let gmcmp=@m.x1.xmpcmp.msky130_fd_pr__pfet_01v8_lvt[gm]
 let gmtail=@m.x1.xmtail.msky130_fd_pr__nfet_01v8[gm]

 let gmidm1=gm1/im1
 let gmidim=gmim/iim
 let gmidip=gmip/iip
 let gmidcmm=gmcmm/icmm
 let gmidcmp=gmcmp/icmp
 let gmidtail=gmtail/imtail
 
 print gmidm1
 print gmidim
 print gmidip
 print gmidcmm
 print gmidcmp
 print gmidtail

 print im1
 print iim
 print iip
 print icmm
 print icmp
 print imtail
 
 AC DEC 100 1 1e9
**plot v(vout)
**plot vdb(vout)
 set appendwrite
 write TB_opa_nmos1.raw

.endc
.end
 
"}
C {lab_wire.sym} -510 -160 0 0 {name=p1 sig_type=std_logic lab=vindiff}
C {lab_wire.sym} -140 -290 0 0 {name=p2 sig_type=std_logic lab=vim}
C {lab_wire.sym} 230 -520 0 0 {name=p3 sig_type=std_logic lab=vdda}
C {lab_wire.sym} 340 -350 0 0 {name=p4 sig_type=std_logic lab=vib5u}
C {lab_wire.sym} 120 -200 2 0 {name=p6 sig_type=std_logic lab=vip}
C {lab_wire.sym} 0 0 2 0 {name=p5 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 500 -240 0 0 {name=p7 sig_type=std_logic lab=vout}
