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
.INCLUDE "ADD2x3.sp"
v1 vdd 0 0.9v
v2 vss 0 0v
v3 a<0> 0 pwl 0ns 0v   3ns 0v   3.025ns 0.9v 10ns 0.9v
v4 a<1>	0 pwl 0ns 0v   6ns 0v   6.025ns 0.9v 10ns 0.9v
v5 b<0>	0 pwl 0ns 0v   1ns 0v   1.025ns 0.9v 3ns 0.9v  3.025ns 0v 4ns 0v 4.025ns 0.9v  6ns 0.9v  6.025ns 0v  7ns 0v  7.025ns 0.9v  10ns 0.9v 
v6 b<1> 0 pwl 0ns 0v   2ns 0v   2.025ns 0.9v 3ns 0.9v  3.025ns 0v 5ns 0v 5.025ns 0.9v  6ns 0.9v  6.025ns 0v  8ns 0v  8.025ns 0.9v  10ns 0.9v
.OP
.TRAN STEP=10p STOP=10n
.end
