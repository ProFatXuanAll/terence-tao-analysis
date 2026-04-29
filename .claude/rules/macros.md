# Macros & authoring environment

Read [myclass.cls](../../myclass.cls) and [mypackage.sty](../../mypackage.sty) before adding macros or environments.

[myclass.cls](../../myclass.cls) extends `book`; sets page geometry, `fancyhdr`, `hyperref`, `cleveref` (capitalized), and all theorem envs.
Numbering is `<part-Roman>.<chap>.<sec>.<n>`; chapter resets per part.
`\everymath{\displaystyle}` is global — don't add `\displaystyle` manually.

[mypackage.sty](../../mypackage.sty) provides math shorthand: `\pp` `\mm` `\LIM` `\abs` `\ceil` `\floor` `\pa` `\br` `\B`/`\set` `\norm` `\inner`; sets `\N \Z \Q \R \C \F`; helpers `\pf{label}`, `\by{label}[opt,...]`, `\byIH`, `\iindex{term}` (prints + indexes).

**Reuse these** instead of inlining (`\R` not `\mathbb{R}`, `\set{...}` not `\{...\}`, `\iindex{X}` not `X\index{X}`).
New macros go in [mypackage.sty](../../mypackage.sty), not in section files.
