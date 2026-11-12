#import "../style.typ": *

#stdtitle(
  [MMP 1],
  [Serie 8],
  [Lukas Mengis],
)
#pagebreak()


#show: setup


= 

$f in C^s_0 (RR^n)$

$
  hat(f) (k) = int_(RR^n) f(x) e^(-i k x) d x
$

$
  hat(f)(k) &= intr f(x) e^(-i k x) d x\
  &= underbrace([-1/(i k) f(x) e^(-i k x)],=0) + 1/(i k) intr f'(x) e^(-i k x) d x\
  &= 1/(i k)^s intr f^((s)) (x)e^(-i k x) d x
$
since $f in L_1$
$
  => abs(hat(f)(x)) &<=1/abs(k)^s intr abs(f^((s))(x) e^(-i k x)) d x\
  &= abs(abs(f))_1/abs(k)^s <= K /abs(k)^s
$
for some finite number $K$.\
let $k!=0$
$
  K/abs(k)^s = O/(1+ abs(k)^s) <=> O = K (1+ abs(k)^s)/abs(k)^s
$
$k =0$


$
  hat(f) (k) <= intr abs(f(x)) d x <= U <oo
$
let 
$
  C = max(O,U)
$
Then
$
  abs(hat(f)(k)) <= C/(1+ abs(k)^s), quadd fa k in RR^n
$

=
==
$
  J_(1/2) &= sum_(k=0)^oo (-1)^k/(k! Gamma(k + 3/2)) (z/2)^(2k + 1/2)\
  &= sum_(k=0)^oo (-1)^k z^(2k + 1) sqrt(2)/sqrt(z)  1/k! 1/Gamma(1/2) 1/(2^(k-1) product_1^k (1/2+k))\
  &= sum_(k=0)^oo (-1)^k z^(2k+1) sqrt(2/(z pi)) product_(k=1)^k (1+ 2k)k\
  &=  sqrt(2/(pi z))sum_(k=0)^oo (-1)^k/(2k + 1)! x^(2k+1) \
  &= sqrt(2/(pi z)) sin(z)
$

==
$
  part/(part z) (z^(- alpha) J_alpha (z)) = -z^(-alpha) J_(alpha +1) (z)
$
$
  f(k) = (sin(abs(k)t))/abs(k)
$
$
  (1/z part/(part z))^m (z^alpha J_(alpha)) = z^(alpha-m) J_(alpha-m) (z)
$
$
  f(abs(k)) &= sqrt(2/pi) z^(1/2) J_(1/2) (abs(z))\
  &= sqrt(2/pi)  (1/z part_z)^((n-3 )/2) (z^(n-2) (2pi)^(-n/2) (2pi)^(n/2)  z^(1-n/2) J_(n/2 -1) (z))\
  &= (sqrt(2/pi))^n sqrt(2)  (1/z part_z)^((n-3)/2) (z^(n-2) int_(part B_z (0)) e^(-i k y) d Omega (y))\
  &= gamma_n (1/z part_z)^((n-3)/2) ( (z^(n-2))/abs( part B_z (0))int_(part B_z (0) )e^(i k y) d Omega (y))
$



= Schaltkreis
==
Fromelblatt:
$
  => Q/C + R (d Q)/(d t) = U_0\
  => R C dot(U)_("out") = U_("in") - U_("out")
$
==
$
  dot(U) + 1/(R C) U = 1/ (R C) U_0\
  <=> part_t (e^(1/(R C) t) U) = 1/(R C)e^(1/(R C) t) U_0\
$
$
  =>  [e^(s/(R C)) U(s)]_(-oo)^t &= 1/(R C) int_(-oo)^t e^(s/(R C) ) U_0 (s) d s\
  => U (s) &= 1/(R C) int_(-oo)^t e^((s-t)/(R C)) U_0 (s) d s\
$
$
  phi (x) = cases(1 quadd & x >= 0, 0 & x <0 )
$

$
  h (x)=(phi(x))/(R C) e^(-x/(R C))
$
$
  => U (t) &= int_RR phi (t-s) e^(-(t-s)/R C) U_0 (s) d s\
  &= (h star U_0) (t)
$
==

$
  hat(U) (omega) &= (hat(h) dot hat(U)_0) (omega)
$
$ 
  hat(h) (omega) &= int_RR h(s) e^(-i omega s) d s\
  &= 1/ (R C)int_RR  phi(x) e^(- x/(R C)) e^( - i omega x) d x\
  &= 1/(R C) int_0^oo e^(-x (1/(R C) + omega i)) d x\
  &= 1/(R C) [-1/(1/(R C) + omega i) e^(-x (1/(R C) + omega i))]_0^oo \
  &= 1/(1 + R C omega i)

$
$
  => hat(U) (omega) = 1/(1+ i omega R C) dot hat(U)_0
$
$
  abs(hat(U) (omega)) = abs(hat(U)_0) 1/sqrt((1+ omega^2 R^2 C^2))
$
= keine Zeit 