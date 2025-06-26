v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 560 20 560 40 {lab=GND}
N 560 -80 560 -40 {lab=VDD}
N 60 60 60 80 {lab=GND}
N 640 20 640 40 {lab=GND}
N 640 -80 640 -40 {lab=Vb1}
N 710 30 710 40 {lab=GND}
N 710 -80 710 -30 {lab=Vb2}
N 780 20 780 40 {lab=GND}
N 780 -80 780 -40 {lab=Vb3}
N 180 460 180 480 {lab=GND}
N 180 220 180 260 {lab=IN_P}
N 470 220 470 260 {lab=IN_N}
N 180 370 180 400 {lab=IN_P}
N 180 260 180 310 {lab=IN_P}
N 320 500 320 530 {lab=GND}
N 320 590 320 610 {lab=GND}
N 470 460 470 480 {lab=GND}
N 470 370 470 400 {lab=IN_N}
N 470 260 470 310 {lab=IN_N}
N 60 -120 60 -100 {lab=VDD}
N -60 60 -40 60 {lab=Vb3}
N -60 40 -40 40 {lab=Vb2}
N -60 20 -40 20 {lab=Vb1}
N -60 -10 -40 -10 {lab=IN_N}
N -60 -30 -40 -30 {lab=IN_P}
N 180 -30 200 -30 {lab=OUT_P}
N 180 -10 200 -10 {lab=OUT_N}
N 200 -10 200 40 {lab=OUT_N}
N 200 100 200 120 {lab=GND}
N 200 -30 320 -30 {lab=OUT_P}
N 320 -30 320 40 {lab=OUT_P}
N 320 100 320 120 {lab=GND}
N 180 310 180 370 {lab=IN_P}
N 470 310 470 370 {lab=IN_N}
N 180 500 320 500 {lab=GND}
N 180 480 180 500 {lab=GND}
N 320 500 470 500 {lab=GND}
N 470 480 470 500 {lab=GND}
N 320 530 320 590 {lab=GND}
C {devices/launcher.sym} 650 220 0 0 {name=h15
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
write two_stage_amplifier_ac_tb.raw

ac dec 10 1k 10G
let out_gain = db(mag(out_p - out_n))
let out_ph = phase(out_p - out_n) / pi * 180
plot out_gain
plot out_ph
meas ac w_u WHEN out_gain=0
meas ac p_x WHEN out_ph=0
meas ac p_u find out_ph AT=w_u
let w_u_mhz = w_u / 1e6
let phase_mar = 180 + p_u
print w_u_mhz phase_mar
.endc"}
C {devices/launcher.sym} 650 150 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 780 -80 0 0 {name=p24 sig_type=std_logic lab=Vb3}
C {sky130_fd_pr/corner.sym} 620 310 0 0 {name=CORNER only_toplevel=true corner=ss}
C {vsource.sym} 180 430 0 0 {name=V6 value="dc 0.9 ac 0.5" savecurrent=true}
C {lab_pin.sym} 180 220 0 0 {name=p21 sig_type=std_logic lab=IN_P}
C {lab_pin.sym} 470 220 0 0 {name=p22 sig_type=std_logic lab=IN_N
value="dc 0.9 ac -0.5 pulse(0 \{vin\}/(-2) 1u 1n 1n 10n 10u)"}
C {gnd.sym} 320 610 0 0 {name=l1 lab=GND}
C {two_stage_amplifier.sym} -20 -20 0 0 {name=x1}
C {lab_pin.sym} 60 -120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -60 20 0 0 {name=p2 sig_type=std_logic lab=Vb1}
C {lab_pin.sym} -60 40 0 0 {name=p3 sig_type=std_logic lab=Vb2}
C {lab_pin.sym} -60 60 0 0 {name=p4 sig_type=std_logic lab=Vb3}
C {lab_pin.sym} -60 -30 0 0 {name=p5 sig_type=std_logic lab=IN_P}
C {lab_pin.sym} -60 -10 0 0 {name=p6 sig_type=std_logic lab=IN_N
value="dc 0.9 ac -0.5 pulse(0 \{vin\}/(-2) 1u 1n 1n 10n 10u)"}
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
C {vsource.sym} 470 430 0 0 {name=V2 value="dc 0.9 ac -0.5" savecurrent=true}
