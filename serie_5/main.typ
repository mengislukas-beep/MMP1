
#import "../style.typ": *








#stdtitle(
  [MMP 1],
  [Serie 5],
  [Lukas Mengis],
)
#pagebreak()


#show: setup

= MC
==
(C)

= 
==
Since $f,g in L^1 (RR slash ZZ)$ $f(x) = f^and^or$
$
  (f star g)(x) &= int_RR f(y) g(x-y) d y\
  &= int_RR f^and^or (y) g(x-y) d y\
  &= int_RR hat(f)(y) hat(g) (x -y) d y\
  &= (hat(f) star hat(g)) (x)
$
==
$
  (hat(f star g)) (k) &= int_(RR^n) e^(-i k x) int_(RR^n) g(y) f(x -y  )    d y d x\
  &underbrace(=,"fubini")  intr g(y) intr f(x-y)   e^(- i k x) d x d y\
  &= intr g(y) intr f(z) e^(- i k z) e^(-i k y) d z d y\
  &= hat(f) (k) intr g(y) e^(-i k y) d y = hat(f)(k) hat(g)(k)
$
==

$
  f = cases(0 quad &abs(x) >= 1, 1- abs(x) quad& "else")
$
$
  hat(f)(k) &= int_(-1)^(0) (1 + x) e^(-i k x) d x + int_0^1 (1-x) e^(-i k x) d x\
  &= [(1+x)/(-i k) e^(-i k x) ]_(-1)^(0) + [(1-x)/(-i k) e^(-i k x)]_0^1 + int_(-1)^0 1/(i k) e^(-i k x) d x - int_0^1 1/(i k) e^(-i k x) d x\
  &= i/k   - i/k  + [1/k^2 e^(-i k x)]_(-1)^0 + [- 1/k^2 e^(- i k x)]_0^1 \
  &= 1/k^2 - e^(i k)/k^2 - e^(-i k)/k^2 +1/k^2 = 2/(k^2) (1-cos(k))
$
$k=0$
$
  hat(f)(0) &= int_(-1)^0 1 + x d x + int_0^1 1- x d x\
  &= 1/2 + 1/2 = 1
$
=
==
$tau = 2 pi i$
$
  f(x) = min{x, 1-x}, quadd x in [0,1)
$
$
  f_n &= int_0^1 f(x) e^(- tau n x) d x\
  &= int_0^(1/2) (1-x) e^(- tau n x) d x + int_(1/2)^1 x e^(- tau n x) d x\
  &= [e^(-t n x )/(- tau n) (1 -x)]_0^(1/2) - int_0^(1/2) -1/(- tau n) e^(- tau n x) d x + [x/(- tau n ) e^(- tau n x)]_(1/2)^1 - int_(1/2)^1 1/(-tau n) e^(- tau n x) d x \
  &= (1 + overbrace(e^(2 pi i n slash 2) - e^(- 2 pi i n slash 2),=0))/(4 pi i n) - e^(-tau n)/(tau n) +[1/(tau^2n^2) e^(- tau n x)]_0^(1/2) -[1/(tau^2 n^2) e^(- tau n x)]_(1/2)^1\
  &=(2e^(- tau n slash 2)  -1 - e^(- tau n)) /(tau^2 n^2) = (2((-1)^n -1))/(tau^2 n^2)
$ 
$n=0$
$
  f_0 =1/4
$
habe es für max gemacht :(\
KI $=>$
$
  => f_n = ((-1)^2 -1)/(2 pi^2 n^2)
$
==
$
  (u_x)_(n,m)& = int_([0,1]times[0,1]) u_x (x,t) e^(- 2 pi i (n x + m y)) d x d x\
  &=underbrace([u(x,t)/(- 2 pi i n) e^(- 2 pi i (n x +m y))]_([0,1]times[0,1])) - int_([0,1]times[0,1]) (- 2 pi i n) u(x,t) e^(- 2 pi i ( n x + m y)) d x d y\
  &= 2 pi i n u_(n ,m)
$

$
  => sum_(k in ZZ \ l in ZZ) 2 pi i l (u_(k,l)) = sum_(k in ZZ \ l in ZZ) - 4 pi^2 k^2 (u_(k,l)) - sum_(k in ZZ \ l in ZZ) u_(k,l)\
$
$
  => u_t (x,t)_k + (4 pi^2 k^2 + 1)  u(x,t)_k = 0
$
$
  u(x,t)_k = C(x) e^(-t(4 pi^2 k^2 +1)) = f(x) e^(-t(4 pi^2 k^2 + 1))
$
$
  => u(x,1)_k = f(x) e^(-(4 pi^2 k^2 + 1))
$
$
  => u(x,1)_n &= f_n e^(-(4pi^2 n^2 +1))
$
=




==
===

$
  intinf 1/(m^2 + x^2) d x &= int_(-pi/2)^(pi/2) m/(cos^2(x)) 1/m^4 1/((cos^2(x)+sin^2(x))/(cos^2(x)))^2 d x\
  & =  int_(-pi/2)^(pi/2) (cos^2(x))/m^4 d x\
  &= 1/m^3[1/2 x + sin(2 x)]_(- pi/2)^(pi/2) = pi/(2 m^3)
$
===
$
  intinf 1/(m^2 + x^2)  d x &=  (2pi)/(4m^2) intinf e^(- 2m abs(x)) d x\
  &= pi /(2m^2) ([e^(2m x)/(2m)]_(-oo)^0 + [e^(- 2m x)/(-2m)]_0^oo)\
  &=pi /(2m^2) (1/(2m) + 1/(2m)) = pi/(2 m^3)
$
==
$
  (a - abs(x))_+quad   =>quad (2(1- cos(a k)))/(k^2)
$
$a=2$
$
  (2- abs(x))_+ quad => 2(1- cos(2k))/k^2 = (4 sin^2(k))/(k^2)
$
$
  e^(- abs(x)) quad => 2/(1 + k^2)
$
$
  intinf (sin^2(x))/(x^2 (1 + x^2)) &= 1/8 intinf  (4 sin^2(x))/(x^2) 2/(1 + x^2) d x\
  &= 2pi 1/8 intinf e^(- abs(x)) (2- abs(x))_+ d x\
  &= pi/(2) int_0^2 e^(-x) (2 -x) d x\
  &= pi/2 [(x-2)e^(-x)]_0^2 - int_0^2 e^(-x) d x\
  &= pi/2 ( 2 + e^(-2)-1) = (pi(1 + e^(-2)))/2  
  
$
=
==
Ich sehe nicht wirklich wie das mit MMP zu tun hat?\ 

Let $u(r, theta, phi) = f compose K$
$
  nabla u = v_r/(abs(abs(v_r))^2)part_r u + v_theta/(abs(abs(v_theta))^2) part_theta u + v_phi/(abs(abs(v_phi))^2) part_phi u\
$
$
  v_r = vec(sin(theta)cos(phi),sin(theta)sin(phi),cos(theta)), quadd abs(abs(v_r))^2 = 1
$
$
  => v_r/(abs(abs(v_r))^2) = e_r
$
$
  v_theta = r vec(cos(theta)cos(phi),cos(theta)sin(phi),-sin(theta)), quadd abs(abs(v_theta))^2 = r^2

$
$
  => v_theta/(abs(abs(v_theta))^2) =e_theta/r
$
$
  v_phi = r vec(-sin(theta)sin(phi),sin(theta)cos(phi),0), quadd abs(abs(v_phi))^2=r^2 sin^2(theta)
$
$
  v_phi/(abs(abs(v_phi))^2) = e_phi/(r sin(theta))   
$
$
  => nabla u = part_r u + 1/r part_theta u + 1/(r sin(theta)) part_phi u
$

Irgendeine Formel aus dem Internet
$
  (div(A)) compose K = 1/abs(det(J)) = div(abs(det(J)) G^(-1) (A compose K))
$
$
  (J J^(-1)) )^(-1) =G^(-1) = mat(1,0,0;0,1/r,0;0,0,1/(r sin(theta)))
$
$
  Delta A = div(nabla A)
$
$
  abs(det (J)) = r^2 sin(theta)
$
$
  div(nabla u ) &= 1/r^2 sin(theta)/(sin(theta)) part_r (r^2 part_r u) + 1/(sin(theta)) part_theta (1/r 1/r sin(theta) part_theta  u) +part_phi ( 1/(r^2 sin^2(theta))part_phi  u)\
  &= part_r^2 u + 2/r part_r + 1/r^2 1/sin(theta) part_theta (sin(theta) part_theta) + 1/(r^2 sin^2(theta )) part_phi^2\
  &= (part_r^2 + 2/r part_r + 1/r^2 Delta_(S^2)) (f compose K)
$
$
  Delta_(S^2) = 1/(sin(theta) part_theta) (sin(theta)part_theta) + 1/(sin^2(theta)) part_phi^2
$
==
Rotationsinvariant

$
  => Delta_(S^2) =0
$
$
  => (Delta f) compose K = (part_r^2 + 2/r part_r) (f compose K)
$
=

==
$
  hat(u) (x,k) = int_RR u(x,y) e^(-i k y) d x
$
$
  hat(part_y^2 u) (x,k) = i^2 k^2 hat(u)(x,k)
$
$
  Delta u(x,y) = 0 =>Delta hat(u) = 0
$
$
  hat(part_x^2 u)(x,k) + hat(part_y^2u) (x,k)=0 \
  <=> part_x^2 hat(u) (x,k) - k^2 hat(u) (x,k) =0
$
$
  lambda_(1,2) = plus.minus k
$
$
  hat(u) (x,k) = A(k) e^(k x) + B(k) e^(-k x)
$
==
$
  u(0,y) = f_0(y) => hat(u)(0,k) = hat(f_0)(k) \
  u(1,y) = f_1(y) => hat(u)(1,k) = hat(f_1)(k) 
$
$
  hat(u)(0,k) = A(k) + B(k) = hat(f_0)(k)\
  hat(u)(1,k) = A(k) e^(k) + B(k) e^(-k) = hat(f_1) (k)
$
$
  A = hat(f_0)-B\
  <=> (hat(f_0)-B) e^k + B e^(-k) = hat(f_1)\
  <=> (hat(f_1)-hat(f_0)e^k) = B (e^(-k)-e^k)\
  =>B(k) = (hat(f_1)(k)- hat(f_0)(k)e^(k))/(e^(-k) -e^k)
$
$
  A(k) &= hat(f_0) - (hat(f_1)(k)- hat(f_0)(k)e^(k))/(e^(-k) -e^k)\
  &= (hat(f_1)(k)- hat(f_0)(k)e^(-k))/(e^k- e^(-k))
$

==
$
  lim_(x-> 0) baar(u(x,y)^2- f_0(y))_2 &=lim_(x->0) intinf abs(u(x,y)-f_0(y))^2 d y \
  &=lim_(x->0) 1/(2pi)intinf abs(hat(u)(x,k)- (hat(f_0)(k)e^(k)-hat(f_1)(k) +hat(f_1)(k)- hat(f_0)(k)e^(-k))/(e^k - e^(-k))  )^2 d k\
  &=  1/(2pi) intinf lim_(x->0) abs((hat(f_1) - hat(f_0) e^(-k)) e^(k x) +( hat(f_0) e^k -hat(f_1))e^(-k x) - hat(f_0)e^k +hat(f_0) e^(-k))^2/(abs(e^(k )-e^(-k))^2) d y\
  &= 1/(2pi) intinf 1/abs(e^k-e^(-k))^2 abs(hat(f_1)- hat(f_1) + (-hat(f_0) + hat(f_0))e^(-k) +  (hat(f_0)-hat(f_0))e^(-k))^2 d k = 0
$
