#import "../0.2.0/dingli.typ": *

// #set text(font: ("Libertinus Serif", "Songti SC"), size: 12pt)
#show: dingli-rules

#align(
  center,
  text(17pt)[
    *Example for the dingli package\ with numbering level 0*
  ]
)

The counter level is set by 
```typst
#show: dingli-rules.with(level: 0)
```

#theorem[#lorem(20)]

#lemma[#lorem(20)]

You can refer to a theorem as @lem.

= Section

#lemma[#lorem(20)]<lem>

== Subsection

#theorem[#lorem(19)]

Numbering is not affected by sections.
