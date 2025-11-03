** Generated for: hspiceD
** Generated on: Nov  3 03:15:21 2025
** Design library name: ECE555
** Design cell name: ADD2x3
** Design view name: schematic
** Library name: ECE555
** Cell name: AND2
** View name: schematic
.subckt AND2 a b vdd vss y
mn7 net6 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn4 y net5 vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn6 net5 a net6 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn3 net11 a vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn2 net5 b net11 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mp5 y net5 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp0 net5 b vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp1 net5 a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
.ends AND2
** End of subcircuit definition.

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
** Cell name: ADD2x3
** View name: schematic
xi18 net31 net36 vdd vss net51 AND2
xi11 a<0> b<0> vdd vss net12 AND2
xi13 b<0> vdd vss net34 INV
xi12 a<0> vdd vss net30 INV
xi10 net12 net11 vdd vss s<1> XOR2
xi9 a<1> b<1> vdd vss net11 XOR2
xi8 a<0> b<0> vdd vss s<0> XOR2
xi17 net51 net44 vdd vss s<2> NAND2
xi16 a<1> b<1> vdd vss net44 NAND2
xi15 a<1> net34 vdd vss net36 NAND2
xi14 net30 b<1> vdd vss net31 NAND2
.END
