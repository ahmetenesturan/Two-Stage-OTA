v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {pulse(0 10m 1u 1p 1p 1u 10u)} 20 690 0 0 0.4 0.4 {}
T {sin(0 1 1MEG)} 20 730 0 0 0.4 0.4 {}
N 560 20 560 40 {lab=GND}
N 560 -80 560 -40 {lab=VDD}
N 60 60 60 80 {lab=GND}
N 640 20 640 40 {lab=GND}
N 640 -80 640 -40 {lab=Vb1}
N 710 30 710 40 {lab=GND}
N 710 -80 710 -30 {lab=Vb2}
N 780 20 780 40 {lab=GND}
N 780 -80 780 -40 {lab=Vb3}
N 180 460 180 480 {lab=#net1}
N 180 220 180 260 {lab=IN_P}
N 470 220 470 260 {lab=IN_N}
N 180 370 180 400 {lab=IN_P}
N 180 260 180 310 {lab=IN_P}
N 320 500 320 530 {lab=#net1}
N 320 590 320 610 {lab=GND}
N 470 460 470 480 {lab=#net1}
N 470 370 470 400 {lab=IN_N}
N 470 260 470 310 {lab=IN_N}
N 60 -120 60 -100 {lab=VDD}
N -60 60 -40 60 {lab=Vb3}
N -60 40 -40 40 {lab=Vb2}
N -60 20 -40 20 {lab=Vb1}
N -60 -10 -40 -10 {lab=AMP_IN_N}
N -60 -30 -40 -30 {lab=AMP_IN_P}
N 180 -30 200 -30 {lab=OUT_P}
N 180 -10 200 -10 {lab=OUT_N}
N 200 -10 200 40 {lab=OUT_N}
N 200 100 200 120 {lab=GND}
N 200 -30 320 -30 {lab=OUT_P}
N 320 -30 320 40 {lab=OUT_P}
N 320 100 320 120 {lab=GND}
N 180 310 180 370 {lab=IN_P}
N 470 310 470 370 {lab=IN_N}
N 180 500 320 500 {lab=#net1}
N 180 480 180 500 {lab=#net1}
N 320 500 470 500 {lab=#net1}
N 470 480 470 500 {lab=#net1}
N 540 -360 540 -340 {lab=GND}
N 480 -370 500 -370 {lab=GND}
N 480 -370 480 -350 {lab=GND}
N 480 -350 540 -350 {lab=GND}
N 480 -410 500 -410 {lab=OUT_P}
N 540 -450 540 -420 {lab=#net2}
N 540 -560 540 -510 {lab=#net2}
N 510 -560 540 -560 {lab=#net2}
N 500 -560 510 -560 {lab=#net2}
N 360 -560 440 -560 {lab=AMP_IN_N}
N 260 -560 300 -560 {lab=IN_N}
N 980 -360 980 -340 {lab=GND}
N 920 -370 940 -370 {lab=GND}
N 920 -370 920 -350 {lab=GND}
N 920 -350 980 -350 {lab=GND}
N 920 -410 940 -410 {lab=OUT_N}
N 980 -450 980 -420 {lab=#net3}
N 980 -560 980 -510 {lab=#net3}
N 950 -560 980 -560 {lab=#net3}
N 940 -560 950 -560 {lab=#net3}
N 800 -560 880 -560 {lab=AMP_IN_P}
N 700 -560 740 -560 {lab=IN_P}
N 540 -510 540 -450 {lab=#net2}
N 980 -510 980 -450 {lab=#net3}
C {devices/launcher.sym} 750 370 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vsource.sym} 560 -10 0 0 {name=V1 value=1.8 savecurrent=true}
C {gnd.sym} 560 40 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 560 -80 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {gnd.sym} 60 80 0 0 {name=l3 lab=GND}
C {vsource.sym} 640 -10 0 0 {name=V3 value=1.2 savecurrent=true}
C {gnd.sym} 640 40 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 640 -80 0 0 {name=p18 sig_type=std_logic lab=Vb1}
C {vsource.sym} 710 0 0 0 {name=V4 value=0.7 savecurrent=true}
C {gnd.sym} 710 40 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 710 -80 0 0 {name=p19 sig_type=std_logic lab=Vb2}
C {vsource.sym} 780 -10 0 0 {name=V5 value=1.1 savecurrent=true}
C {gnd.sym} 780 40 0 0 {name=l6 lab=GND}
C {code_shown.sym} -650 -700 0 0 {name=spice only_toplevel=false value="
.temp 25

.param cc=6p
.param rc=38

.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all


save @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.x1.xm6.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm6.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm6.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm8.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.x1.xm9.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm9.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xm9.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.x1.xm10.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm10.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xm10.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm11.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[id]
save @m.x1.xm12.msky130_fd_pr__pfet_01v8_lvt[vds]

save @m.x1.xm13.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm13.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xm13.msky130_fd_pr__nfet_01v8_lvt[vds]

save @m.x1.xm14.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm14.msky130_fd_pr__nfet_01v8_lvt[id]
save @m.x1.xm14.msky130_fd_pr__nfet_01v8_lvt[vds]

op
write two_stage_amplifier_tran_tb.raw


ac dec 10 1k 10G
let out_db = db(mag(out_p - out_n))
let out_ph = phase(out_p - out_n) / pi * 180
plot out_db
plot out_ph
meas ac w_u WHEN out_db=0
meas ac p_x WHEN out_ph=0
meas ac phase_mar find out_ph AT=w_u
let w_u_mhz = w_u / 1e6
print w_u_mhz phase_mar

tran 1n 10u
plot out_p-out_n in_p-in_n

.endc"}
C {devices/launcher.sym} 750 300 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 780 -80 0 0 {name=p24 sig_type=std_logic lab=Vb3}
C {sky130_fd_pr/corner.sym} 760 490 0 0 {name=CORNER only_toplevel=true corner=tt}
C {vsource.sym} 180 430 0 0 {name=V6 value="ac 0.5 pulse(0 0.5 1u 1p 1p 1u 10u)" savecurrent=true}
C {lab_pin.sym} 180 220 0 0 {name=p21 sig_type=std_logic lab=IN_P}
C {lab_pin.sym} 470 220 0 0 {name=p22 sig_type=std_logic lab=IN_N
value="dc 0.9 ac -0.5 pulse(0 \{vin\}/(-2) 1u 1n 1n 10n 10u)"}
C {vsource.sym} 320 560 0 0 {name=V7 value=0.9 savecurrent=true}
C {gnd.sym} 320 610 0 0 {name=l1 lab=GND}
C {two_stage_amplifier.sym} -20 -20 0 0 {name=x1}
C {lab_pin.sym} 60 -120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -60 20 0 0 {name=p2 sig_type=std_logic lab=Vb1}
C {lab_pin.sym} -60 40 0 0 {name=p3 sig_type=std_logic lab=Vb2}
C {lab_pin.sym} -60 60 0 0 {name=p4 sig_type=std_logic lab=Vb3}
C {lab_pin.sym} 700 -560 0 0 {name=p5 sig_type=std_logic lab=IN_P}
C {lab_pin.sym} 260 -560 0 0 {name=p6 sig_type=std_logic lab=IN_N}
C {lab_pin.sym} 320 -30 0 1 {name=p7 sig_type=std_logic lab=OUT_P}
C {lab_pin.sym} 200 -10 0 1 {name=p8 sig_type=std_logic lab=OUT_N}
C {capa.sym} 200 70 0 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 200 120 0 0 {name=l10 lab=GND}
C {capa.sym} 320 70 0 0 {name=C4
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 320 120 0 0 {name=l11 lab=GND}
C {vsource.sym} 470 430 2 0 {name=V2 value="ac 0.5 pulse(0 0.5 1u 1p 1p 1u 10u)" savecurrent=true}
C {vcvs.sym} 540 -390 0 0 {name=E1 value=1}
C {gnd.sym} 540 -340 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 480 -410 0 0 {name=p9 sig_type=std_logic lab=OUT_P}
C {res.sym} 470 -560 1 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 330 -560 1 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 390 -560 1 0 {name=p10 sig_type=std_logic lab=AMP_IN_N}
C {vcvs.sym} 980 -390 0 0 {name=E2 value=1}
C {gnd.sym} 980 -340 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 920 -410 0 0 {name=p12 sig_type=std_logic lab=OUT_N}
C {res.sym} 910 -560 1 0 {name=R3
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 770 -560 1 0 {name=R4
value=1
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 830 -560 1 0 {name=p13 sig_type=std_logic lab=AMP_IN_P}
C {lab_pin.sym} -60 -10 2 1 {name=p11 sig_type=std_logic lab=AMP_IN_N}
C {lab_pin.sym} -60 -30 2 1 {name=p14 sig_type=std_logic lab=AMP_IN_P}
