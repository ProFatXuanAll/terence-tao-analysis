# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

LaTeX-only book of personal notes on Terence Tao's *Analysis I* and *II* (4e).
No code, no tests.
Open exercises tracked in `README.md` — keep that list in sync.

## Build & lint

- `make` (wraps `latexmk -pdf main.tex`); `make watch` for continuous rebuild; `make clean` / `make cleanall`.
  VSCode `latex-workshop` default recipe also works.
  PDF is git-ignored.
- Uses `makeidx` + `cleveref`, so a single pdflatex pass leaves refs/index empty — `latexmk` handles passes; by hand, run `makeindex main.idx` between passes.
- Format with `latexindent` (no config — defaults).

## Project rules

Detailed conventions live in [.claude/rules/](.claude/rules/).
Read the relevant file before substantive edits:

- [structure.md](.claude/rules/structure.md) — `\subimport` tree; how to add sections and chapters.
- [macros.md](.claude/rules/macros.md) — reuse macros from `mypackage.sty` / `myclass.cls`; don't redefine inline.
- [labels.md](.claude/rules/labels.md) — theorem environment counters and the `i:` / `ii:` label scheme.
- [proof.md](.claude/rules/proof.md) — always cite the theorem being proved; bare references break under renumbering.
- [editing.md](.claude/rules/editing.md) — author voice, errata handling, formatting.
- [commits.md](.claude/rules/commits.md) — Angular commit convention; scopes reuse the label namespaces.
