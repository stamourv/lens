#lang scribble/manual

@(require lens/doc-util/main)

@title{Defining struct lenses automatically}

@defmodule[unstable/lens/struct]

@defform[(define-struct-lenses struct-id)]{
Given a @racket[struct-id], defines lenses for the fields.
@lenses-unstable-examples[
  (struct foo (a b c) #:transparent)
  (define-struct-lenses foo)
  (lens-view foo-a-lens (foo 1 2 3))
  (lens-set foo-a-lens (foo 1 2 3) 100)
]}

@defform[(struct/lens struct-id (field-spec ...) struct-option ...)]{
Equivalent to @racket[struct] and @racket[define-struct-lenses] combined.
@lenses-unstable-examples[
  (struct/lens foo (a b c) #:transparent)
  (lens-view foo-a-lens (foo 1 2 3))
  (lens-set foo-a-lens (foo 1 2 3) 100)
]}
