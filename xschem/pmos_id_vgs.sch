v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -630 -50 -630 -0 {lab=vdd}
N -630 60 -630 100 {lab=GND}
N -560 -40 -560 0 {lab=d}
N -130 -180 -130 -150 {lab=d}
N -130 -150 -130 -120 {lab=d}
N -130 -290 -130 -240 {lab=vdd}
N -210 -210 -170 -210 {lab=g}
N -470 -50 -470 0 {lab=g}
N -470 60 -470 100 {lab=GND}
N -130 -210 -100 -210 {lab=vdd}
N -100 -260 -100 -210 {lab=vdd}
N -130 -260 -100 -260 {lab=vdd}
N -560 60 -560 100 {lab=GND}
C {vsource.sym} -630 30 0 0 {name=V1 value=1.8 savecurrent=true}
C {lab_pin.sym} -630 -50 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {gnd.sym} -630 100 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/corner.sym} -90 30 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -230 10 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {code_shown.sym} 50 -470 0 0 {name=spice only_toplevel=false value="
.temp 25

.param i_d=500u
.param v_g=1.24
.param l_pmos=0.35
.param w_pmos=10

.op

.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all



compose w_vec start=100 stop=200 step=1
let vds_vec=vector(length(w_vec))
let vov_vec=vector(length(w_vec))
let idx=0



foreach w_val $&w_vec
  alterparam w_pmos=$w_val
reset
run
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vds]
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
  let vds_vec[idx]= abs(@m.xm1.msky130_fd_pr__pfet_01v8_lvt[vds])
let vov_vec[idx]= (@m.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs] - @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth])
  let idx=idx+1
end

plot (vds_vec - vov_vec) vds_vec vov_vec vs w_vec

.endc"}
C {isource.sym} -560 30 0 0 {name=I0 value=\{i_d\}}
C {lab_pin.sym} -560 -40 2 1 {name=p2 sig_type=std_logic lab=d}
C {lab_pin.sym} -130 -120 0 1 {name=p3 sig_type=std_logic lab=d}
C {lab_pin.sym} -210 -210 0 0 {name=p4 sig_type=std_logic lab=g}
C {vsource.sym} -470 30 0 0 {name=V2 value=\{v_g\} savecurrent=true}
C {gnd.sym} -470 100 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -470 -50 0 0 {name=p5 sig_type=std_logic lab=g}
C {lab_pin.sym} -130 -290 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {gnd.sym} -560 100 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -150 -210 0 0 {name=M1
L=\{l_pmos\}
W=\{w_pmos\}
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
