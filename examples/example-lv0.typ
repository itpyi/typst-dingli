#import "../0.2.0/dingli.typ": *

// #set text(font: ("Libertinus Serif", "Songti SC"), size: 12pt)
#show: dingli-rules.with(
  level: 0
)

#let theorem = theorem.with(level: 0)
#let lemma = lemma.with(level: 0)

#align(
  center,
  text(17pt)[
    *Example for the dingli package\ with numbering level 0*
  ]
)

The counter level is set by 
```typst
#show: dingli-rules.with(level: 0)

#let theorem = theorem.with(level: 0)
#let lemma = lemma.with(level: 0)
// ... other environments ...
```
Note that you cannot reset the counter level in a loop function. 
```typst
// Do NOT do this!
#let thm-list = (theorem, lemma)
#for thm in thm-list {
  thm = thm.with(level: 0)
}
```
The reason is that functions can only be redefined using `#let` command, but such a redefined function cannot be used outside the scope. 
It may be more convenient to reset the counter level when typst allows user-defined elements (https://github.com/typst/typst/issues/147). 

#theorem[#lorem(20)]

#lemma[#lorem(20)]

You can refer to a theorem as @lem.

= Section

#lemma[#lorem(20)]<lem>

== Subsection

#theorem[#lorem(19)]

Numbering is not affected by sections.
