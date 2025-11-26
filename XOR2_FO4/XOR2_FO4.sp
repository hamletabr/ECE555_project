** Generated for: hspiceD
** Generated on: Nov 25 23:17:32 2025
** Design library name: ECE555
** Design cell name: XOR2_FO4
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
mn3 net11 net2 vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn2 y net5 net11 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn1 net3 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn0 y a net3 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mp7 y net5 net25 vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp6 net25 a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp5 net19 b vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp4 y net2 net19 vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
xi1 b vdd vss net5 INV
xi0 a vdd vss net2 INV
.ends XOR2
** End of subcircuit definition.

** Library name: ECE555
** Cell name: XOR2_FO4
** View name: schematic
xi0 a b vdd vss y XOR2
xi4 y vdd vss net19 INV
xi3 y vdd vss net15 INV
xi2 y vdd vss net11 INV
xi1 y vdd vss net7 INV
.END
