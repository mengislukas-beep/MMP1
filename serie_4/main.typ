#import "../style.typ": *

#stdtitle(
  [MMP 1],
  [Serie 4],
  [Lukas Mengis],
)
#pagebreak()


#show: setup


= MC 
(A)/(B)

= 
==

$
  f(x) = e^(-abs(x))
$
$
  hat(f)(omega) &=  int_(-oo)^oo e^(- abs(x)) e^(-i omega x) d x\
  &=  [int_0^(oo) e^(-x ( i omega +1) ) d x + int_(-oo)^0 e^(-x ( i omega-1)) d x]\
  &= [(-1)/(i omega +1) e^(-x(i omega +1))]_0^oo+ [  (-1)/(i omega-1) e^(-x (i omega -1))]_(-oo)^0\
  &=  (1/(i omega+1) + (-1)/(i omega-1))\
  &= 2/ ( 1 +omega ^2)
$
==
$
  sum_(n in ZZ) f(n a ) = 1/a sum_(n in ZZ) hat(f) ( (2 pi n)/a)
$
$a = 2pi$
$
  sum_(n in ZZ) e^(- abs(n 2pi)) = 1/(2pi) sum_( n in ZZ) 2 1/(1 + n^2)
$
$
  =>2sum_(n=1)^oo 1/(1 + n^2) +1 &=  pi (2sum_(n=1)^oo e^(-n 2 pi) + 1)\
$
$
  => sum_(n=0)^oo 1/(1+n^2) &= pi/2 (2sum_(n=0)^oo e^(-n 2 pi) - 1) +1/2\
  &= pi sum_(n=0)^oo e^(-n 2pi) +(1-pi)/2\
  &= pi/(1-e^(-2pi)) + (1-pi)/2\
  &= -pi/2 (1 + 2/(e^(-2pi)-1)-1) + (1-pi)/2\
  &= pi/2 coth(pi) + 1/2
$
=
$
  f(x) = 1/2 -x, quad fa x in [0,1)
$
$
  f_n &= int_0^1 (1/2 -x) e^(-2 pi i n x) d x\
  &= [1/(-2 pi i n) e^(- 2 pi i n x) + x/(2 pi i n) e^(- 2 pi i n x) ]_0^1 - underbrace(int_0^1 dots, =0)\
  &= 1/(2 pi i n)
$
$n=0$
$
  f_0 &= int 1/2 -x d x\
  &=[1/2x - 1/2x^2]_0^1 =0
$
==
$
  s_N f(x) &= sum_(0<abs(n) <= N) 1/(2pi i n) e^(2 pi n i x)\
  &= sum_(n=1)^N 1/(pi n) sin(2 pi n x)
$
$
  d/(d x) (s_n f(x)- 1/2 + x) &= 1+ sum_(n=1)^N (2 pi n)/(pi n) cos(2 pi n x)\
  &=1 + 2 sum_(n=1)^N cos(2 pi n x)\
  &= sin((N + 1/2)2pi  x)/(sin((2pi)/2 x)) = 0\

$
$
  => 1 = (2N + 1)x <=> x = 1/(2N + 1)
$
==
$
  E'_N = (sin((2N + 1)pi x)/(sin((pi x))))
$
$
  => E_N ( x_("max")) &= E(0) + int_0^x_("max") sin((2N + 1)pi x)/(sin((pi x))) d x\
  &= -1/2 + int_0^(1/(2N +1)) sin((2N + 1)pi x)/(sin((pi x))) d x
$
==
$
  E_N ( x_("max")) &=-1/2 + int_0^(1/(2N +1)) sin((2N + 1)pi x)/(sin((pi x))) d x\
  & approx - 1/2  + int_0^(1/(2N +1)) sin((2N + 1)pi x)/(pi x + O(x^2)) d x\
  & approx -1/2 + 1/pi int_0^(pi)  sin(x)/x d x\
  & = -1/2 +1/pi sum_(n=0)^oo (-1)^n pi^(2n + 1)/((2n + 1)! (2n +1))\
  &= -1/2 + sum_(n=0)^oo (-1)^n  (pi^2)^n/((2n +1)! (2n+1)  )  approx 0.08949
$
Im integral gibt es kein N mehr somit ist der maximale Wert unabhängig von N.

= 

==
$
  hat((alpha f + beta g)) (omega)&=  intr (alpha f + beta g ) e^(-i omega t) d t\
  &= alpha intr f(t) e^(-i omega t) d t + beta intr g(t) e^( -i omega t) d t\
  &= alpha hat(f) + beta hat(g)
$

==
$
  hat(f(alpha dot)) (k) &= intr f(alpha x) e^(i k x) d x\
  &= intr  1/abs(alpha) f(x) e^(-i x k/alpha) d x\
  &= 1/abs(alpha) hat(f) (k slash alpha)
$
==
$
  hat(f)_y &=  intr f(x)_y e^(-i k x) d x\
  &=  intr f(z) e^(-i k (z + y)) d z\
  &= hat(f) e^(-i k y)
$
==
$
  int_(RR^n) hat(f)(x) g(x) d x &=  int_(RR^n) int_(RR^n) f(y) g(x) e^(-i x y) d y d x \
  &overbrace(=,"fubini")int_(RR^n) f(y) hat(g)(y) d y\
  &= int_(RR^n) f hat(g) d x
$
==
$
  overline(hat(f)(k)) &= overline( intr f(x) e^(-i k x) d x)\
  &=  intr overline(hat(f))(x) e^(- (-i k x)) d x\
  &= hat(overline(f)) (-k)
$

==
$
  hat(part_j f) (k) &=  intr part_j f(x) e^(-i k x) d x\
  &= underbrace([f(x) e^(-i k x)]_(RR^n),=0) - intr - i k_j f(x) e^(-i k x) d x\
  &= i k_j hat(f)(k)
$
Da die Funktion differenziebar mit kompakten Träger ist muss man die Integrationsgrenzen nur genug gross setzen und man erhält 0.
$
  part_j hat(f) (k) 
  &= 
  
  1/(part k_j) hat(f) (k) \

  &= intr 1/(part k_j) (f(x) e^(-i k x)) d x   \

  &= hat(-i x_j f) (k)
$

= 
==
$
  f(x) = chi_[-pi,pi] (x) sin(x)
$
$
  hat(f)(omega) &= intinf chi_[-pi,pi](x) sin(x) e^(-i omega x) d x\
  &= int_(-pi)^pi sin(x) e^(-i omega x) d x\
  &= - cos(x) e^(-i omega x) + int_(-pi)^pi - i omega cos(x) e^(- i omega x) d x\
  &= - cos(x) e^( -i omega x) - i omega sin(x) e^( -i omega x) + int_(-pi)^pi omega^2 sin(x) e^(-i omega x) d x\
  &= 1/(1- omega^2) [- cos(x)e^(-i omega x)- i omega sin(x)e^(-i omega x)]_(-pi)^pi\
  &= (2 i sin(pi omega ))/(omega^2-1) 
$
$abs(omega)=1$

$
  hat(f)(plus.minus 1) &= intpi sin(x) e^(minus.plus i  x) d x\
  &=  plus.minus 1/( 2i) intpi e^(i x - i x) - e^(-2 i x) d x\
  &=plus.minus 1/(2  i) [1 - 1/(2i) e^(-2 i x) ]_(-pi)^pi = minus.plus i pi + 1

$
==
$
  f(x) = e^(- abs(x)) cos(x)
$


$
  hat(f) (omega) &= intinf cos(x) e^(-(abs(x)+ i x  omega)) d x\
  &= int_0^oo cos(x) e^(-x(i omega- 1)) d x + int_0^oo
 cos(x) e^(-x(i omega +1))\
 &= sin(x) e^(-x (i omega -1)) - int_0^oo -(i omega-1) sin(x) e^(- x(i omega -1)) d x +  sin(x) e^(- (i omega +1)) - int_(0)^oo -(i omega+1) sin(x) e^(- x(i omega +1)) d x \
 &= sin(x) e^(-x(i omega -1)) - ( i omega -1) cos(x) e^(-x(i omega -1)) + int_0^oo (i omega-1)^2 cos(x) e^(-x(i omega -1)) d x \ & + sin(x) e^(-x(i omega +1)) - ( i omega +1) cos(x) e^(-x(i omega +1))+ int_(0)^oo (i omega+1)^2 cos(x) e^(-x(i omega +1)) d x\
 &=1/(1- (i omega -1)^2) [sin(x) e^(-x ( i omega -1))-(i omega -1) cos(x)e^(-x(i omega-1))]_0^oo + 1/(1- (i omega +1)^2) [sin(x) e^(-x ( i omega +1))-(i omega +1) cos(x)e^(-x(i omega+1))]_(0)^oo\
 &= (i omega -1)/(omega^2 + 2 i omega)  + (i omega + 1)/(omega ^2- 2 i omega)
$

irgendwo ist ein Fehler. wahrscheinlihc ganz am Anfang :(



==
$
  f(x,y) = e^(-x^2-y^2-x y)
$
$
  hat(f)(omega) &= int_(RR^2) e^(-x^2-y^2 - x y - i (omega_1 x+omega_2 y)) d x d y\
  &= int_(RR^2) e^(- (x^2 +x(y + i omega_1) ))e^(-y^2- i omega_2 y)  d x d y\
  &= int_(RR^2) e^(- (x+ (y + i omega_1)/2)^2 + (y + i omega_1)^2/4) e^(-y^2- i omega_2 y)  d x d y\
  &= intinf sqrt(pi) e^(-3/4y^2 - i y( omega_2 - 1/2  omega_1)  - omega_1^2/4  ) d y\
  &= sqrt(pi) e^(-omega_1^2/4) intinf e^(- a(y + (i b)/(2a))^2 - b^2/(4a) ) d y, quaddd a = 3/4, b = omega_2 - 1/2 omega_1\
  &= pi sqrt(4/3) e^(- (omega_1^2 -omega_1omega_2 + omega_2^2)/3) 

$
==
$
  f(x,y) = cases(1 quad & 0 <= x <= y <= 1, 0 & "sonst." )
$
$
  hat(f) (omega) &= int_0^1 int_x^1 e^(- i omega_1 x - i omega_2 y) d y d x\
  &= int_0^1 [1/(- i omega_2 ) e^(- i (omega_1x + omega_2 y)  )]_x^1 d x\
  &= i /omega_2 int_0^1 e^(-i (omega_1 x + omega_2)) -  e^(-i x (omega_1 +omega_2)) d x\
  &= i /omega_2 [(i e^(-i omega_2))/(omega_1) e^(-i omega_1 x) - (i)/(omega_1 + omega_2) e^(-i x (omega_1 + omega_2))]_0^1\
  &= e^(-i (omega_1+omega_2)) (1/((omega_1 + omega_2)omega_2)-1/(omega_1 omega_2)) + e^(-i omega_2)/(omega_1 omega_2) -1/((omega_1 + omega_2)omega_2)
$
$omega_1 =0, omega_2 !=0$
$
    hat(f) (omega) &= int_0^1 int_x^1 e^( - i omega_2 y) d y d x\
    &= int_0^1 [i/omega_2  e^(-i y omega_2 )]_x^1 d x\
    &= i/omega_2 int_0^1  e^(-i omega_2) - e^(-i omega_2 x) d x\
    &= i/omega_2 [x e^(-i omega_2) + 1/(i omega_2) e^(-i omega_2 x)]_0^1 = (i e^(-i omega_2))/(omega_2) + 1/omega_2^2 e^(-i omega_2) -1/omega_2^2
$
$omega_2 = 0 dots$

$omega = 0$
$
  hat(f) (0) &= int_0^1 int_x^1 d x d y \ 
  &= int_0^1( 1-x )d x  \
  &= 1- 1/2 = 1/2
$

=

==
$
  abs(abs( f star g))_1 &= intr abs(intr f(x-y)g(y) d y) d x\
  &<= intr abs(f(x-y)) d x intr abs(g(y)) d y\
  &= intr abs(f(x)) d x intr abs(g(y)) d y\
  &= abs(abs(f))_1 abs(abs(g))_1
$<hier>
==
man verwendet die ungelichheit von @hier damit ist es offensichtlihc da $f,g in L^1(X)$
==
$
  part((f star g)(x)) &= part (int_X f(x-y) g(y) d y)\
  &= int_X part(f(x-y)) g(y) d y + int_X f(x-y) underbrace(part(g(y)),=0) d y\
  &= ((part f) star g)(x)
$<dort>
== 
die Eigenschaft in @dort sowieso, da das $X$ nicht wichtig ist. Bei den anderen sit es auch klar ersichtlich da es periodisch wird. Wenn man die Substitution mache muss geht es immer noch da man über ganze Intervall integrieren muss.  