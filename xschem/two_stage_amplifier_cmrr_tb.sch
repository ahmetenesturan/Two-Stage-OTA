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
N 280 200 280 230 {lab=IN}
N 280 290 280 310 {lab=GND}
N 60 -120 60 -100 {lab=VDD}
N -60 60 -40 60 {lab=Vb3}
N -60 40 -40 40 {lab=Vb2}
N -60 20 -40 20 {lab=Vb1}
N -60 -10 -40 -10 {lab=IN}
N -60 -30 -40 -30 {lab=IN}
N 180 -30 200 -30 {lab=OUT_P}
N 180 -10 200 -10 {lab=OUT_N}
N 200 -10 200 40 {lab=OUT_N}
N 200 100 200 120 {lab=GND}
N 200 -30 320 -30 {lab=OUT_P}
N 320 -30 320 40 {lab=OUT_P}
N 320 100 320 120 {lab=GND}
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
C {code_shown.sym} -450 -40 0 0 {name=spice only_toplevel=false value="
.temp 25

.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all

ac dec 10 1k 10G
plot db(mag(out_p))
*wrdata out_gain.txt db(mag(out_p))
wrdata cm_gain.txt db(mag(out_p))

.endc"}
C {devices/launcher.sym} 660 150 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 780 -80 0 0 {name=p24 sig_type=std_logic lab=Vb3}
C {sky130_fd_pr/corner.sym} 620 310 0 0 {name=CORNER only_toplevel=true corner=tt}
C {gnd.sym} 280 310 0 0 {name=l1 lab=GND}
C {two_stage_amplifier.sym} -20 -20 0 0 {name=x1}
C {lab_pin.sym} 60 -120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -60 20 0 0 {name=p2 sig_type=std_logic lab=Vb1}
C {lab_pin.sym} -60 40 0 0 {name=p3 sig_type=std_logic lab=Vb2}
C {lab_pin.sym} -60 60 0 0 {name=p4 sig_type=std_logic lab=Vb3}
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
C {vsource.sym} 280 260 0 0 {name=V7 value="dc 0.9 ac 1" savecurrent=true}
C {lab_pin.sym} 280 200 0 0 {name=p9 sig_type=std_logic lab=IN}
C {lab_pin.sym} -60 -30 0 0 {name=p5 sig_type=std_logic lab=IN}
C {lab_pin.sym} -60 -10 0 0 {name=p6 sig_type=std_logic lab=IN}
