** Library name: ECE555
** Cell name: AND2
** View name: schematic
.subckt AND2 a b vdd vss y
mn4 y net5 vss vss nmos_lvt w=54e-9 l=20e-9 nfin=2
mn3 net11 b vss vss nmos_lvt w=108e-9 l=20e-9 nfin=4
mn2 net5 a net11 vss nmos_lvt w=108e-9 l=20e-9 nfin=4
mp5 y net5 vdd vdd pmos_lvt w=81e-9 l=20e-9 nfin=3
mp0 net5 a vdd vdd pmos_lvt w=81e-9 l=20e-9 nfin=3
mp1 net5 b vdd vdd pmos_lvt w=81e-9 l=20e-9 nfin=3
.ends AND2
** End of subcircuit definition.

** Library name: ECE555
** Cell name: INV
** View name: schematic
.subckt INV in out vdd vss
mn0 out in vss vss nmos_lvt w=54e-9 l=20e-9 nfin=2
mp1 out in vdd vdd pmos_lvt w=81e-9 l=20e-9 nfin=3
.ends INV
** End of subcircuit definition.

** Library name: ECE555
** Cell name: AND2_FO4
** View name: schematic
xi0 a b vdd vss y AND2
xi4 y net13 vdd vss INV
xi3 y net11 vdd vss INV
xi2 y net9 vdd vss INV
xi1 y net7 vdd vss INV
.END
