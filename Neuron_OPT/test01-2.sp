**Test
.GLOBAL vss! vdd!
.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0
+    PROBE
+    CSHUNT=1e-18
.options NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"
.INCLUDE "Neuron_OPT.pex.netlist"
v1 vdd 0 0.9v
v2 vss 0 0v

v3 A<0>		0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.9v 5.000ns 0.9v 
v4 A<1>		0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.0v 4.000ns 0.0v 4.025ns 0.9v 5.000ns 0.9v 

v5 B<0>		0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.0v	3.000ns 0.0v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.9v 5.000ns 0.9v 
v6 B<1>		0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.0v	3.000ns 0.0v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.0v 5.000ns 0.0v

v7 w00<0>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.0v	3.000ns 0.0v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.9v 5.000ns 0.9v 
v8 w00<1>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.0v	3.000ns 0.0v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.0v 5.000ns 0.0v

v9 w10<0>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.0v 4.000ns 0.0v 4.025ns 0.9v 5.000ns 0.9v
v10 w10<1>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.0v 4.000ns 0.0v 4.025ns 0.9v 5.000ns 0.9v

v11 w20<0>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.9v 5.000ns 0.9v 
v12 w20<1>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.0v 4.000ns 0.0v 4.025ns 0.0v 5.000ns 0.0v

v13 w20<2> 	0 pwl  0.000ns 0.0v  5.000ns 0.0v

XDUT VSS VDD B<1> B<0> A<1> A<0> W10<0> W00<0> W10<1> W00<1> W20<0> W20<1> W20<2> Y<0> Y<1> Y<2> Neuron_OPT

.PROBE TRAN v(VDD) v(VSS) v(B<1>) v(B<0>) v(A<1>) v(A<0>) v(W10<0>) v(W00<0>) v(W10<1>) v(W00<1>) v(W20<0>) v(W20<1>) v(W20<2>) v(Y<0>) v(Y<1>) v(Y<2>)

.OP
.TRAN STEP=10p STOP=5n
.end
