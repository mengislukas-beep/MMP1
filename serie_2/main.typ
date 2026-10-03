#import "../style.typ": *

#stdtitle(
  [MMP 1],
  [Serie 2],
  [Lukas Mengis],
)
#pagebreak()



#show: setup

= MC 
==
(B)
==

(C)

=
$
  lim_(R-> oo) int_0^R (sin(x))/x d x &= lim_(R-> oo) int_0^R int_0^oo e^(-t x) sin(x) d t d x\
  &= lim_(R-> oo) int_0^oo int_0^R e^(-t x) sin(x) d x d t\

$
$
  int e^(-x t) sin(x)d x &= -1/t e^(-x t) sin(x) - int -1/t e^(-x t) cos(x) d x\
  &=
  -1/t e^(-x t) sin(x) -1/t^2 e^(-x t) cos(x) - int 1/t^2 e^(-x t)  sin(x) d x 
$
$
  => int e^(-x t) sin(x) d x = (-1)/(1+ 1/t^2) [1/t e^(-x t) sin(x) + 1/t^2 e^(-x t) cos(x)] 
$

$
  =>  int_0^oo lim_(R-> oo) (-1)/(1+1/t^2) [1/t e^(-R t ) sin(R) + 1/t^2 e^(-R t) cos(R)- 1/t^2] d t &= int_0^oo 1/t^2/(1+ 1/t^2) d t\
  &= int_0^oo 1/(1+ t^2) d t \
  &= int_0^(pi/2) (1/cos^2(x)) /((cos^2(x) + sin^2(x))/(cos^2(x))) d x = int_0^(pi/2) d x = pi/2
$

= 
==
Split $E$ into pieces of max size length $1/n$ in one dimension.
$
  T_n ={c_i subset E: union.big_i c_i = E,c_i inter c_j = emptyset, j != i, abs(a-b) < 1/n fa a,b in c_i  }
$
Let 
$
  delta(x c) = cases(0 quad & x in.not c, 1 quad & x in c)
$
define $phi_n$

$
  phi_n (x) = sum_(sigma in T_n)delta_(x sigma) min{f(x): x in sigma} 
$<3.3>
==
since $E_j$ lebesque messbar
$
  mu(E_i) = mu(E_i inter E) + mu(E_i^c inter E)
$


$
  =>  lim_(n-> oo) int_(E_n) phi d x &= lim_(n-> oo) (int_(E_n inter E) phi d x + int_(E_n^c inter E)phi d x)\
  &= int_E phi d x + int_(emptyset) phi d x\
  &= int_E phi d x
$<3.5>
==
define $g(x)$ such that 
$
  lim_(n -> oo) phi_n >= g(x), quad fa x in E
$
$
  => lim_(n->oo) int_E phi_n d x >= int_E g d x
$
==
define $g(x)_j$
$
  g(x)_j = cases(phi (x)quad& x in E_j, 0 & x in.not E_j)
$


With @3.5 and @3.3 we get
$
  lim_(n->oo) int_E phi_n(x) d x <=int_E f(x) d x= int_E g d x <= lim_(n->oo) int_E phi_n d x
$
Sandwiche Lemma

$
  => int_E f(x) d x = lim_(n-> oo) int_E phi_n (x)d x  
$

=
==
Sei $f,g$ messbare funktionen auf E

$
  abs(abs(f g))_1 &= int_E f abs(g d) x\
  
  &<= int_E abs(f)^p/p + abs(g)^q/q d x, quadd fa q,p>1: 1/p + 1/q =1\
  &= 1/p (abs(abs(f))_p) ^p+ 1/q (abs(abs(g))_q)^q= 1 = abs(abs(f))_p  abs(abs(g))_q 
$
==
$f,g quad 0 <abs(abs(f))_p, abs(abs(g))_q < oo$
$
  abs(abs(f g))_1/(abs(abs(f))_p  abs(abs(g))_q) &= int_E abs(f)/abs(abs(f))_p abs(g)/abs(abs(g))_p d x\
  & <= int_E 1/p f^p/abs(abs(f))_p^p +1/q g^q/abs(abs(g))_q^q d x\
  &= 1/p + 1/q = 1
$
$
  => abs(abs(f g))_1 <= abs(abs(f))_p abs(abs(g))_q
$
==
$
  abs(abs(f g))_1/(abs(abs(f))_p  abs(abs(g))_q) &= int_E abs(f g)/abs(abs(f))_p 1/abs(abs(g))_p d x  \
  &<=int_E abs(f)/abs(abs(f))_p abs(g)/abs(abs(g))_p d x\
  & <= int_E 1/p f^p/abs(abs(f))_p^p +1/q g^q/abs(abs(g))_q^q d x\
  &= 1/p + 1/q = 1
$
$
  => abs(abs(f g))_1 <= abs(abs(f))_p abs(abs(g))_q
$
==
$
  abs(abs(f + g))_p &= (int_E abs(f + g)^p d x)^(1/p)\
  & <= (int_E abs(f) abs(f + g)^(p-1) d x+ int_E abs(g) abs(f + g)^(p-1)d x)^(1/p)\
  & <= (abs(abs(f))_p dot abs(abs(f+ g))_p^(p-1) + abs(abs(g))_p dot abs(abs(f+g))_p^(p-1))^(1/p)\
  &= abs(abs(f+g))_p^(-1) (abs(abs(f))_p + abs(abs(g))_p)^(1/p)
$
$
  => abs(abs(f+g))_p^p/abs(abs(f+g))_p^(p-1) = abs(abs(f+g))_p <= abs(abs(f))_p + abs(abs(g))_p 
$
=



Let $x,y in [0,1]$. Define:
$
  x tilde y iff x-y in QQ
$
The set $V$ is the set of the representative of $[0,1]slash tilde$
==
$abs(q)<=1 in Q, v in V subset [0,1]$
$
  q + v <= 1 + 1  = 2\
  q + v >= -1 + 0 = -1
$
$
  => union.big_(q in Q\ abs(q)<=1) (q + V) subset [-1,2]
$
$fa x in [0,1]$
$
  ex! v in V,quad v tilde x => x-v in QQ
$
Let $x-v = q in QQ$
$
  q + V => x -v +v = x
$
$
  => [0,1] subset union.big_(q in Q\ abs(q)<=1) (q + V)
$
==
$
  mu([0,1]) = 1 <= mu(union.big_(q in Q\ abs(q)<=1) (q + V)) <= mu([-1,2]) = 3
$

$q in QQ, v in QQ, quad fa v in V$
$
  => mu(V + q) = mu(V)
$
$
  => 1<= mu(V) <= 3.
$
==
In b) haben wir gesehen falls $V$ Lebesque messbar dann hat es eine gewisse grösse. Aber mann kann jede $x tilde y$ als eine $q in QQ$ darstellen was eine grösse 0 hat. Falls zwei Äquivalentrelation zur selben zahl in $QQ$ zugeordnet wird kann man das simpel mit einer Translation begründen. Somit hätte es die grösse 0 und 3 zur gelichen Zeit was nicht geht.

=
==
$
  f_j < f, quad fa j in NN
$
$
  => lim_(j -> oo) int_E f_j d x <= int_E f d x
$
==
Let $epsilon > 0$,
$a in (0,1) $ such that $1- a <= epsilon$\
Then $ex N in NN$
$
  abs(f - f_n) <= epsilon, quad fa n >=N
$
Since $0 <= f$
$
  => int_E a phi d x <= (1-epsilon) int_E f d x <= int_E f_n d x quad fa n >= N\
  => int_E a phi d x <= lim_(j ->oo) int_E f_j d x
$<6.4>
==
In @6.4 haben wir gesehen:
$
  fa a in (0,1), quad ex N in NN st a phi < f_n, quad fa n >= NN
$
Da a auf $(0,1)$ beliebig:
$
  f_1 <= f_2 <= dots <= f_n <= dots = f
$
$epsilon -> 0$
$
  lim_(n->oo) int_E f_n d x=  int_E lim_(n->oo) f_n d x= int_E f d x
$