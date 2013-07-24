Unit Tests - Why and When
=========================
25 July 2013

I answer a lot of questions about this, so I'm putting the answers here. Now in one place. Just a note really.

## Why?

> "How only makes sense if you know why” 
  *Gil Tene - CTO Azul Systems*

* live documentation (some say specification)
* conveys intent
* safety net - changes, refactoring - usual work
* you really FIRST check unit standalone before plugging it in anywhere and checking if it works THEN
* bug catcher - last and quite least

## When?

When it matters. When it's more than setters or getters. When the code won't be throwaway or prototype code. When it's not exploratory programming. When I want safety net and documented, clear code.

