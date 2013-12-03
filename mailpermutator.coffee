#! /usr/bin/env coffee
_ = require "underscore"
name = process.argv[2]||"pippo"
surname = process.argv[3]||"franco"
domain = process.argv[4]||"@gmail.com"

sym = (x)-> _.uniq(['','.','-','_'].map((op)->x.join(op)+domain))

permutations = [
  #basic
  [name]
  [surname]
  [name,surname]
  [surname,name]
  [name[0],surname]
  [surname,name[0]]
  [surname,name[0..1]]
  [name[0..1],surname]
  [name,surname[0]]
  [surname[0],name]
]

permutations.forEach((x)->
  console.log (sym x).join('\n')
)


