# Terence Tao — Analysis I & II Notes

Study notes on **Analysis I** and **Analysis II** (4th edition) by Terence Tao.

The notes cover the majority of statements from both volumes — axioms, definitions, lemmata, propositions, theorems, corollaries, examples, remarks, and exercises — with worked proofs for the exercises.
Errata published on the author's website ([Analysis I](https://terrytao.wordpress.com/books/analysis-i), [Analysis II](https://terrytao.wordpress.com/books/analysis-ii)) are incorporated.

Many exercise solutions draw on community discussions; thanks in particular to contributors at [math.stackexchange.com](https://math.stackexchange.com) and [taoanalysis.wordpress.com](https://taoanalysis.wordpress.com).

## Requirements

- [TeX Live](https://www.tug.org/texlive/) — the official installation is recommended.
- `latexmk` — bundled with TeX Live.
- GNU `make` — optional, for the convenience targets below.

## Build

### Make

```sh
make           # build main.pdf
make watch     # continuous rebuild on file change
make clean     # remove auxiliary files
make cleanall  # remove auxiliary files and main.pdf
```

### VSCode

The repository builds out of the box with the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension's default recipe on `main.tex`.

## Contributing

Contributions are welcome, especially:

- Corrections to grammar and English phrasing.
- Improvements to proof rigor, clarity, and fluency.
- Solutions to the open exercises listed below.

The author is a non-native English speaker without formal mathematical training, so even small fixes are appreciated.
Please open an issue or submit a pull request.

### Code style

`.tex` source files are formatted with `latexindent` using its default configuration.

## Open exercises

The following exercises remain unsolved.

### Analysis I

- 8.1.10

### Analysis II

- 5.5.3
- 5.5.4
- 5.5.5
- 5.5.6
- 6.4.5
- 6.7.4
- Chapter 6
- Chapter 7
- Chapter 8
