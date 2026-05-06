# Vertex Parse YAML Mark Walkthrough

I use this file as a small checklist before changing the Ruby implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 118 | watch |
| stress | grammar width | 174 | ship |
| edge | label quality | 117 | watch |
| recovery | error locality | 117 | watch |
| stale | token drift | 187 | ship |

Start with `stale` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stale` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
