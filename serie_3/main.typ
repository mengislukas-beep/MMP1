#import "../style.typ": *

#stdtitle(
  [MMP 1],
  [Serie 3],
  [Lukas Mengis],
)
#pagebreak()



#show: setup

Kannst du mir sagen, ob bei den Beweisen alles Wichtige dabei ist. 
\
Gibt es eine Strategie die Funktion wie in Aufgabe 4 zu erraten?\
Lg\
ヽ(^。^)ノ

==
(D)
=

==
$
  f(x) = 1/2 - x + floor(x)
$
$n != 0$
$
  f_n = int_0^1 (1/2 -x) e^(-2i pi  x n) d x &= [ i/(4pi  n) e^(-2 pi i n x) - (x/(-2 pi i n)e^(-2 pi i n x)- int_0^1 1/(-2 pi i n )e^(-2 pi i n x) d x) ]_0^1 = 1/(2 pi i n)
$
$n=0$
$
  f_0 = int_0^1 1/2 -x d x = [x/2 - x^2/2]_0^1 = 0
$
==

$
  f_n &= int_(-1/2)^(1/2)   (1/2 -abs(x)) e^(-i 2 pi n (x+1/2)) d x\
  &= (-1)^n int_(-1/2)^(1/2) (1/2 - abs(x))e^(- 2pi i n x) d x
$
$n=0$
$
  f_0 = [x/2]_(-1/2)^(1/2) - 2 [x^2/2]_0^(1/2) = 1/2 -1/4 = 1/4
$
$n!=0$
$
  f_n &=-(1)^n ([1/(-4 pi i n ) e^(- 2 pi i n x)]_(-1/2)^(1/2) + int_0^(1/2) x e^(-2 pi i n x) d x + int_0^(1/2) x e^(2 pi i n x) d x)\
  &= (-1)^n (0 + underbrace([x/(-2 pi i n) e^(- 2 pi i n x) + x/(2 pi i n) e^( 2 pi i n x) ]_0^(1/2),=0) - (int_0^(1/2) 1/(-2 pi i n) e^(-2 pi i n x) d x + int_0^(1/2) 1/(2 pi i n) e^(2 pi i n x) d x))\
  &= (-1)^n ( [1/(4 pi^2 n^2 ) (e^(-2 pi i n x) +e^(2 pi i n x))]_0^(1/2)) = (-1)^n [1/(2 pi^2 n^2) cos(2 pi n x)]_0^(1/2) =(-1)^n (1 + (-1)^n)/(2 pi^2 n^2) 
$
==

$
  f(x) = x^2
$
$
  f_n &= 1/(2pi) int_0^(2pi) x^2 e^(-i n x) d x
$
$n=0$
$
  f_0 = 1/(2pi) [x^3/3]_0^(2pi) = (4 pi^3)/3 
$
$n!= 0$
$
  f_n &= 1/(2pi) int_0^(2pi) x^2 e^(-i n x) d x\
  &= 1/(2pi) ([x^2/(- i n) e^(-i n x)]_0^(2pi) - int_0^(2pi) (2x)/(- i n) e^(-i n x) d x)\
  &=1/(2pi) ( (i 4 pi^2)/(n) -([(2x)/(-n^2)e^(-i n x)]_0^(2pi) + int_0^(2pi) 2/(n^2) e^(-i n x) d x))\
  &= 1/(2pi) ((i 4 pi^2)/(n) + (4 pi)/(n^2) + [i/(n^3) e^(-i n x)]_0^(2pi)) = (i 2pi)/n + 2/n^2 
$
==
$
  f(x) = cases( 0 quad & -pi < x < 0, sin(x)quad & 0 <= x < pi)
$
$
  f_n = 1/(2pi) int_0^(2pi) f(x) e^(-i n x) d x
$
$n=0$
$
  f_0 = 1/(2pi) int_0^pi sin(x) d x = -1/(2pi) [cos(x)]_0^pi = 1/pi
$
$n!=0,1$
$
  f_n &= 1/(2pi) int_0^(pi) sin(x) e^(-i n x) d x\
  &= 1/(2pi) (-cos(x) e^(-i n x) - int_0^pi  i n cos(x) e^(-i n x) d x )\
  &= 1/(2pi) (- cos(x) e^(-i n x) - i n sin(x)e^(-i n x) + n^2 int_0^pi sin(x) e^(-i n x) d x)\
  &=1/(2pi) 1/(1-n^2) [-cos(x)e^(i n x) - i n sin(x)e^(- i n x)]_0^pi = 1/(2pi (1-n^2)) (1 + (-1)^n) quad fa n >1
$
$n=1$

$
  f_1 = 1/(2pi) int_0^pi 1/(2i) (e^(i x (1-1))- e^(- 2i x)) = 1/(2pi) (pi/(2i) + 0) = -i/(4)\
  f_(-1) = i/4
$


=
==
$
  f(x) = sin^N (x)
$
$
  f_n &= 1/(2pi) int_0^(2pi) 1/(2i)^N (e^(i x)-e^(-i x))^N e^(- i n x) d x\
  &= 1/(2pi 2^N i^N) int_0^(2pi) sum_(j=0)^N (-1)^j vec(N,j)e^(i x (N-2j-n)) 
  d x\
  &= (2pi)/(2pi 2^N i^N)  (-1)^((N-n)/2) vec(N,(N-n)/2)\
  &= 1/(2^N i^N) (-1)^((N-n)/2) vec(N,(N-n)/2), quad fa (N-n)/2 in NN
$
==
$
  f(x) = e^(e^(i x)) = sum_(j=0)^oo e^(i x j)/j!
$

$
  f_n &= 1/(2pi) int_0^(2pi) sum_(j=0)^oo e^(i x (j-n))/j! d x = 1/n!
$
==
$
  f(x) = 1/(1-1/2 e^(i x)) = sum_(j=0)^oo 2^(-j) e^(i x j)
$
$
  f_n = 1/(2pi) int_0^(2pi) sum_(j=0)^oo 2^(-j) e^(i x(j-n)) d x= 2^(-n)
$
==
$
  f(x) = (4-2cos(x))/(5 -4 cos(x)) = ((5-4cos(x))1/2 +3/2)/(5- 4 cos(x)) = 1/2 + 3/2 1/(5-4 cos(x)) 
$
$
  5 -4 cos(x) = 5 - 2(e^(i x) + e^(-i x)) = 4 - 2(e^(i x) + e^(-i x)) + 1 = (2-e^(i x))(2 - e^(-i x))
$
$
  => f(x) = 1/2 + 3/4 1/( 1-1/2(e^(i x))) 1/(1- 1/2 e^(-i x)) = 1/2 + 3/8 sum_(j,k>=0) (1/2)^(j +k) e^(i x (j-k)) 
$
$
  f_n &= 1/(2pi) int_0^(2pi) 1/2 e^(-i n x) + 3/8 sum_(j,k>=0) (1/2)^(j+k) e^(i x(j-k-n)) d x\
  &= delta_(0 n)/2 + 3/8 sum_(j>=0) (1/2)^(2j + n) \
  &= delta_(n 0)/2 + 3/8 (1/2)^n 1/(3/4)  = 1/2( delta_(0 n) + 2^(-n))
$
=
==
$
  f(x) = sum_n f_n e^((2pi i n x)/L), quad "with" sum_n abs(f_n) < oo
$

$
  ip(f,g) &= 1/L int_0^L overline(f(x))g(x) d x \
  &= 1/L int_0^L sum_(n in ZZ) overline(f_z) e^((-2 pi i n x )/L) g(x) d x\
  &= sum_(n in ZZ) overline(f_n) 1/L int_0^L g(x) e^((2pi i n x)/L) d x\
  &= sum_(n in ZZ) overline(f_n) g_n
$
==
$
  1/L int_0^L abs(f(x))^2 d x = 1/L int_0^L abs(sum_(n in ZZ) e^((2pi i n x)/L))^2 d x = sum_(n in ZZ) abs(f_n)^2
$
=
==
===
We have to find a L-periodic function such that
$
  f_n = 1/L int_0^L f(x) e^((-2pi i n x)/L) d x = abs(1/n)
$
$f(x)=x$
$
  f_n = 1/(2pi) int_(-pi)^(pi) x e^(-i n x) d x &= 1/(2pi) [x/(-i n ) e^(-i n x)]_(-pi)^pi- 1/(2pi) underbrace(int_(-pi)^pi 1/(- n^2 pi^2)e^(-i n x) d x,=0) \
  &= 1/(i n)
$
$
  => sum_(n in NN) = 1/(4pi) int_(-pi)^pi  x^2 d x = 1/(4pi)  [x^3/3]_(-pi)^pi = pi^2/6
$
===
$
  f(x) = (1-2x)^2
$ 
$n!=0$
$
  f_n &= int_0^1 (1-2x)^2 e^(-2 pi i n x) d x\
  &= underbrace([(1-2x)^2/(-(2pi i n)) e^(-i n x 2 pi)]_0^1,=0) - int_0^1 (2(1-2x))/(i n   pi) e^(- x i n  2pi) d x\
  &= [(1-2x)/(i^2n^2 pi^2)]_0^1 - underbrace(int_0^1 2/( i^2n^2 pi^2) e^(- 2pi i n x) d x,=0) \
  &= 2/(n^2 pi^2) 
$
$n=0$
$
  f_0 = int_0^1(1-2x)^2 d x = 1/3 
$
$
  => sum_(n=1)^oo 1/n^4 &=  1/2 (pi^2/2)^2 (int_0^1 (1-2x)^4 d x - abs(f_0)^2)\
  &= pi^4/8 dot ((9-5)/45) = pi^4/90
$
==
$
  f(x) = cases( 0 quad & -pi < x < 0, sin(x)quad & 0 <= x < pi)
$

$
  f_0 = 1/pi
$
$
  f_(1,2) = plus.minus i/4
$
$
  f_(n>1) = 1/(2pi(1-n^2)) (1+(-1)^n)
$
$
  => sum_(n=1)^oo 1/(4n^2-1)^2 &= pi^2/2(1/(2pi) int_0^(2pi) abs(f(x))^2 d x - 1/pi^2 -1/8)\
  &= pi/4 int_0^pi sin^2(x) d x - 1/2 -pi^2/(16)\
  &= pi/4 int_0^pi (1- cos(2x))/2 d x -1/2 -pi^2/16\
  &= (pi^2)/16 -1/2
$
=
==
$
  (T_a f)_n &= 1/L int_0^L (T_a f) e^(- (2pi i n x)/L) d x\
  &= 1/L   int_(-a)^(L-a) f(x) e^(-(2 pi i n (x+a))/L) = e^(-(2pi i n  )/L a) f_n
$
==
$k in ZZ$
$
  (e^((2 pi i k x)/L )f)_n &= 1/L int_0^L f(x) e^(- (2 pi i (n-k) x)/L) d x =f_(n-k)
$
==
#align(left)[
  $
    f in cal(F)_L
  $<Lperiodic>
]

$
  (f')_n &= 1/L int_0^L f'(x) e^(-(2pi i n x)/L) d x\
  &= 1/L underbrace([f(x) e^(- (2 pi i n x)/L)]_0^L, #text[@Lperiodic]  quad =>0) + (2 pi i n)/L 1/L int_0^L f(x) e^(-(2 pi i n x)/L) d x \
  &= (2 pi i)/L n f_n
$
