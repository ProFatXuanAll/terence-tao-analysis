# Git commit convention

Follows the [Angular commit convention](https://github.com/angular/angular/blob/main/CONTRIBUTING.md#-commit-message-format).

## Format

```text
<type>(<scope>): <subject>

[optional body]

[optional footer]
```

Subject is lowercase, imperative ("add" not "added" or "adds"), with no trailing period, and at most 72 characters.
A blank line separates the header from the body, and the body from the footer.
Body and footer are wrapped at 72 characters and also use imperative mood.

## Type

|Type|Use for|
|---|---|
|`feat`|New content — a new section, theorem, exercise solution, macro, or environment.|
|`fix`|Corrections to existing content — proof errors, label errors, errata, grammar or typo fixes.|
|`docs`|Changes to `README.md`, `CLAUDE.md`, `.claude/rules/`, `preface.tex`, or in-source comments only.|
|`style`|Whitespace, `latexindent` reformatting, or punctuation/word swaps that don't change meaning.|
|`refactor`|Restructuring without semantic change — file moves, label renames, splitting or merging environments.|
|`build`|Changes to `Makefile`, `.gitignore`, or other build tooling.|
|`chore`|Other maintenance not covered above.|

Changes to `myclass.cls` or `mypackage.sty` use whichever type matches the intent (`feat` for new macros, `fix` for broken ones, `refactor` for renames, etc.) — not `build`.

## Scope

Optional, but include it when the change targets a specific location.
Scopes reuse the label namespaces from [labels.md](labels.md) with the `i:` / `ii:` part prefix omitted:

- `ch:<N>` — chapter (e.g. `fix(ch:2): ...`).
- `sec:<C>.<S>` — section (e.g. `feat(sec:5.5): ...`).
- `<C>.<S>.<n>` — a single statement.
- `macros` — changes to `mypackage.sty`.
- `class` — changes to `myclass.cls`.

For repo-wide or cross-cutting changes, omit the scope (e.g. `refactor: restructure project directory`).

## Examples

```text
fix(ch:2): correct induction step in lemma proof
feat(sec:5.5): add solution for exercise 5.5.1
feat(macros): add \opTh operator
docs: rewrite preface
refactor: restructure project directory
style(sec:2.1): apply latexindent
fix: correct grammar around "this contradicts"
build: add Makefile with latexmk targets
```

## Don't

- Don't capitalise the subject or end it with a period.
- Don't use the legacy bare-verb subjects (`fix sec:5.4`, `add ...`, `update ...`).
- Don't include a `Co-Authored-By` trailer or tool-attribution line unless explicitly asked.
