#let numbering-level = state("level", 1)

#let compute(expr) = {
  numbering-level.update(x =>
    eval(expr.replace("x", str(x)))
  )
}

#let l = context numbering-level.get()

#l

#numbering-level.update(2)

#l

#context{
  let ll = numbering-level.get()
  ll > 1
  l > 1
}

#l