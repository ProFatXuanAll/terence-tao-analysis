# Theorem environments & label scheme

|Env|Counter|
|---|---|
|`ax`|own, reset per **chapter**|
|`ac`, `ex`|own, reset per section|
|`thm`, `cor`, `defn`, `eg`, `lem`, `prop`, `rmk`|**all share `thm` counter** per section — insertion order shifts every later number|
|`note`, `meta-proof`|unnumbered|

Label scheme (prefix `i:` for Analysis I, `ii:` for II):

- `i:ch:<N>`, `i:sec:<C>.<S>`
- `i:<C>.<S>.<n>` — theorem-family
- `i:<C>.<n>` — axiom (two segments; resets per chapter)
- `i:ex:<C>.<S>.<n>`, `i:ac:<C>.<S>.<n>`

Cross-ref with `\cref` / `\by` / `\pf`, never raw `\ref`.
