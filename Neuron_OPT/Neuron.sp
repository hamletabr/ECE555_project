** Generated for: hspiceD
** Generated on: Nov  5 01:59:11 2025
** Design library name: ECE555
** Design cell name: Neuron
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
** Cell name: MULT2x2
** View name: schematic
.subckt MULT2x2 a<1> a<0> b<1> b<0> s<1> s<0> vdd vss
xi6 a<0> b<0> vdd vss s<0> AND2
xi8 s<0> net16 vdd vss s<1> AND2
xi1 a<1> b<1> vdd vss net16 XOR2
.ends MULT2x2
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
.subckt ADD2x3 a<1> a<0> b<1> b<0> s<2> s<1> s<0> vdd vss
xi23 net13 net38 vdd vss s<2> XOR2
xi22 net3 net13 vdd vss s<1> XOR2
xi21 a<1> b<1> vdd vss net13 XOR2
xi20 a<0> b<0> vdd vss s<0> XOR2
xi19 a<0> b<0> vdd vss net3 AND2
xi25 a<1> b<1> vdd vss net37 NAND2
xi24 net13 net3 vdd vss net36 NAND2
xi26 net37 net36 vdd vss net38 NAND2
.ends ADD2x3
** End of subcircuit definition.

** Library name: ECE555
** Cell name: OR2
** View name: schematic
.subckt OR2 a b vdd vss y
mp5 y net5 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp0 net7 a vdd vdd pmos_rvt w=162e-9 l=20e-9 nfin=6
mp1 net5 b net7 vdd pmos_rvt w=162e-9 l=20e-9 nfin=6
mn4 y net5 vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn3 net5 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn2 net5 a vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
.ends OR2
** End of subcircuit definition.

** Library name: ECE555
** Cell name: ADD3x3
** View name: schematic
.subckt ADD3x3 a<2> a<1> a<0> b<2> b<1> b<0> vdd vss y<2> y<1> y<0>
xi4 net22 net13 vdd vss y<2> XOR2
xi3 net17 net6 vdd vss y<1> XOR2
xi2 a<2> b<2> vdd vss net13 XOR2
xi1 a<1> b<1> vdd vss net6 XOR2
xi0 a<0> b<0> vdd vss y<0> XOR2
xi7 net6 net17 vdd vss net38 AND2
xi6 a<1> b<1> vdd vss net1 AND2
xi5 a<0> b<0> vdd vss net17 AND2
xi8 net38 net1 vdd vss net22 OR2
.ends ADD3x3
** End of subcircuit definition.

** Library name: ECE555
** Cell name: RELU
** View name: schematic
.subckt RELU a<2> a<1> a<0> vdd vss y<2> y<1> y<0>
xi6 a<2> vdd vss net15 INV
xi5 a<2> vdd vss net11 INV
xi4 a<2> vdd vss net7 INV
xi3 net7 a<0> vdd vss y<0> AND2
xi7 net11 a<1> vdd vss y<1> AND2
xi8 net15 a<2> vdd vss y<2> AND2
.ends RELU
** End of subcircuit definition.

** Library name: ECE555
** Cell name: Neuron
** View name: schematic
xi1 b<1> b<0> w10<1> w10<0> mult2<1> mult2<0> vdd vss MULT2x2
xi0 a<1> a<0> w00<1> w00<0> mult1<1> mult1<0> vdd vss MULT2x2
xi2 mult1<1> mult1<0> mult2<1> mult2<0> add1<2> add1<1> add1<0> vdd vss ADD2x3
xi5 add1<2> add1<1> add1<0> w20<2> w20<1> w20<0> vdd vss add2<2> add2<1> add2<0> ADD3x3
xi4 add2<2> add2<1> add2<0> vdd vss y<2> y<1> y<0> RELU
.END

