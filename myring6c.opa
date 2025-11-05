{/home/as/opa/myring6c.opa}
{com tutorial ring, septum aperture corrected com}


energy = 1.500000;
rotinv = 0;
    betax   = 10.3264633; alphax  = -0.0000004;
    etax    = 0.0023545; etaxp   = 0.0000000;
    betay   = 1.7003305; alphay  = 0.0000009;
    etay    = 0.0001077; etayp   = 0.0000000;

{----- variables ---------------------------------------------------}

qsfac  = 2;

{----- table of elements ---------------------------------------------}

d1     : drift, l = 0.16000000, ax = 15.00, ay = 10.00;
d1ma   : drift, l = 0.30500000, ax = 15.00, ay = 10.00;
d1mb   : drift, l = 0.37500000, ax = 15.00, ay = 10.00;
d2     : drift, l = 0.07000000, ax = 15.00, ay = 10.00;
d2x    : drift, l = 0.02000000, ax = 15.00, ay = 10.00;
d0     : drift, l = 2.90000000, ax = 15.00, ay = 10.00;
d3     : drift, l = 0.26000000, ax = 15.00, ay = 10.00;
d3h    : drift, l = 0.08000000, ax = 15.00, ay = 10.00;
d3x    : drift, l = 0.01500000, ax = 15.00, ay = 10.00;
dqua   : drift, l = 0.04000000, block, ax = 50.00, ay = 50.00;
dqsx   : drift, l = 0.02000000, block, ax = 50.00, ay = 50.00;
dbpm   : drift, l = 0.01500000, block, ax = 50.00, ay = 50.00;
dund   : drift, l = 1.40000000, ax = 50.00, ay = 50.00;
dy2    : drift, l = 0.30000000, ax = 50.00, ay = 50.00;
dy1    : drift, l = 2.10000000, ax = 50.00, ay = 50.00;
noqs   : drift, l = 0.01000000, block, ax = 50.00, ay = 50.00;
ds1    : drift, l = 0.70000000, ax = 50.00, ay = 50.00;
drf    : drift, l = 0.20000000, block, ax = 50.00, ay = 50.00;
d0r    : drift, l = 0.25000000, ax = 50.00, ay = 50.00;

center : marker, ax = 50.00, ay = 50.00;

qsf1   : quadrupole, l = 0.02000000, k = 0.645000*qsfac, rot = 45.000000,
         ax = 15.00, ay = 10.00;
qsf2   : quadrupole, l = 0.02000000, k = -0.740000*qsfac, rot = 45.000000,
         ax = 15.00, ay = 10.00;
qs0    : quadrupole, l = 0.02000000, k = -0.570000*qsfac, rot = 45.000000,
         ax = 15.00, ay = 10.00;
qf     : quadrupole, l = 0.14000000, k = 7.407734, ax = 15.00, ay = 10.00;
qfm    : quadrupole, l = 0.14000000, k = 5.897098, ax = 15.00, ay = 10.00;
q1     : quadrupole, l = 0.15000000, k = -3.758661, ax = 15.00, ay = 10.00;
q2     : quadrupole, l = 0.15000000, k = 6.693474, ax = 15.00, ay = 10.00;
q1u    : quadrupole, l = 0.15000000, k = -3.783635, ax = 15.00, ay = 10.00;
q2u    : quadrupole, l = 0.15000000, k = 6.701448, ax = 15.00, ay = 10.00;

sfq    : sextupole, l = 0.01000000, k = 268.272316, n = 2, ax = 15.00,
         ay = 10.00;
sdq    : sextupole, l = 0.01000000, k = -172.613692, n = 2, ax = 15.00,
         ay = 10.00;

rfc    : solenoid, l = 0.40000000,  k = 0.000000, ax = 50.00, ay = 50.00;

und    : undulator, l = 1.50000000, lamb = 0.020000, bmax = 1.000000,
         f1 = 0.636620, f2 = 0.500000, f3 = 0.424410, gap = 4.000, half,
         ax = 20.00, ay = 2.00;

kin    : kicker, l = 0.50000000, n = 1,  k = 0.700,  x = 0.000,  t = 500.000,
          delay = 119.416 nk = 1, ax = 20.00, ay = 10.00;
sept   : kicker, l = 1.50000000, n = 1,  k = 0.000,  x = 0.000,  t = 0.000,
          delay = 0.000 nk = 1, ax = 20.00, ay = 50.00;

omid   : opticsmarker, betax = 0.307958, alphax = 0.000000, betay = 17.270700,
         alphay = 0.000000, etax  = 0.103330, etaxp  = 0.000000,
         etay  = 0.020711, etayp  = 0.000000, c11 = -0.0294571,
         c12 = 0.0000000, c21 = 0.0000000, c22 = -0.2284860, ax = 15.00,
         ay = 10.00;

b1     : combined, l = 0.80000000, t = 11.2500000000, k = -0.810401,
         t1 = 11.25000000, t2 = 0.00000000, m = -4.5, n = 8, ax = 15.00,
         ay = 10.00;

xund   : photonbeam, xl = 20.00, style = 0, snap = 1, ax = 50.00,
         ay = 50.00;

mon    : monitor, ax = 50.00, ay = 50.00;

ch     : h-corrector, ax = 50.00, ay = 50.00;

cv     : v-corrector, ax = 50.00, ay = 50.00;


{----- table of segments ---------------------------------------------}

bpm    : dbpm, mon, dbpm;
qfc    : dqua, qf, dqua;
qfmc   : dqua, qfm, dqua;
q1c    : dqua, q1, dqua;
q2c    : dqua, q2, dqua;
q1uc   : dqua, q1u, dqua;
q2uc   : dqua, q2u, dqua;
sfc1   : dqsx, sfq, cv, qsf1, ch, sfq, dqsx;
sfc2   : dqsx, sfq, cv, qsf2, ch, sfq, dqsx;
sdc    : dqsx, sdq, noqs, noqs, sdq, dqsx;
qs0c   : dqsx, noqs, cv, qs0, ch, noqs, dqsx;
hcellx : -b1, d1, qfc, d2x, bpm, d2x;
hcell  : -b1, d1, qfc, d2;
cell   : -hcellx, hcell;
dsup   : d2x, bpm, d2x, qfmc, d1ma, sdc, d1mb, b1;
stri0  : d3, q1c, d3x, bpm, d3x, qs0c, d3h, q2c;
stri   : stri0, d0;
stry   : stri0, dy2, kin, dy1;
stru   : d3, q1uc, d3x, bpm, d3x, qs0c, d3h, q2uc, dund, und;
harc0  : omid, hcell, sfc1, cell, sfc2, dsup;
harci  : harc0, stri;
harcu  : harc0, stru;
harcy  : harc0, stry;
strrf  : stri0, d0r, drf, rfc, drf, drf, rfc, drf, drf, rfc, drf, d0r;
strsp  : stri0, ds1, sept, ds1;
harcsp : harc0, strsp;
harcrf : harc0, strrf;
arc    : -harci, omid, harci;
arci   : harci, -harci, nper=4;
arcu   : harcu, xund, center, -harcu, nper=4;
ring0  : 4*arc;
ring   : -harcsp, arcu, harcy, -harcrf, arcu, harci;

{/home/as/opa/myring6c.opa}
