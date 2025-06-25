v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 -80 -30 -50 {lab=#net1}
N 150 -80 150 -50 {lab=#net2}
N -30 -20 -0 -20 {lab=VSS}
N 120 -20 150 -20 {lab=VSS}
N -30 -110 0 -110 {lab=VSS}
N 120 -110 150 -110 {lab=VSS}
N -30 10 -30 50 {lab=#net3}
N -30 50 150 50 {lab=#net3}
N 150 10 150 50 {lab=#net3}
N -30 50 -30 80 {lab=#net3}
N -100 -110 -70 -110 {lab=Vb1}
N 190 -110 220 -110 {lab=Vb1}
N -30 -290 -30 -260 {lab=#net4}
N 150 -290 150 -260 {lab=#net5}
N -30 -200 -30 -140 {lab=OUT_N}
N 150 -200 150 -140 {lab=OUT_P}
N -30 -230 -10 -230 {lab=#net4}
N -30 -270 -10 -270 {lab=#net4}
N 130 -230 150 -230 {lab=#net5}
N 130 -270 150 -270 {lab=#net5}
N -100 -230 -70 -230 {lab=Vb2}
N 190 -230 220 -230 {lab=Vb2}
N -30 -320 -10 -320 {lab=VDD}
N -10 -370 -10 -320 {lab=VDD}
N -30 -370 -10 -370 {lab=VDD}
N -30 -370 -30 -350 {lab=VDD}
N 130 -320 150 -320 {lab=VDD}
N 130 -370 130 -320 {lab=VDD}
N 130 -370 150 -370 {lab=VDD}
N 150 -370 150 -350 {lab=VDD}
N -30 -400 -30 -370 {lab=VDD}
N -30 -400 150 -400 {lab=VDD}
N 150 -400 150 -370 {lab=VDD}
N -100 -320 -70 -320 {lab=Vb3}
N 190 -320 220 -320 {lab=Vb3}
N -100 -20 -70 -20 {lab=IN_P}
N 190 -20 220 -20 {lab=IN_N}
N -820 -340 -820 -320 {lab=GND}
N -820 -440 -820 -400 {lab=VDD}
N -700 -340 -700 -320 {lab=GND}
N -700 -440 -700 -400 {lab=VSS}
N -740 60 -740 80 {lab=GND}
N -740 -40 -740 0 {lab=Vb1}
N -670 70 -670 80 {lab=GND}
N -670 -40 -670 10 {lab=Vb2}
N -600 60 -600 80 {lab=GND}
N -600 -40 -600 0 {lab=Vb3}
N -530 60 -530 80 {lab=GND}
N -530 -40 -530 0 {lab=IN_P}
N -420 60 -420 80 {lab=GND}
N -420 -40 -420 0 {lab=IN_N}
N -30 140 -30 170 {lab=VSS}
N -30 110 0 110 {lab=VSS}
N -100 110 -70 110 {lab=OUT_N}
N 150 50 150 80 {lab=#net3}
N 150 140 150 170 {lab=VSS}
N 120 110 150 110 {lab=VSS}
N 190 110 220 110 {lab=OUT_P}
N -10 -270 -10 -230 {lab=#net4}
N 130 -270 130 -230 {lab=#net5}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -50 -20 0 0 {name=M1
L=0.3
W=200
nf=1 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 170 -20 0 1 {name=M2
L=0.3
W=200
nf=1 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -50 -110 0 0 {name=M3
L=0.3
W=250
nf=1 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 170 -110 0 1 {name=M4
L=0.3
W=250
nf=1 mult=4
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 0 -20 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -20 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -110 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -110 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 -110 0 0 {name=p5 sig_type=std_logic lab=Vb1}
C {lab_pin.sym} 220 -110 0 1 {name=p6 sig_type=std_logic lab=Vb1}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -50 -230 0 0 {name=M5
L=0.8
W=600
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 170 -230 0 1 {name=M6
L=0.8
W=600
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -50 -320 0 0 {name=M7
L=0.8
W=600
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 170 -320 0 1 {name=M8
L=0.8
W=600
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} -100 -230 0 0 {name=p7 sig_type=std_logic lab=Vb2}
C {lab_pin.sym} 220 -230 0 1 {name=p8 sig_type=std_logic lab=Vb2}
C {lab_pin.sym} -30 -400 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -100 -320 0 0 {name=p10 sig_type=std_logic lab=Vb3}
C {lab_pin.sym} 220 -320 0 1 {name=p11 sig_type=std_logic lab=Vb3}
C {devices/launcher.sym} 410 130 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {lab_pin.sym} -100 -20 0 0 {name=p12 sig_type=std_logic lab=IN_P}
C {lab_pin.sym} 220 -20 0 1 {name=p13 sig_type=std_logic lab=IN_N}
C {lab_pin.sym} 150 -170 0 1 {name=p14 sig_type=std_logic lab=OUT_P}
C {lab_pin.sym} -30 -170 0 0 {name=p15 sig_type=std_logic lab=OUT_N}
C {ngspice_probe.sym} -30 -270 0 0 {name=r1}
C {ngspice_probe.sym} 150 -270 0 0 {name=r2}
C {ngspice_probe.sym} -30 -60 0 0 {name=r3}
C {ngspice_probe.sym} 150 -60 0 0 {name=r4}
C {ngspice_probe.sym} 60 50 0 0 {name=r5}
C {vsource.sym} -820 -370 0 0 {name=V1 value=1.8 savecurrent=true}
C {gnd.sym} -820 -320 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -820 -440 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {vsource.sym} -700 -370 0 0 {name=V2 value=0 savecurrent=true}
C {gnd.sym} -700 -320 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -700 -440 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {vsource.sym} -740 30 0 0 {name=V3 value=1.2 savecurrent=true}
C {gnd.sym} -740 80 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -740 -40 0 0 {name=p18 sig_type=std_logic lab=Vb1}
C {vsource.sym} -670 40 0 0 {name=V4 value=0.7 savecurrent=true}
C {gnd.sym} -670 80 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -670 -40 0 0 {name=p19 sig_type=std_logic lab=Vb2}
C {vsource.sym} -600 30 0 0 {name=V5 value=1.1 savecurrent=true}
C {gnd.sym} -600 80 0 0 {name=l6 lab=GND}
C {code_shown.sym} 640 -550 0 0 {name=spice only_toplevel=false value="
.temp 25

.param wpmos=300
.param lpmos=0.5

.param wnmos=100
.param lnmos=0.15

.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all


save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.xm2.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm2.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.xm2.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm4.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.xm4.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.xm5.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.xm5.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.xm6.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.xm6.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.xm6.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.xm7.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.xm7.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.xm7.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.xm8.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.xm8.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.xm8.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.xm9.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.xm9.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.xm9.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.xm10.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm10.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.xm10.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.xm11.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm11.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.xm11.msky130_fd_pr__nfet_01v8_lvt[vds]


op
write telescopic_cascode.raw

*vb1 sweep
*dc v3 0 1.8 0.1
*plot out_p
*plot @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vds]

*vb2 sweep
*dc v4 0 1.8 0.1
*plot out_p
*plot @m.xm5.msky130_fd_pr__pfet_01v8_lvt[vds]

*vb3 sweep
*dc v5 0 1.8 0.1
*plot out_p
*plot @m.xm7.msky130_fd_pr__pfet_01v8_lvt[vds]

ac dec 10 1k 10G
let out_db = db(mag(out_p - out_n))
let out_ph = phase(out_p - out_n) / pi * 180
plot out_db
*plot out_ph
meas ac w_u WHEN out_db=0
meas ac p_x WHEN out_ph=0
meas ac phase_mar find out_ph AT=w_u
let w_u_mhz = w_u / 1e6
print w_u_mhz phase_mar


.endc"}
C {devices/launcher.sym} 380 80 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {vsource.sym} -530 30 0 0 {name=V6 value="dc 0.9 ac 0.5" savecurrent=true}
C {gnd.sym} -530 80 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -530 -40 0 0 {name=p21 sig_type=std_logic lab=IN_P}
C {vsource.sym} -420 30 0 0 {name=V7 value="dc 0.9 ac -0.5" savecurrent=true}
C {gnd.sym} -420 80 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -420 -40 0 0 {name=p22 sig_type=std_logic lab=IN_N}
C {lab_pin.sym} -600 -40 0 0 {name=p24 sig_type=std_logic lab=Vb3}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -50 110 0 0 {name=M10
L=0.3
W=25
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 0 110 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 110 0 0 {name=p25 sig_type=std_logic lab=OUT_N}
C {sky130_fd_pr/corner.sym} 340 250 0 0 {name=CORNER only_toplevel=true corner=tt}
C {lab_pin.sym} -30 170 0 1 {name=p32 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 170 110 0 1 {name=M11
L=0.3
W=25
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 120 110 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 220 110 0 1 {name=p34 sig_type=std_logic lab=OUT_P}
C {lab_pin.sym} 150 170 0 0 {name=p35 sig_type=std_logic lab=VSS}
