** Generated for: hspiceD
** Library name: ECE555
** Cell name: INV
** View name: schematic
.subckt INV a vdd vss y
mp1 y a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mn0 y a vss vss nmos_rvt w=81e-9 l=20e-9 nfin=3
.ends INV
** End of subcircuit definition.

** Library name: ECE555
** Cell name: XOR2
** View name: schematic
mn3 net11 b vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn2 y a net11 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn1 net3 net6 vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn0 y net2 net3 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mp7 y net6 net25 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp6 net25 a vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp5 net19 net2 vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp4 y b net19 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
xi1 b vdd vss net6 INV
xi0 a vdd vss net2 INV
.END
