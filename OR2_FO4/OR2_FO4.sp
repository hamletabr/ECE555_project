** Generated for: hspiceD
** Generated on: Nov 25 22:49:30 2025
** Design library name: ECE555
** Design cell name: OR2_FO4
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
** Cell name: OR2
** View name: schematic
.subckt OR2 a b vdd vss y
mp7 net5 a net1 vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp6 net1 b vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp5 y net5 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp0 net7 a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp1 net5 b net7 vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mn4 y net5 vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn3 net5 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn2 net5 a vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
.ends OR2
** End of subcircuit definition.

** Library name: ECE555
** Cell name: OR2_FO4
** View name: schematic
xi3 y vdd vss net14 INV
xi2 y vdd vss net10 INV
xi1 y vdd vss net6 INV
xi0 y vdd vss net2 INV
xi6 a b vdd vss y OR2
.END

