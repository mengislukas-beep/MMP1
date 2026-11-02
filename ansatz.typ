#table(
  columns: (1fr, 1.5fr),
  inset: 8pt,
  stroke: 0.5pt,
  [*Funktion $f(x)$*], [*Fouriertransformierte $hat(f)(k)$*],

  [$e^(-a abs(x))$],
  [$frac(2a, a^2+k^2)$],

  [$e^(-a x^2)$],
  [$sqrt(frac(pi, a)) e^(-k^2/(4a))$],

  [$1_([-a,a])(x)$],
  [$frac(2 sin(a k), k)$],

  [$frac(1,2a) 1_([-a,a])(x)$],
  [$frac(sin(a k), a k)$],

  [$(a-abs(x))_+$],
  [$frac(2(1-cos(a k)), k^2)$],

  [$frac(1,a^2+x^2)$],
  [$frac(pi,a)e^(-a abs(k))$],

  [$e^(-a x) 1_([0,infinity))(x)$],
  [$frac(1,a+i k)$],

  [$x e^(-a x) 1_([0,infinity))(x)$],
  [$frac(1,(a+i k)^2)$],

  [$x e^(-a abs(x))$],
  [$frac(-4 i a k,(a^2+k^2)^2)$],
)

*Plancherel – Diskret (Fourierreihe):*

$
1/L integral_0^L abs(f(x))^2 dif x
= sum_(n in ZZ) abs(f_n)^2
$

*Plancherel – Diskret (Skalarprodukt):*

$
1/L integral_0^L f(x) overline(g(x)) dif x
= sum_(n in ZZ) f_n overline(g_n)
$

*Plancherel – Kontinuierlich (Fouriertransformation):*

$
integral_(-infinity)^infinity abs(f(x))^2 dif x
= frac(1, 2pi) integral_(-infinity)^infinity abs(hat(f)(k))^2 dif k
$

*Plancherel – Kontinuierlich (Skalarprodukt):*

$
integral_(-infinity)^infinity f(x) overline(g(x)) dif x
= frac(1, 2pi) integral_(-infinity)^infinity hat(f)(k) overline(hat(g)(k)) dif k
$
