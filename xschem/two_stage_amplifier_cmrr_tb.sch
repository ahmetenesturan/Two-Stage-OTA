v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 500 20 500 40 {lab=GND}
N 500 -80 500 -40 {lab=VDD}
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
N 180 500 320 500 {lab=#net1}
N 180 480 180 500 {lab=#net1}
N 320 500 470 500 {lab=#net1}
N 470 480 470 500 {lab=#net1}
N 1080 50 1080 70 {lab=GND}
N 1080 -130 1080 -110 {lab=VDD}
N 960 50 980 50 {lab=Vb3}
N 960 30 980 30 {lab=Vb2}
N 960 10 980 10 {lab=Vb1}
N 960 -20 980 -20 {lab=IN_CM}
N 960 -40 980 -40 {lab=IN_CM}
N 1200 -40 1220 -40 {lab=OUT_P2}
N 1200 -20 1220 -20 {lab=OUT_N2}
N 1220 -20 1220 30 {lab=OUT_N2}
N 1220 90 1220 110 {lab=GND}
N 1220 -40 1340 -40 {lab=OUT_P2}
N 1340 -40 1340 30 {lab=OUT_P2}
N 1340 90 1340 110 {lab=GND}
N 1110 480 1110 500 {lab=#net2}
N 1110 240 1110 280 {lab=IN_CM}
N 1110 390 1110 420 {lab=IN_CM}
N 1110 280 1110 330 {lab=IN_CM}
N 1250 520 1250 550 {lab=#net2}
N 1250 610 1250 630 {lab=GND}
N 1110 330 1110 390 {lab=IN_CM}
N 1110 520 1250 520 {lab=#net2}
N 1110 500 1110 520 {lab=#net2}
C {devices/launcher.sym} 650 220 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vsource.sym} 500 -10 0 0 {name=V1 value=1.8 savecurrent=true}
C {gnd.sym} 500 40 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 500 -80 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {gnd.sym} 60 80 0 0 {name=l3 lab=GND}
C {vsource.sym} 640 -10 0 0 {name=V3 value=1.2 savecurrent=true}
C {gnd.sym} 640 40 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 640 -80 0 0 {name=p18 sig_type=std_logic lab=Vb1}
C {vsource.sym} 710 0 0 0 {name=V4 value=0.7 savecurrent=true}
C {gnd.sym} 710 40 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 710 -80 0 0 {name=p19 sig_type=std_logic lab=Vb2}
C {vsource.sym} 780 -10 0 0 {name=V5 value=1.1 savecurrent=true}
C {gnd.sym} 780 40 0 0 {name=l6 lab=GND}
C {code_shown.sym} -240 200 0 0 {name=spice only_toplevel=false value="
.temp 25

.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all

ac dec 10 1k 10G
let diff_gain = db(mag(out_p))
let cm_gain = db(mag(out_p2))
let cmrr = diff_gain - cm_gain
plot cmrr

.endc"}
C {devices/launcher.sym} 660 150 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 780 -80 0 0 {name=p24 sig_type=std_logic lab=Vb3}
C {sky130_fd_pr/corner.sym} 620 310 0 0 {name=CORNER only_toplevel=true corner=tt}
C {vsource.sym} 180 430 0 0 {name=V6 value="ac 0.5" savecurrent=true}
C {lab_pin.sym} 180 220 0 0 {name=p21 sig_type=std_logic lab=IN_P}
C {lab_pin.sym} 470 220 0 0 {name=p22 sig_type=std_logic lab=IN_N}
C {gnd.sym} 320 610 0 0 {name=l1 lab=GND}
C {two_stage_amplifier.sym} -20 -20 0 0 {name=x1}
C {lab_pin.sym} 60 -120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -60 20 0 0 {name=p2 sig_type=std_logic lab=Vb1}
C {lab_pin.sym} -60 40 0 0 {name=p3 sig_type=std_logic lab=Vb2}
C {lab_pin.sym} -60 60 0 0 {name=p4 sig_type=std_logic lab=Vb3}
C {lab_pin.sym} -60 -30 0 0 {name=p5 sig_type=std_logic lab=IN_P}
C {lab_pin.sym} -60 -10 0 0 {name=p6 sig_type=std_logic lab=IN_N}
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
C {vsource.sym} 320 560 0 0 {name=V7 value=0.9 savecurrent=true}
C {vsource.sym} 470 430 2 0 {name=V2 value="ac 0.5" savecurrent=true}
C {gnd.sym} 1080 70 0 0 {name=l7 lab=GND}
C {two_stage_amplifier.sym} 1000 -30 0 0 {name=x2}
C {lab_pin.sym} 960 10 0 0 {name=p10 sig_type=std_logic lab=Vb1}
C {lab_pin.sym} 960 30 0 0 {name=p11 sig_type=std_logic lab=Vb2}
C {lab_pin.sym} 960 50 0 0 {name=p12 sig_type=std_logic lab=Vb3}
C {lab_pin.sym} 1340 -40 0 1 {name=p15 sig_type=std_logic lab=OUT_P2}
C {lab_pin.sym} 1220 -20 0 1 {name=p17 sig_type=std_logic lab=OUT_N2}
C {capa.sym} 1220 60 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1220 110 0 0 {name=l8 lab=GND}
C {capa.sym} 1340 60 0 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1340 110 0 0 {name=l9 lab=GND}
C {vsource.sym} 1110 450 0 0 {name=V9 value="ac 1" savecurrent=true}
C {lab_pin.sym} 1110 240 0 0 {name=p23 sig_type=std_logic lab=IN_CM}
C {gnd.sym} 1250 630 0 0 {name=l13 lab=GND}
C {vsource.sym} 1250 580 0 0 {name=V10 value=0.9 savecurrent=true}
C {lab_pin.sym} 1080 -130 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 960 -40 0 0 {name=p13 sig_type=std_logic lab=IN_CM}
C {lab_pin.sym} 960 -20 0 0 {name=p14 sig_type=std_logic lab=IN_CM}
