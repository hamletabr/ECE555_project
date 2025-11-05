** Generated for: hspiceD
** Generated on: Nov  3 23:55:15 2025
** Design library name: ECE555
** Design cell name: RELU
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
** Cell name: RELU
** View name: schematic
xi6 a<2> vdd vss net15 INV
xi5 a<2> vdd vss net11 INV
xi4 a<2> vdd vss net7 INV
xi8 net15 a<2> vdd vss y<2> AND2
xi7 net11 a<1> vdd vss y<1> AND2
xi3 net7 a<0> vdd vss y<0> AND2
.END
