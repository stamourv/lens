#lang sweet-exp reprovide
except-in
  combine-in
    "base/main.rkt"
    "compound/main.rkt"
    "dict.rkt"
    "hash/main.rkt"
    "list/main.rkt"
    "stream.rkt"
    "string.rkt"
    "struct/main.rkt"
    "vector/main.rkt"
  gen:lens
  focus-lens
  drop-lens
  take-lens
  use-applicable-lenses!