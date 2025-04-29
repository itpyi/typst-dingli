#import "../0.2.0/dingli.typ": *

// #set text(font: ("Libertinus Serif", "Songti SC"), size: 12pt)
#show: dingli-rules.with(
  level: 2
)

#set heading(numbering: "1.")


#align(
  center,
  text(17pt)[
    *Example for the dingli package\ with numbering level 2*
  ]
)

The counter level is set by 
```typst
#show: dingli-rules.with(level: 2)
```


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