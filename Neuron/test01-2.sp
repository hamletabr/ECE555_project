**Test
.GLOBAL vss! vdd!
.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0
.options accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"
.INCLUDE "Neuron.sp"
v1 vdd 0 0.9v
v2 vss 0 0v

v3 A<0>		0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.9v 5.000ns 0.9v 
v4 A<1>		0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.0v 2.000ns 0.0v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.0v 4.000ns 0.0v 4.025ns 0.9v 5.000ns 0.9v 

v5 B<0>		0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.0v	3.000ns 0.0v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.9v 5.000ns 0.9v 
v6 B<1>		0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.0v 2.000ns 0.0v 2.025ns 0.0v	3.000ns 0.0v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.0v 5.000ns 0.0v

v7 w00<0>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.0v	3.000ns 0.0v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.9v 5.000ns 0.9v 
v8 w00<1>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.0v 2.000ns 0.0v 2.025ns 0.0v	3.000ns 0.0v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.0v 5.000ns 0.0v

v9 w10<0>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.0v 4.000ns 0.0v 4.025ns 0.9v 5.000ns 0.9v
v10 w10<1>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.9v 2.000ns 0.9v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.0v 4.000ns 0.0v 4.025ns 0.9v 5.000ns 0.9v

v11 w20<0>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.0v 2.000ns 0.0v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.9v 4.000ns 0.9v 4.025ns 0.9v 5.000ns 0.9v 
v12 w20<1>	0 pwl  0.000ns 0.0v 1.000ns 0.0v 1.025ns 0.0v 2.000ns 0.0v 2.025ns 0.9v	3.000ns 0.9v 3.025ns 0.0v 4.000ns 0.0v 4.025ns 0.0v 5.000ns 0.0v

v13 w20<2> 	0 pwl  0.000ns 0.0v  5.000ns 0.0v

.OP
.TRAN STEP=10p STOP=5n
.end
