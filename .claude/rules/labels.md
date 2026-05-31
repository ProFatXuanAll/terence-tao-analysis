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
- `i:<C>.<S>.<n>.<letter>` — sub-statement; put `\label{i:<C>.<S>.<n>.<letter>}` on the matching first-level `enumerate` item inside the statement
- `i:<C>.<n>` — axiom (two segments; resets per chapter)
- `i:ex:<C>.<S>.<n>`, `i:ac:<C>.<S>.<n>`

Cross-ref with `\cref` / `\by` / `\pf`, never raw `\ref`.
A sub-statement label resolves to `<statement>(<letter>)` with the parent's name:
`\cref{i:2.2.12.e}` → Prop. I.2.2.12(e).
The `<letter>` in the label is only a key — the rendered letter tracks the item's actual position, so keep them in sync.
Prefer this over the legacy hand-typed `\cref{i:2.2.12}(e)` / `\by{i:2.2.12}[e]` forms.
