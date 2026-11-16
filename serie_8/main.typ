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
= 
$
  cal(L) (s) = int_[0,oo] f(t) e^(- s t) d t quadd s in CC
$
==
$a in RR$ such that  $e^(- a t f (t)) in L^1 ([0,oo])$.\
$Re(s) >= a$
$
  => int_([0,oo])  e^(-s t ) f(t) d t & <= int abs(e^(-s t) f(t)) d t\
  &<= "const." int_([0,oo]) abs(f (t) e^(- a t)) d t \
  &< oo
$
==
===
$
  part/(part s)cal(L) (f)(s) &= part/(part s) int_0^oo f(t) e^(- s t)d t \
  &=int_0^oo part/(part t) f(t) e^(- s t) - t f(t) e^(- s t) d t\
  &= underbrace(part/(part s) int_0^oo f(t) e^(- s t) d t,=0) - int t f(t) e^(- s t) d t
$
$
  => part^n/(part s^n) cal(L) (f)(s) = (-1)^n cal(L) (t^n f) (s)
$
===

$
  cal(L) (f^((n))) (s) &= int_0^oo f^((n))(t) e^( -s t ) d t\
  &= [f^((n-1))(t) e^(- s t)]_0^oo + s int_0^oo f^((n-1)) e^(- s t) d t\
  &= - f^((n-1)) (0) + s cal(L) (f^((n-1))) (s)\
  &= s^n cal(L) (f)(s) - sum_(i =1)^n s^(i-1)  f^((n-i)) (0)
$
===
===
==
===
$
  f(t) = t^c
$

$
  cal(L)(t^c)(s) &= int_0^oo t^c e^(- s t) d t\
  &= int_0^oo s^(-(c+1)) tau^c e^(- tau) d tau       quadd tau = s t\
  &= s^(-(c+1)) Gamma(c +1)
$
===
$
  f(t) = e^(- c t)
$
$
  cal(L) (e^(- c t)) (s) &= int_0^oo e^(-t(c + s)) d t\
  &= [-1/(c + s) e^(-t(c + s))]_0^oo \
  & = 1/(c + s)
$
Since $Re(c+s)>=0$
===
$
  f(t) = cos(omega t), quadd omega in RR
$
$
  cal(L) (cos(omega t)) (s) &= int_0^oo cos(omega t) e^(- s t) d t\
  &=  1/2 int_0^oo e^(-t (s-i omega)) + e^(-t(s + i omega )) d t\
  &= 1/2 (1/(s - i omega) +  1/(s + i omega)) = (s)/(s^2 + omega ^2)
$