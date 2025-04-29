#import "../0.2.0/dingli.typ": *

// #set text(font: ("Libertinus Serif", "Songti SC"), size: 12pt)
#show: dingli-rules.with(
  level: 2
)
#let theorem = theorem.with(level: 2)
#let lemma = lemma.with(level: 2)

#align(
  center,
  text(17pt)[
    *Example for the dingli package\ with numbering level 2*
  ]
)

The counter level is set by 
```typst
#show: dingli-rules.with(level: 2)

#let theorem = theorem.with(level: 2)
#let lemma = lemma.with(level: 2)
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

#set heading(numbering: "1.")


This is an example for the dingli package. It shows how to use the package to create a simple example.

#theorem[#lorem(20)]

You can refer to a theorem as @lem, @thm.

= Section

#lemma[#lorem(20)]<lem>

== Subsection

#theorem[#lorem(19)]

== Subsection

#lemma[#lorem(20)]

#theorem[#lorem(23)]

=== Subsubsection

#theorem[#lorem(23)]

#theorem[#lorem(23)]

== Subsection

#theorem[#lorem(23)]<thm>

= Section 

== Subsection

#theorem[#lorem(23)]