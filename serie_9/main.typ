#import "../style.typ": *

#stdtitle(
  [MMP 1],
  [Serie 9],
  [Lukas Mengis],
)
#pagebreak()

 

#show: setup

== MC 

(D)

= 
$
  a > 0 quadd u in C^oo ( RR^(3+1))
$
$
  (part^2_t - Delta) u &=0, quadd & fa (x,t) in RR^(3+1)\
  u (x,0)&=0, quadd & fa x in RR^3\
  part_t u (x,0)& = e^(- a abs(x)^2), quadd & fa x in RR^3
$
We can use the fourier trajsform and can write:
$
  part^2_t hat(u)(k,t) & = int3 Delta u e^( -i k x) d x \
  &= int3 u Delta e^(-i k x) d x\
  &= - abs(k)^2 hat(u)(k,t)
$
$
  hat(u) (k,t) = A sin(abs(k) t) + B cos(abs(k) t )
$
with
$
  hat(u) (k,0) = 0 quadd "and" quadd part_t hat(u) (k,0) = hat(e^(-a abs(x)^2)) = (pi/a)^(3/2) e^(-abs(k)^2/(4 a))
$
$
  => hat(u) (k,t) = 1/abs(k) (pi/a)^(3/2) e^(- abs(k)^2 slash 4 a) sin(abs(k) t)
$
$
  u(x,t) = 1/(2pi)^3 (pi/a)^(3/2) int3 sin(abs(k)t)/abs(k) e^(- abs(k)^2 slash 4 a) e^( i x k) d k 
$<hier>
use 
$
  sin(abs(k)t)/(abs(k)) = 1/(4 pi t) int_(abs(x)= t) e^(i k x) d Omega(x)
$

$
  => 1/(2 pi)^3 1/( 4 pi t) (pi/a)^(3/2) int3 int_(abs(y)= t)   e^(- abs(k)^2slash 4 a) e^( i k (x + y)) d Omega(y) d k&= 1/(4 pi t) int_(abs(y)=t) e^(- a abs(x+ y)^2)  d Omega(y)\
  &= 1/(4 pi t) int_0^(2pi) int_0^pi t^2 sin(theta) e^( - a (abs(x)^2 + 2 cos(theta) abs(x) t + t^2))  d theta d phi\
  &= t/(2)  (- 1/(2 abs(x) t) ) e^(- a ( abs(x)^2 + t^2)) [e^(- a u)]_(2 abs(x) t)^(-2 abs(x) t) \
  &= 1/( 4 a abs(x)) e^(- a (abs(x)^2 +t^2)) (e^(a 2  abs(x) t) -e^(-a 2  abs(x) t))\
  &= 1/(4 a abs(x)) (e^(- a(abs(x) -t)^2) - e^(-a(abs(x) + t)^2))
$

$
  lim_(a->0) e^(- a abs(x)^2) = 1
$
$
  => u(x,t) &= 1/(4 pi t) int_(abs(y)=t) 1 d Omega(y)
  &= 1/( 4 pi t) 4 pi t^2 = t
$
= 
$
  part_t^2 u (t,x)  &= part_x^2 u (t,x) quadd & fa x in RR, t> 0\
  u (0,x) & f(x) & fa x in RR\
   part_t u (0,x) &= g(x) & fa x in RR
$
==

$
  u(x,t)  = 1/2(f(x + t) + f(x-t)) + 1/2 int_(x-t)^(x+t) g(y)  d y
$
$t=0$
$
  => u(x,0) = 1/2 ( f(x) + f(x)) + 0 = f(x) quadd checkmark
$
$ part_t u (0,x) &= g(x)$
$
  => lim_(t->0)part_t u (0,x) = 0 + 1/2 part_t int_(x-t)^(x+t) g(y) d y = g(x)
$
$part_t^2 u (t,x)  &= part_x^2 u (t,x)$\
$u = y + x$
$
  part_t^2 u(x,t) = 1/2  ( f''(x+t) +f''(x-t)) + 1/2 (g'(x+t) - g'(x-t))\
  part_x^2 u(x,t) = 1/2 ( f''(x+t) +f''(x-t)) + 1/2 (g'(x+t) - g'(x-t))  
$ 
$checkmark$
==
$
  f(x) = e^(- x^2 slash 2) quadd g(x) = x e^( - x^2slash 2)
$
$
  u(x,t) &= 1/2 (e^(- 1/2 (x + t)^2) + e^(-1/2 (x-t)^2)) + 1/2 int_((x-t)^2/2)^((x+t)^2/2) e^(-u) d u\
  &= e^(-1/2 (x-t)^2)
$
= 
==
$
  Phi_A (x) = (e^(-1/2 x^T A^(-1)x))/sqrt((2pi)^n det(A))
$
Sicne $A$ is positive definite we can write
$
  x^T A^(-1) x = sum_(i=1)^n x_i^2 lambda_i
$
where $lambda_i >=0quad fa i$ and since $x_i^2 >=0 $. Same structure as $e^(- 1/2 x^2) in RR$. therefore
$
  => Phi_A in cal(L)(RR^n)
$ 
$
  hat(Phi_A) (k) = (2pi)^(n/2) 1/ sqrt(det(A^(-1))) e^(- 1/2 k^T A k) 1/(sqrt((2pi)^2 det(A)))
$
$
  det(A) = 1/det(A^(-1))
$
$
  => hat(Phi_A) (k) = e^( -1/2 k^T A k)
$
$
  hat(Phi_A) hat(Phi_B) &= e^(-1/2 k^T ( A + B) k) = hat( Phi_A star Phi_B) (k)
$
$
  Phi_A star Phi_B &= e^(- 1/2 x^T(A + B)^(-1) x)/sqrt( (2pi)^n det(A +B)) = Phi_(A + B)
$
==
$
  part_t u - Delta u & =0 quadd & (x,t) in RR^3 times RR_(>0)\
  u(x,0) &  = x_1 e^(-1/2 (x_1^2 + x_2^2) -1/4 x_3^2) = x_1 e^( -1/2x^T A x)  & x in RR^3\
  A &=  diagonal(1,1,1/2) quadd A^(-1) = diagonal(1,1,2)
$
$
  part_t hat(u) &= intr Delta u e^( -i k x) d x\= - abs(k)^2 hat(u)
$
$
  => hat(u) (k,t) = hat(g)(k) e^(- t abs(k)^2)
$

$
  g(arrow(x)) = x_1 e^(-1/2 x_1^2) e^(-1/2(x_2,x_3) B vec(x_2,x_3)) 
$
$
  B = mat(1,0;0,1/2)  quadd B^(-1) = mat(1,0;0,2)
$
$
  hat(g)(k) &=- i k_1 sqrt(2 pi) e^(-1/2 k_1^2) (2pi)/sqrt(1/2) e^(-1/2 ( k_2^2 + 2 k_3^2))\
  &= -i k_1 (2pi)^(3/2) sqrt(2) e^(-1/2 (k_1^2 + k_2^2 + 2 k_3^2))
$
$
  => hat(u) (k,t) = -i k_1 (2pi)^(3/2) sqrt(2) e^(-1/2 (k_1^2 + k_2^2 + 2 k_3^2)) e^(- t abs(k)^2) = - i k_1 (2pi)^(3/2) sqrt(2)  e^(-1/2 (k_1^2(1+2t) + k_2^2(1+2t) + 2 k_3^2(1+t)))
$
$
  hat(p)(x)= i x e^(-1/2 x^2 (1 + 2t)))  
$
$
  p(x) &=  - x/( (1 + 2t) sqrt(2 pi (1 +2t))) e^(- x^2/(2+ 4t))
$
$
  hat(q)(arrow(k)) = e^(-1/2 k^T B^(-1)k)
$
$
  => q(x) = e^(-1/2 (x_2^2/(1+2t) +  x_3^2/(2 + 2t)))/sqrt((2pi)^2 (1+2t)(2+2t))
$
$
  => u(x,t) &= (2pi)^(3/2) sqrt(2)  x_1/( (1 + 2t) sqrt(2 pi (1 +2t))) sqrt((2pi)^2 (1+2t)(2+2t)) e^(- 1/2( x_1^2/(1+ 2t) + x_2^2/(1+ 2t) +x_3^2/(2 + 2t)))\
  &= x_1/sqrt((1+2t)^4(1+t)) e^(-1/2 ((x_1^2+x_2^2) slash (1+2t) + x_3^2 slash (2 + 2t))
$


= 
$
  cal(l)^2 := {a : NN -> CC bar sum_(n in N) abs(a (n))^2 <oo}
$
== <thissection>
$
  0 =^! ip(x,x) = sum_(n in NN) overline(x(n)) x(n)
$
$
  overline(x) x >=0 quadd fa x in CC
$
$
  overline(x(n)) x(n) >=0 quadd fa n in NN
$
Therefore in order to be zero every term has to be zero this means $x=0$. $checkmark$

$
  ip(a,b) &= sum_(n in NN) overline(a(n)) b(n)\
  &= sum_(n in NN) overline(overline(b(n)) a(n)) \
  &= overline(ip(b,a))
$
linearity
$
  ip(phi a + lambda b, c) &= sum_(n in NN) overline(phi a(n) + lambda b(n)) c(n) quadd phi, lambda in CC\
  &= overline(phi) ip(a,c) + overline(lambda) ip(b,c)
$
Different from the ip we have seen so far, the complex conjugate appears in the first argument.

==
positive definit same as in @thissection.

$
  baar(lambda x) &= sqrt(ip(lambda x , lambda x)) quadd fa lambda in CC quad\
  &= sqrt(overline(lambda)lambda) sqrt(ip(x,x))\
  &= abs(lambda) ip(x,x)
$
Dreiecksgleichung

$
  baar(x + y)^2  &= sum_(n in NN)  abs(x)^2 + abs(y)^2 + 2 Re(x y)
$
$
  => baar(x + y) <= baar(x) + baar(y)
$
==
assume $a_n$ a Cauchy series, with
$
  lim_(n -> oo) = a
$
in other words\
$epsilon >0$
$
  ex N in NN st  abs(a - a_n) < epsilon quadd fa n >=N
$
Also $ex N in NN $
$
  abs(a(m) - a_n (m)) <  epsilon 2^(-m)  quadd fa n >= N
$
$
  baar(a - a_n) < epsilon sum_(m in NN)  2^(-m)  = epsilon quadd fa n >= N
$
=

has this something to do with exercise 2.b from the previous sheet (8)?
==

from @hier

$ 
  u(x,t) &= frac(1, (2 pi)^n) integral_(RR^n) e^(i k dot x) (cos(|k|t) hat(f)(k) + frac(sin(|k|t), |k|) hat(g)(k)) dif k \
  &= 1/(2pi)^n [intr e^(i k x)( frac(sin(|k|t), |k|)  hat(g)(k)  + part_t hat(f) (k) sin(abs(k) t)/abs(k))  d k]
$
using result from precious sheet
$
  =>1/(2 pi)^n [part_t (1/t part_t)^((n-3)/2) ( t^(n-2)/(abs(part B_t (x))) int_(part B_t (x)) f(y) d Omega(y))\ + (1/t part_t)^((n-3)/2) ( t^(n-2)/(abs(part B_t (x))) int_(part B_t (x)) g(y) d Omega(y))]
$
