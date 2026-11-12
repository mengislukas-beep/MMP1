#import "../style.typ": *
#stdtitle(
  [MMP 1],
  [Serie 7],
  [Lukas Mengis],
)
#pagebreak()



#show: setup

= 

$
  f(x) = cosh(x) = (e^x +e^(-x))/2, quadd x in (-pi,pi],
$
$
  sinh(x) = (e^x-e^(-x))/2
$

==

$
  sinh(pi)/(pi) sum_(n in ZZ) (-1)^n /(1+n^2) e^(i n x)
$
$
  f_n &= 1/(2pi) int_(- pi)^pi  (e^x +e^(-x))/2 e^(-i n x) d x\
  &= 1/(4pi) int_(-pi)^pi e^(-x (i n -1)) + e^(-x(i n + 1))  d x\
  &= 1/(4pi) [- 1/(i n -1) e^(- x( i n -1)) -1/(i n + 1) e^(-x (i n + 1))]_(-pi)^pi\
  &= 1/(4pi) (-(-1)^n/(i n -1) e^(pi)-(-1)^n/(i n + 1) e^(-pi) + (-1)^n/(i n -1)e^(-pi) + (-1)^n/(i n + 1) e^(pi) )\
  &= (-1)^n (sinh(pi))/(2pi) (-1/(i n -1) + 1/(i n +1))\
  &= (-1)^n (sinh(pi))/(2pi) ((- i n -1 + i n -1)/(- n^2 -1))\
  &= (sinh(pi))/pi (-1)^n/(1+ n^2)
 $
 ==
skizze $dots$
==
$
  cosh(x) = (sinh(pi))/pi sum_(n in ZZ) (-1)^n/(1+n^2) e^(i n x) = (sinh(pi))/pi (1+ 2 sum_(n=1)^oo (-1)^n/(1+n^2)) e^(i n x)
$
$
  sum_(n=1)^oo (-1)^n/(1+n^2) = pi/(2sinh(pi)) -1/2 = pi/(e^pi- e^(-pi)) -1/2
$
==
$
  1/(2pi)int_(-pi)^pi abs(f(x))^2 d x = sum abs(f_n)^2
$
$
  =>sum_(n in ZZ) 1/(1+n^2)^2 &= 1/(2pi) pi^2/(sinh(pi)^2) int_(-pi)^pi abs(cosh(x))^2 d x\
  &=pi/(8 sinh^2(pi) ) [1/2 e^(2 x) -1/2 e^(-2x) +2x]_(-pi)^pi\
  &= pi/(8 sinh^2(pi)) (4 pi +  e^(2pi) - e^(-2 pi)) \
  &= (pi (2 sinh(2 pi)+ 4pi))/(8 sinh^2(pi))
$

=
==
$
  f(x) = sin(x) e^(- x^2/2)
$

$
  tilde(f)(k) &= int_RR sin(x) e^(-x^2/2) e^(- i k x) d x\
  &= int_RR 1/(2i) (e^(-i x(k -1 ) -x^2/2)- e^(-i x(k +1) -x^2/2)) d x\
  &= sqrt(2pi)/(2i) (e^(- (k-1)^2/2) + e^(- (k+1)^2/2)) = 
$
==
$
  f(x) = cases(e^(-2) quadd & x>=0, 0 & x<0)
$

$
  tilde(f) (k) &= int_0^oo e^(-x) e^(-i k x) d x\
  &= int_0^oo e^(-x ( i k+1)) d x\
  &= -1/(i k + 1) [e^(- x (i k + 1))]_0^oo = 1/(i k +1)
$
= 
== <das>
$
  f(x) = sum_(n in ZZ) f_n e^(i n x) 
$
$
  f(-x) + f(x) & = sum_(n in ZZ) f_n e^(-i n x) + sum_(n in ZZ) f_n e^(i n x)\
  &= sum_(n in ZZ) e^(- i n x) (f_n + f_(-n)) =0
$<3.2>
Since it has to be true $fa x$ and the function $e^(-i n x)$ are linear independent it follows that
$
  f_n = - f_(n-1)
$
we also have
$
  f_(n + 2) =  - f_(-n), quadd n/2 in ZZ 
$<3.4>
Since $f(x+pi) = - f(x)$. Togehther with @3.2 we get @3.4. n even $=> e^(-i n (x+pi)) = e^(-i n x)$.\
n=0
$
  f_(0) + f_(-0) =0 => f_0=0
$
This with @3.4 
$
  => f_k =0, quadd n/2 in ZZ
$
== <3.b>
If we have a $pi/2$ periodic function we get the approximation
$
  f(x) = sum_(n in ZZ) f_n e^(4 i n x) = f_0 + sum_(n in NN) a_n sin(4 n x) + b_n cos(4 n x)\

$ 
Using some trigoneotric function a phase difference can be calculatet and the wei have a new form
$
  f(x) = sum_(k=0)^oo a_n sin((2n +  phi_n)x)
$ 
We can chosse $a_n$ such that $phi_n = 1 quad fa n$.
$
  => f(x) = sum_(n=0)^oo a_n sin((2n +1)x)
$
==
From @3.b it follows that the function can approximatet by:
$
  u(x,t) = sum_(n=0)^oo a_n (t) sin((2 n + 1)x)
$
The conditions yield
$
  part/(part t) a_n (t) sin((2n + 1)x)  = -   a_n (t)(2n +1)^2 sin((2n+1)x) \
  => part/(part t) a_n (t) = - a_n (t) (2 n + 1) ^2\
  => a_n (t) = c_n e^(- t(2n + 1)^2)
$
$
  => u (x,t) = sum_(n=0)^oo c_n e^(- t(2n + 1)^2) sin((2n +1)x)
$
$
  (part u)/(part x) (pi/2,t) = sum_(n=0)^oo c_n (2 n +1) e^(- t( 2n + 1)^2) sin((2n+1)x)=0
$
$
  u(x,0) = sum_(n=0)^oo c_n e^(-t (2n +1)^2) cos((2n+1)x) = sum_(n=0)^oo c_n  sin((2n+1)x)=f(x)
$
$
  =>c_n (t) = e^(- t (2n + 1)^2)
$
= 
$
  E (arrow(x),t) = arrow(E)_0 cos(arrow(k) dot arrow(x) - omega t + phi_E)\
  B ( arrow(x),t) = arrow(B)_0 cos(arrow(k) dot arrow(x) - omega t+ phi_B)
$
with $phi_B = phi_E$

$
rot E + 1/c (part B)/(part t) &= (vec((-E_3 k_2+ E_2 k_3) , (-E_1 k_3 + E_3 k_1), (-E_2 k_1 + E_1 k_2))  + omega/c arrow(B) )     sin(arrow(k) dot arrow(x) - omega t + phi) \
&=  (vec((-E_3 k_2+ E_2 k_3) , (-E_1 k_3 + E_3 k_1), (-E_2 k_1 + E_1 k_2))  + k arrow(B) )     sin(arrow(k) dot arrow(x) - omega t + phi)
$
$
  => arrow(E) times arrow(k) = -omega arrow(B)
$
$dots$ keine Zeit mehr