#import "../style.typ": *

#stdtitle(
  [MMP 1],
  [Serie 1],
  [Lukas Mengis],
)
#pagebreak()



#show: setup

= Aufgabe 1
==
$
  (hat(T f))_k &= 1/sqrt(N) sum^(N-1)_(j=0)  T (e^(-(2 pi i)/N j k) f_j)\
  &= 1/sqrt(N) sum^(N-1)_(j=0) e^((2 pi i)/N j k) f_(-j)\
  &= 1/sqrt(N)  sum^(N-1)_(j=0) e^(-(2 pi i)/N (-j) k) f_(-j) \
  &= hat(f)_(-k) = (T hat(f))_k
$<1.1>


==

$
  overline(hat(f))_k &= 1/sqrt(N) sum_(j = 0)^(N-1) overline(e^(-(2 pi i)/N j k)) overline(f_j)\
  &= 1/sqrt(N) sum_(j = 0)^(N-1) e^((2 pi i)/N j k) overline(f_j)\
  &= 1/sqrt(N) sum_(j = 0)^(N-1) e^(-(2 pi i)/N (-j) k) overline(f_(j)) \
  &= 1/sqrt(N) sum_(j = 0)^(N-1) e^(-(2 pi i)/N j (-k)) overline(f_(j)) \
  &= hat(overline(f))_(-k) = T hat(overline(f))\
  & underbrace(=, #text[@1.1]) hat(T overline(f))

$
==
$
  hat((S f))_k  &= 1/sqrt(N) sum^(N-1)_(j=0) S(e^(-(2 pi i)/N j k) f_j)\
  &= 1/sqrt(N) sum^(N-1)_(j=0) e^(-(2 pi i)/N (j+1) k) f_(j+1)\
  &= e^((2pi i) /N k) 1/sqrt(N) sum^(N-1)_(l=0) e^(-(2 pi i)/N l k) f_(l)\
  &= e^((2pi i) /N k)  hat(f)_k
$
= Aufagbe 2

== 
$S in M_(n times n) (CC)$ hat die Form:
$
  (S)_(i j) = (S)_(i+1, j+1) quad  "mit" quad (S)_(1,j) = delta(1,j)
$
dabei wird mit $mod_n$ gerechnet.
$
  (A S)_(i,j) & = sum^(n-1)_(k=0)a_(i k) s_(k j)\
  &= sum^(n-1)_(k = 0) a_(i k)delta(j + 1,k)\
  &= (A)_(i, j + 1)\
$
$ 
 (S A)_(i j) &= sum^(n-1)_(k=0)s_(i k) a_(k j)\
 &= sum^(n-1)_(k = 0) delta(i, k - 1) a_(k j)\
 &= (A)_(i-1, j)
 
$
$
  =>(A)_(i-1,j) = (A)_(i, j+ 1) <=> (A)_(i j) = (A)_(i + 1, j+ 1)
$
==
Let $a in CC^n$ be the first row of $A$.
$
  (A f)_k & = sum_(j = 0)^(n-1) a'_(k j) f_(j)\
  &= sum_(j = 0)^(n-1) a'_(k-1, j-1) f_(j)\
  &= sum_(j = 0)^(n-1) a'_(k-k, j-k) f_(j)\
  &= sum_(j = 0)^(n-1) a_(j-k) f_(j)

$
Define $b in CC^n$ such that $a_(j-k) = b_(k-j)$ 
$
  => (A f)_k & = sum_(j = 0)^(n-1) b_(k-j) f_(j) = (b star f)_k
$
=
== 

$
  lim_(n -> oo) f^1_n(x) = 0\
  lim_(n-> oo) intinf f^1_n (x) d x = lim_(n -> oo) int_n^(n+ 1) d x = 1 
$

$
  lim_(n -> oo) f^2_n(x) = lim_(n-> oo)cases(1/n quad & x in [0,n], 0 quad &x  in.not [0,n] ) = 0\
  lim_(n->oo)  intinf f^2_n d x = lim_(n ->oo )1/n int_0^n d x= lim_(n-> oo) n/n =1
$
$
  lim_(n -> oo) f^3_n(x) = lim_(n-> oo) cases(n quad & x in [1/n, 2/n], 0 quad & x in.not [1/n, 2/n] ) = 0\
  lim_(n -> oo) intinf f^3_n d x = lim_(n->oo) n int_(1/n)^(2/n) d x = lim_(n -> oo) n (2-1)/n  =1
$
$
  lim_(n -> oo) f^4_n(x) =  lim_(n -> oo) cases(n quad & x in [0,1/n], 0 quad & x in.not[0,1/n]) = cases(oo quad &x = 0, 0 quad & x != 0)\
  lim_(n->oo) intinf f^2_n d x = lim_(n->oo) n int_0^(1/n) d x =n/n=1
$
==
$
  f(x)_n = cases(n e^(-(n(1 + x))/x)quad &x!= 0, 0 & x=0)\
  int_0^1 f_n (x) d x = [n/n x^2 e^(-n/x +n)]_0^1 = 1, quad fa n in NN\

$
= 
==
$
  lim_(n->oo) int_0^pi (1-sin(x))^n d x &= int_0^pi lim_(n->oo) (1-sin(x))^n d x\
  &= int_0^pi chi_{0,pi} (x) d x = 0
$
==
$
  lim_(n -> oo) intinf (n sin(x/n))/(x^3 + x) d x\ &= intinf lim_(n-> oo) (n (x/n - x^3/(6 n^3) + O((x/n)^5)))/(x^2 + x) d x\
  &= intinf 1/(x^2 + 1) d x = [tan^(-1) (x)]_(-oo)^oo = pi/2 +pi/2 = pi
$
==
$
  lim_(n->oo) intinf n log(1 + (f(x))/n) &=intinf lim_(n ->oo) n (f(x)/n + O((f(x)/n)^2)) d x = intinf f(x) d x
$
= 
==
$
  lim_(n -> oo) int_1^2 n/(1 + n x^2)  d x &= int_1^2 lim_(n -> oo)1/(1/n + x^2) d x \
  &= [- 1/x]_1^2 = 1/2
$
==
$
  lim_(x-> 0) int_0^oo e^(-x t) /(1 + t^2) d t = int_0^oo 1/(1+t^2) d t = pi/2
$