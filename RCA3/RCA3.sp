** Generated for: hspiceD
** Generated on: Nov  3 04:23:49 2025
** Design library name: ECE555
** Design cell name: RCA3
** Design view name: schematic
** Library name: ECE555
** Cell name: INV
** View name: schematic
.subckt INV a vdd vss y
mp1 y a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mn0 y a vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
.ends INV
** End of subcircuit definition.

** Library name: ECE555
** Cell name: XOR2
** View name: schematic
.subckt XOR2 a b vdd vss y
mn3 net11 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn2 y a net11 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn1 net3 net6 vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn0 y net2 net3 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mp7 y net6 net25 vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp6 net25 a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp5 net19 net2 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp4 y b net19 vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
xi1 b vdd vss net6 INV
xi0 a vdd vss net2 INV
.ends XOR2
** End of subcircuit definition.

** Library name: ECE555
** Cell name: NAND2
** View name: schematic
.subckt NAND2 a b vdd vss y
mp1 y b vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp0 y a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mn3 net11 b vss vss nmos_rvt w=108e-9 l=20e-9 nfin=4
mn2 y a net11 vss nmos_rvt w=108e-9 l=20e-9 nfin=4
.ends NAND2
** End of subcircuit definition.

** Library name: ECE555
** Cell name: FA
** View name: schematic
.subckt FA a b cin cout s vdd vss
xi1 net2 cin vdd vss s XOR2
xi0 a b vdd vss net2 XOR2
xi6 net6 net14 vdd vss cout NAND2
xi4 a b vdd vss net6 NAND2
xi5 net2 cin vdd vss net14 NAND2
.ends FA
** End of subcircuit definition.

** Library name: ECE555
** Cell name: RCA3
** View name: schematic
xi2 a<2> b<2> net12 cout s<2> vdd vss FA
xi1 a<1> b<1> net5 net12 s<1> vdd vss FA
xi0 a<0> b<0> cin net5 s<0> vdd vss FA
.END

