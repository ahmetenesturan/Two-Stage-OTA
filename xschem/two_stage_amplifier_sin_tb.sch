v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 760 200 760 220 {lab=GND}
N 760 100 760 140 {lab=VDD}
N 240 40 240 60 {lab=GND}
N 840 200 840 220 {lab=GND}
N 840 100 840 140 {lab=Vb1}
N 910 210 910 220 {lab=GND}
N 910 100 910 150 {lab=Vb2}
N 980 200 980 220 {lab=GND}
N 980 100 980 140 {lab=Vb3}
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
N 240 -140 240 -120 {lab=VDD}
N 120 40 140 40 {lab=Vb3}
N 120 20 140 20 {lab=Vb2}
N 120 0 140 0 {lab=Vb1}
N 120 -30 140 -30 {lab=AMP_IN_N}
N 120 -50 140 -50 {lab=AMP_IN_P}
N 360 -50 380 -50 {lab=OUT_P}
N 360 -30 380 -30 {lab=OUT_N}
N 380 -30 380 20 {lab=OUT_N}
N 380 80 380 100 {lab=GND}
N 380 -50 500 -50 {lab=OUT_P}
N 500 -50 500 20 {lab=OUT_P}
N 500 80 500 100 {lab=GND}
N 180 310 180 370 {lab=IN_P}
N 470 310 470 370 {lab=IN_N}
N 180 500 320 500 {lab=#net1}
N 180 480 180 500 {lab=#net1}
N 320 500 470 500 {lab=#net1}
N 470 480 470 500 {lab=#net1}
N 670 50 670 70 {lab=GND}
N 610 40 630 40 {lab=GND}
N 610 40 610 60 {lab=GND}
N 610 60 670 60 {lab=GND}
N 610 0 630 0 {lab=OUT_P}
N 670 -40 670 -10 {lab=#net2}
N 670 -150 670 -100 {lab=#net2}
N 640 -150 670 -150 {lab=#net2}
N 630 -150 640 -150 {lab=#net2}
N 490 -150 570 -150 {lab=AMP_IN_N}
N 390 -150 430 -150 {lab=IN_N}
N 880 0 880 20 {lab=GND}
N 820 -10 840 -10 {lab=GND}
N 820 -10 820 10 {lab=GND}
N 820 10 880 10 {lab=GND}
N 820 -50 840 -50 {lab=OUT_N}
N 880 -90 880 -60 {lab=#net3}
N 880 -200 880 -150 {lab=#net3}
N 850 -200 880 -200 {lab=#net3}
N 840 -200 850 -200 {lab=#net3}
N 700 -200 780 -200 {lab=AMP_IN_P}
N 600 -200 640 -200 {lab=IN_P}
N 670 -100 670 -40 {lab=#net2}
N 880 -150 880 -90 {lab=#net3}
C {devices/launcher.sym} 750 370 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vsource.sym} 760 170 0 0 {name=V1 value=1.8 savecurrent=true}
C {gnd.sym} 760 220 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 760 100 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {gnd.sym} 240 60 0 0 {name=l3 lab=GND}
C {vsource.sym} 840 170 0 0 {name=V3 value=1.2 savecurrent=true}
C {gnd.sym} 840 220 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 840 100 0 0 {name=p18 sig_type=std_logic lab=Vb1}
C {vsource.sym} 910 180 0 0 {name=V4 value=0.7 savecurrent=true}
C {gnd.sym} 910 220 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 910 100 0 0 {name=p19 sig_type=std_logic lab=Vb2}
C {vsource.sym} 980 170 0 0 {name=V5 value=1.1 savecurrent=true}
C {gnd.sym} 980 220 0 0 {name=l6 lab=GND}
C {code_shown.sym} -230 20 0 0 {name=spice only_toplevel=false value="
.temp 25
.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all

tran 100p 3u
plot out_p-out_n in_p-in_n

.endc"}
C {devices/launcher.sym} 750 300 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 980 100 0 0 {name=p24 sig_type=std_logic lab=Vb3}
C {sky130_fd_pr/corner.sym} 760 490 0 0 {name=CORNER only_toplevel=true corner=tt}
C {vsource.sym} 180 430 0 0 {name=V6 value="sin(0 1.5 1meg)" savecurrent=true}
C {lab_pin.sym} 180 220 0 0 {name=p21 sig_type=std_logic lab=IN_P}
C {lab_pin.sym} 470 220 0 0 {name=p22 sig_type=std_logic lab=IN_N
value="dc 0.9 ac -0.5 pulse(0 \{vin\}/(-2) 1u 1n 1n 10n 10u)"}
C {vsource.sym} 320 560 0 0 {name=V7 value=0.9 savecurrent=true}
C {gnd.sym} 320 610 0 0 {name=l1 lab=GND}
C {two_stage_amplifier.sym} 160 -40 0 0 {name=x1}
C {lab_pin.sym} 240 -140 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 120 0 0 0 {name=p2 sig_type=std_logic lab=Vb1}
C {lab_pin.sym} 120 20 0 0 {name=p3 sig_type=std_logic lab=Vb2}
C {lab_pin.sym} 120 40 0 0 {name=p4 sig_type=std_logic lab=Vb3}
C {lab_pin.sym} 600 -200 0 0 {name=p5 sig_type=std_logic lab=IN_P}
C {lab_pin.sym} 390 -150 0 0 {name=p6 sig_type=std_logic lab=IN_N}
C {lab_pin.sym} 500 -50 0 1 {name=p7 sig_type=std_logic lab=OUT_P}
C {lab_pin.sym} 380 -30 0 1 {name=p8 sig_type=std_logic lab=OUT_N}
C {capa.sym} 380 50 0 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 380 100 0 0 {name=l10 lab=GND}
C {capa.sym} 500 50 0 0 {name=C4
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 500 100 0 0 {name=l11 lab=GND}
C {vcvs.sym} 670 20 0 0 {name=E1 value=1}
C {gnd.sym} 670 70 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 610 0 0 0 {name=p9 sig_type=std_logic lab=OUT_P}
C {res.sym} 600 -150 1 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 460 -150 1 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 520 -150 1 0 {name=p10 sig_type=std_logic lab=AMP_IN_N}
C {vcvs.sym} 880 -30 0 0 {name=E2 value=1}
C {gnd.sym} 880 20 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 820 -50 0 0 {name=p12 sig_type=std_logic lab=OUT_N}
C {res.sym} 810 -200 1 0 {name=R3
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 670 -200 1 0 {name=R4
value=1
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 730 -200 1 0 {name=p13 sig_type=std_logic lab=AMP_IN_P}
C {lab_pin.sym} 120 -30 2 1 {name=p11 sig_type=std_logic lab=AMP_IN_N}
C {lab_pin.sym} 120 -50 2 1 {name=p14 sig_type=std_logic lab=AMP_IN_P}
C {vsource.sym} 470 430 2 0 {name=V2 value="sin(0 1.5 1meg)" savecurrent=true}
