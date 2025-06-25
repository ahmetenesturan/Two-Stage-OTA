v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {sin(0 vin_p 100M 0 0 0)} -1010 320 0 0 0.4 0.4 {}
T {pulse(0 vin_p 1u 1n 1n 100n 10u)} -1020 360 0 0 0.4 0.4 {}
T {pulse(0 vin_n 1u 1n 1n 100n 10u)} -1020 400 0 0 0.4 0.4 {}
N -820 -340 -820 -320 {lab=GND}
N -820 -440 -820 -400 {lab=VDD}
N -760 -340 -760 -320 {lab=GND}
N -760 -440 -760 -400 {lab=VSS}
N -890 210 -890 230 {lab=GND}
N -890 -30 -890 10 {lab=IN_P}
N -510 -30 -510 10 {lab=IN_N}
N -90 -110 -90 -80 {lab=VSS}
N 140 -110 140 -80 {lab=VSS}
N 30 -140 30 -100 {lab=X}
N 30 -40 30 -10 {lab=GND}
N -90 -240 -90 -170 {lab=OUT_N}
N 140 -240 140 -170 {lab=OUT_P}
N -50 -140 100 -140 {lab=X}
N -120 -140 -90 -140 {lab=VSS}
N 140 -140 170 -140 {lab=VSS}
N -90 -200 -70 -200 {lab=OUT_N}
N 120 -200 140 -200 {lab=OUT_P}
N -10 -200 60 -200 {lab=X}
N 30 -200 30 -140 {lab=X}
N -90 -270 -60 -270 {lab=VDD}
N 110 -270 140 -270 {lab=VDD}
N -90 -340 -90 -300 {lab=VDD}
N 140 -340 140 -300 {lab=VDD}
N 180 -270 220 -270 {lab=IN_P}
N -170 -270 -130 -270 {lab=IN_N}
N -890 120 -890 150 {lab=#net1}
N -890 10 -890 60 {lab=IN_P}
N -980 30 -890 30 {lab=IN_P}
N -980 30 -980 60 {lab=IN_P}
N -980 120 -980 150 {lab=#net2}
N -980 210 -980 230 {lab=GND}
N -510 210 -510 230 {lab=GND}
N -510 120 -510 150 {lab=#net3}
N -600 30 -510 30 {lab=IN_N}
N -600 30 -600 60 {lab=IN_N}
N -600 120 -600 150 {lab=#net4}
N -600 210 -600 230 {lab=GND}
N -510 10 -510 60 {lab=IN_N}
N -90 130 -90 180 {lab=OUT_N}
N -90 240 -90 260 {lab=GND}
N 30 110 30 180 {lab=OUT_P}
N 30 240 30 260 {lab=GND}
C {devices/launcher.sym} 410 130 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vsource.sym} -820 -370 0 0 {name=V1 value=1.8 savecurrent=true}
C {gnd.sym} -820 -320 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -820 -440 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {vsource.sym} -760 -370 0 0 {name=V2 value=0 savecurrent=true}
C {gnd.sym} -760 -320 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -760 -440 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {code_shown.sym} 730 -560 0 0 {name=spice only_toplevel=false value="
.temp 25

.param vin_p=1
.param vin_n= -1 * vin_p

.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all


save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.xm2.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.xm2.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.xm3.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.xm4.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.xm4.msky130_fd_pr__nfet_01v8_lvt[vds]




op
write common_source.raw

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

*dc i0 0 1u 1n
*plot out_p out_n

*tran 100p 2u
*plot in_p in_n
*plot out_p - out_n




.endc"}
C {devices/launcher.sym} 380 70 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {vsource.sym} -890 180 0 0 {name=V4 value="ac 0.5 sin(0 vin_p 10e6 0 0 0)" savecurrent=true}
C {gnd.sym} -890 230 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -890 -30 0 0 {name=p21 sig_type=std_logic lab=IN_P}
C {lab_pin.sym} -510 -30 0 0 {name=p22 sig_type=std_logic lab=IN_N
value="dc 0.9 ac -0.5 pulse(0 \{vin\}/(-2) 1u 1n 1n 10n 10u)"}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 160 -270 0 1 {name=M1
L=0.35
W=800
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -110 -270 0 0 {name=M2
L=0.35
W=1000
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 120 -140 0 0 {name=M3
L=0.35
W=400
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -70 -140 0 1 {name=M4
L=0.35
W=500
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {isource.sym} 30 -70 0 0 {name=I0 value=0}
C {gnd.sym} 30 -10 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -90 -80 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 140 -80 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -120 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 170 -140 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {res.sym} -40 -200 3 0 {name=R1
value=1e6
footprint=1206
device=resistor
m=1}
C {res.sym} 90 -200 1 1 {name=R2
value=1e6
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -60 -270 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 110 -270 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -90 -340 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -340 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 -270 0 1 {name=p12 sig_type=std_logic lab=IN_P}
C {lab_pin.sym} -170 -270 0 0 {name=p9 sig_type=std_logic lab=IN_N}
C {lab_pin.sym} 140 -200 0 1 {name=p14 sig_type=std_logic lab=OUT_P}
C {lab_pin.sym} -90 -200 0 0 {name=p10 sig_type=std_logic lab=OUT_N}
C {lab_pin.sym} 30 -200 1 0 {name=p11 sig_type=std_logic lab=X}
C {capa.sym} -890 90 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -980 180 0 0 {name=V3 value=0.9 savecurrent=true}
C {res.sym} -980 90 0 0 {name=R3
value=1G
footprint=1206
device=resistor
m=1}
C {gnd.sym} -980 230 0 0 {name=l4 lab=GND}
C {vsource.sym} -510 180 0 0 {name=V5 value="ac -0.5 sin(0 vin_p 10e6 0 0 180)" savecurrent=true}
C {gnd.sym} -510 230 0 0 {name=l5 lab=GND}
C {capa.sym} -510 90 0 0 {name=C2
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -600 180 0 0 {name=V6 value=0.9 savecurrent=true}
C {res.sym} -600 90 0 0 {name=R4
value=1G
footprint=1206
device=resistor
m=1}
C {gnd.sym} -600 230 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 30 110 0 1 {name=p13 sig_type=std_logic lab=OUT_P}
C {lab_pin.sym} -90 130 0 1 {name=p15 sig_type=std_logic lab=OUT_N}
C {capa.sym} -90 210 0 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -90 260 0 0 {name=l10 lab=GND}
C {capa.sym} 30 210 0 0 {name=C4
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 30 260 0 0 {name=l11 lab=GND}
C {sky130_fd_pr/corner.sym} 300 190 0 0 {name=CORNER only_toplevel=true corner=tt}
