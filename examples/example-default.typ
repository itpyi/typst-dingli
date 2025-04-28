#import "../0.2.0/dingli.typ": *

#show: dingli-rules

#align(
  center,
  text(17pt)[
    *Default behaviours for pre-defined terms*
  ]
)

#set heading(numbering: "1.")

#theorem[This is the first theorem that is not in any section.]

= Section

#theorem(name: [Bézout])[
  Let $a,b$ be integers, and $d = gcd(a,b)$ be their greatest common divisor.
  Then 
  $ {x a + y b: x, y in ZZ} = d ZZ, $
  where $ZZ$ is the set of integers.
]

Note the gap before and after a theorem. This can be set by 
```typst
#show: dingli-rules.with(
  upper: 2em,
  lower: 2em, // this is the default value, you can adjust it yourself
)
```
We can refer to a theorem by @thm-in-sec-2. Other types are also OK, see @cor-label. 

#lorem(20)

#lemma[#lorem(40)]

#proof[
  #lorem(20)

  #lorem(40)
]

#theorem[#lorem(23)]

#definition(name: "some term")[#lorem(34)]

== Subsection

#corollary[#lorem(25)]

#corollary[#lorem(25)]<cor-label>

== Subsection

#theorem[#lorem(23)]

= Section

#theorem[#lorem(23)]<thm-in-sec-2>

== Subsection

#theorem[#lorem(23)]

#example[#lorem(23)]