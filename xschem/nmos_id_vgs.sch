v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -630 -50 -630 -0 {lab=vdd}
N -630 60 -630 100 {lab=GND}
N -550 -50 -550 0 {lab=vdd}
N -550 60 -550 100 {lab=d}
N -130 -210 -100 -210 {lab=GND}
N -100 -210 -100 -150 {lab=GND}
N -130 -150 -100 -150 {lab=GND}
N -130 -180 -130 -150 {lab=GND}
N -130 -150 -130 -120 {lab=GND}
N -130 -290 -130 -240 {lab=d}
N -210 -210 -170 -210 {lab=g}
N -470 -50 -470 0 {lab=g}
N -470 60 -470 100 {lab=GND}
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
.param v_g=0.78
.param l_nmos=0.15
.param w_nmos=10


.op

.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all



compose w_vec start=1 stop=100 step=1
let vds_vec=vector(length(w_vec))
let vov_vec=vector(length(w_vec))
let idx=0



foreach w_val $&w_vec
  alterparam w_nmos=$w_val
reset
run
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vds]
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vgs]
save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vth]
  let vds_vec[idx]= @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vds]
let vov_vec[idx]= (@m.xm1.msky130_fd_pr__nfet_01v8_lvt[vgs] - @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vth])
  let idx=idx+1
end

plot (vds_vec - vov_vec) vds_vec vov_vec vs w_vec

.endc"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -150 -210 0 0 {name=M1
L=\{l_nmos\}
W=\{w_nmos\}
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {isource.sym} -550 30 0 0 {name=I0 value=\{i_d\}}
C {lab_pin.sym} -550 -50 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -550 100 0 1 {name=p2 sig_type=std_logic lab=d}
C {gnd.sym} -130 -120 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -130 -290 0 1 {name=p3 sig_type=std_logic lab=d}
C {lab_pin.sym} -210 -210 0 0 {name=p4 sig_type=std_logic lab=g}
C {vsource.sym} -470 30 0 0 {name=V2 value=\{v_g\} savecurrent=true}
C {gnd.sym} -470 100 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -470 -50 0 0 {name=p5 sig_type=std_logic lab=g}
