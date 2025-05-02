dingli: A typst package for theorems
====================================

dingli means “定理” (theorem) in Chinese.

## Quick start

```typ
#import "@local/dingli:0.2.0": *

#show: dingli-rules

#theorem[#lorem(20)]

You can refer to a theorem as @cor-label.

#theorem(name: "Some theorem")[#lorem(20)]

#lemma[#lorem(20)]

#corollary[#lorem(20)]

#corollary[#lorem(20)]<cor-label>

#proof[
  #lorem(20)

  #lorem(40)
]

#definition(name: "Some term")[#lorem(20)]

#example[#lorem(20)]
```

## Details in behaviour

### Setting numbering levels quickly

You can determine yourself whether the theorems are numbered as 
- Theorem 1, 2,... with title level 0,
- Theorem 1.1, 1.2, 2.1,... with title level 1, or
- Theorem 1.1.1, 1.1.2, 1.2.1, 2.1.1,... with title level 2,
- ......

You can set this numbering level by only one argument in the `dingli-rules`.


```typ
#show: dingli-rules.with(level: 1)
```

See examples for details.

### Weak vertical space 

A theorem is vertically separated with paragraphs, other theorems or anything around it. The separation is weak. That is, the separation between two consecutive theorems is the same as the separation between a theorem and a normal paragraph.

The default separation is set to 2em for both the upper and the lower separation. You can change it by giving arguments to the `dingli-rules`.

```typ
#show: dingli-rules.with(
    upper: 1.5em,
    lower: 1.5em,
)
```

### Correct indent of paragraph followed

If you have turned on the first line indent without enabling `all`, you will get the correct indention after a theorem. This is because we have inserted a virtual paragraph after a theorem, so that the following paragraph will see a paragraph as its preceding block-level element.


## To do and not to do

### To do

The following features may appear in future versions.

- Make `name` an optional argument so that users do not need to type the word `name`.