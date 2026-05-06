# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 118, lane `watch`
- `stress`: `grammar width`, score 174, lane `ship`
- `edge`: `label quality`, score 117, lane `watch`
- `recovery`: `error locality`, score 117, lane `watch`
- `stale`: `token drift`, score 187, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
