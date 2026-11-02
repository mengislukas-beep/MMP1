#import "../style.typ": *

#stdtitle(
  [MMP 1],
  [Serie 6],
  [Lukas Mengis],
)
#pagebreak()


#show: setup
Viel rechnen ᕦ(ò_óˇ)ᕤ
= MC

(A)
= 



=

$
  H_n (x) = (-1)^n e^(x^2) (d^n)/(d x^n) e^(- x^2)
$
==
$z= y-x$
$
  e^(2 x y -y^2) &= e^(x^2) e^(-z^2) \
  &= e^x^2  sum_(n=0)^oo part^n/(part z_0^n) (e^(-z_0^2)) (z-z_0)^n/(n!), quadd z_0=-x\
  &= e^(x^2) sum_(n=0)^oo (-1)^n e^(-x^2) (H_n (z_0))/n! y^n\
  &= sum_(n=0)^oo (-1)^n (H_n (-x))/n! y^n\
  &= sum_(n=0)^oo (H_n (x))/n! y^n
$

==
Viel rechnen ᕦ(ò_óˇ)ᕤ

===

$
  H_(n+2) (x) - 2 x H_(n+1) (x) + 2(n+1) H_n (x) =0\
  <=> d^(n+2)/(d x^(n+2)) e^(-x^2) + 2x d^(n+1)/(d x^(n+1)) e^(-x^2) + 2(n+1) d^(n)/(d x^(n)) e^(-x^2)=0
$
$
  part/(part x) e^(-x^2) = - 2x e^(x^2) => (part/(part x) e^(-x^2) + 2x e^(-x^2)) =0\
  => part^(n+1)/(part x^(n+1)) (part/(part x) e^(-x^2) + 2x e^(-x^2)) = part^(n+2)/(part x^(n+2)) e^(-x^2) + 2 part^(n+1)/(part x^(n+1)) (x e^(-x^2)) =0
$
$
  part^n/(part x^n) (g(x)f(x)) &= sum_(j=0)^n  vec(n,j)g^((j)) f^((n-j))quadd g(x)=x , quad  f(x) e^(-x^2)\
  &=>  sum_(j=0)^1 vec(n,j) x^((n)) part^(n-j)/(part x^(n-j)) (e^(-x^2)) = x part^n/(part x^n) e^(-x^2)  + n  part^(n-1)/(part x^(n-1)) e^(-x^2)
$
$
  =>  H_(n+2) (x) - 2 x H_(n+1) (x) + 2(n+1) H_n (x) =0
$<3.6>
===
$
  H'_n (x) -2n H_(n-1) (x) &=0
$<3.7>

$
  H'_(n)  (x) = 2x (-1)^n  e^(x^2) part^(n)/(part x ^(n)) e^(-x^2) + (-1)^n e^(x^2) part^(n+1)/(part x^(n+1) ) e^(-x^2) = 2x H_n (x) - H_(n+1) (x) \
$<3.8>

$
  H''_(n) (x)& = (2 + 4x^2) (-1)^n e^(x^2) part^n/(part x^2) e^(-x^2) + 2x (-1)^n e^(x^2) part^(n+1)/(part x^(n+1)) e^(-x^2) + 2x (-1)^n e^(x^2) part^(n+1)/(part x^(n+1)) e^(-x^2) + H_(n+2) (x)\
  &= (2 + 4x^2) H_n (x)  - 4x H_(n+1) (x) + H_(n+2) (x)
$<3.9>

\
using @3.6 
$
   2n H_(n-1) = 2x H_(n)- H_(n+1) (x)   
$
with @3.7 and @3.8
$
  => H'_(n) (x) - 2n  H_(n-1) (x) =0
$
===
with @3.9, @3.8, @3.7, @3.6
$
H''_n  - 2x H'_n  + 2n H_n  &= (2 + 4x^2) H_n   - 4 x H_(n+1) + H_(n+2)  -4x^2 H_n + 2x H_(n+1)  - H_(n+2)  + 2x H_(n+1) - 2 H_n \
  &= 0
  
$

=

==
$
  alpha^2/z^2  J_alpha&=  alpha^2/z^2sum_(l=0)^oo (-1)^l/(l! Gamma(l + alpha + 1)) (z/2)^(2l + alpha) \
  &= sum_(l=0)^oo  - ((-1)^l alpha^2)/(l! Gamma(l + alpha + 1)) (z/2)^(2l + alpha-2) 1/4
$
$
  J'_alpha/z = sum_(l=0)^oo ((-1)^l (2l + alpha))/(l! Gamma(l + alpha + 1)) (z/2)^(2l + alpha -2) 1/4\
$
$
  J''_alpha  = sum_(l=0)^oo  ((-1)^l (2l + alpha)(2l + alpha -1))/(l!Gamma(l+ alpha + 1)) (z/2)^(2l + alpha -2)1/4
$
$
  => (2l + alpha) + (2l + alpha) (2l +alpha -1) -alpha^2 = (2l + alpha)^2 - alpha^2 = 4 l (l + alpha)
$
together
$
  =>  J''_alpha +1/z J'_alpha -alpha/z^2  J_alpha &= sum_(l=0)^oo ((-1)^l 4 l (l +alpha))/(4 l! Gamma(l+ alpha + 1)) (z/2)^(2l + alpha -2)\
  &= sum_(l=0)^oo ((-1)^l)/((l-1)! Gamma((l-1) + alpha + 1 )) (z/2) ^(2(l-1) + alpha )\
  &= sum_(k=0)^oo (- (-1)^k)/(k! Gamma(k + alpha + 1)) (z/2)^(2k + alpha ) = J_alpha
$
#align(right)[$square$]
==
$
  W(f,g) = det(mat(f,g;f',g')) = f g' - f' g
$
$
  W'(f,g) = f g'' - f'' g
$
if g is a solution
$
  g'' + 1/z g' + (1- n^2/z^2) g = 0
$
$
  => W' (f,g)=& - 1/z g' f - (1- n^2/z^2) g f + 1/z g f' + (1- n^2/z^2) g f\
  &= -1/z W(f,g) 
$
$
  int 1/W d W &=- int 1/z d z
$
$
  => W(f,g) = 1/z C
 $
$
  lim_(z->oo) W(f,g) =0
$
$=> f,g$ sind linear abhängig
==

=

$
   J'_n (z)  = 1/(2pi)  int_0^(2pi) i  sin(theta) e^(-i n theta) e^(i z sin(theta) ) d theta
$
$
  J''_n (z) = 1/(2pi) int_0^(2pi) -sin^2(theta) e^(-i n theta)e^(i z sin(theta)) d theta
$
$
  => &int_0^(2pi) (- z^2 sin^2(theta) +  z i sin(theta)  + z^2 + n^2)  e^(-i n theta)e^(i z sin(theta)) d theta\ 
  = & int_0^(2pi) (z^2 cos^2(theta)  + z i sin(theta) + n^2)  e^(-i n theta)e^(i z sin(theta)) d theta
  \
  dots ?
$
=
==
$
  J'_alpha (z) + alpha/z J_alpha (z) = J_(alpha-1) (z) => J_alpha^l ( (2l + alpha+ alpha)/z )= J_alpha^l (l+ alpha) 2/z
$
#align(right)[$square$]
==
$
  J'_(alpha) (z) - alpha/z J_alpha (z) &= sum_(l=0)^oo (-1)^l/(l!  Gamma(l+ alpha + 1))(z/2)^(2l + alpha) (2l + alpha -alpha)/z\
  &= sum_(l=0)^oo (-1)^l/((l-1)! Gamma((l-1) + (alpha+1) + 1)) (z/2)^(2l + alpha +1-2)\
  &= - sum_(k=0)^oo (-1)^k /(k! Gamma(k + alpha + 2)) (z/2)^(2k + alpha + 1) = - J_(alpha + 1) (z)
$
==
$
  J_(alpha -1) (z) + J_(alpha + 1) (z) &= J'_alpha (z) + alpha/z J_alpha (z) + J_(alpha + 1) (z)\
  &= - J_(alpha + 1) (z) + alpha/z J_alpha (z) + alpha/z J_alpha (Z) + J_(alpha + 1) (z) = (2 alpha) /z J_(alpha) (z)
$

==
$
  J_(alpha -1) (z) - J_(alpha + 1) (z) = J'_(alpha) + alpha/z J_alpha + J'_alpha - alpha/z J_alpha = 2 J'_alpha (z)
$