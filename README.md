# Terence Tao Analysis

These are my notes on the books **Analysis I** and **Analysis II**, 4th edition, written by Terence Tao.
My notes cover statements I found important or interesting, including almost all axioms, corollaries, exercises, lemmata, proofs, propositions, remarks, and theories in both books.
Errata on Tao's website ([Analysis-I](https://terrytao.wordpress.com/books/analysis-i) and [Analysis-II](https://terrytao.wordpress.com/books/analysis-ii)) are used to correct errors in both books.
I have written proofs for exercises.
Most exercises cannot be completed without referencing solutions from online forums.
So, many thanks to the people who provided their solutions at [math.stackexchange](https://math.stackexchange.com), [taoanalysis.wordpress.com](https://taoanalysis.wordpress.com), and many other sources.

## Compile to PDF

One has to install [texlive](https://www.tug.org/texlive/) before compiling tex files (official installation is recommended).
I use vscode extenstion `latex-workshop` to build PDF file from TeX.
I use the default recipe to build `main.tex`.

OR

On Ubuntu (and the like), install `texlive-full` (or `texlive-latex-extra`): `sudo apt install texlive-full` (or `sudo apt install texlive-latex-extra`)
and run `make` to let the `Makefile` generate the pdf for you. This will make a pdf, including all the reference and citation links.

## Contribution

### Issues

I do not have a mathematical background.
I do try my best to make every statement I wrote as correct as possible.
Still, my proofs could be wacky, non-rigorous, and incorrect.
Any helps are appreciated, especially for the followings:

- Correct **syntax** and **grammar**, because I'm not a native English speaker.
- Make proofs **fluent** and **rigorous**.
- Finish **proofs** that I am struggled with.

Please **fork** the repository and submit a **pull request**, or just open an **issue**.
I will response ASAP.

### Formatting

Tex files are linted by `latexindent`.

### Unsolved Exercises

- Analysis I
  - 8.1.10
- Analysis II
  - 5.5.3
  - 5.5.4
  - 5.5.5
  - 5.5.6
  - 6.4.5
  - 6.7.4
  - Chapter 6
  - Chapter 7
  - Chapter 8
