# Terence Tao Analysis

This repo contains notes of the following textbooks:

- Analysis I 3rd edition by Terence Tao.
- Analysis II 3rd edition by Terence Tao.

The notes cover almost all **axioms**, **definition**, **corollaries**, **examples**, **lemmas**, **propositions**, **remarks**, **theories**, **meta-proofs**, **proofs**, **notes** and **exercises** appear in the textbooks, which are copied from the books, with or without some modifications.

The notes also have some additional corollaries to help proving others.

## Contribution

### Issues

I'm not a native English speaker, and do not have mathematical background.
Any helps are appreciated, especially for the followings:

- **Syntax** and **grammar** correction.
- Making **proofs** more **rigorous**.
- **Proofs** I am struggled with.

Please **fork** the repository and submit a **pull request**, or just open **issues** and I will response ASAP.

### Style Rules

I use `latexindent` along side with the following rules:

#### Math Symbols, Equations and Statements

- All **inlined math symbols** and **equations** must be enclosed by `\(` and `\)`.

```latex
Let \(x\) be a real number. % enclose variable x
Set \(x = 1\).              % enclose equation x = 1
```

- If variables are **seperated by comma with the same properties**, then enclosed them **together**.

```latex
Let \(x, y\) be real numbers. % enclose comma seperated variables
```

- All **block-style single line equation** and **statement** must be enclosed by `\[` and `\]`.
- `\[` must followed by a new line, and `\[` must following a new line.

```latex
\[                            % followed by a new line
  \lim_{n \to \infty} a_n = c
\]                            % following a new line
```

#### Theorem-like Statements

- All theorem-like statements must be enclosed by the proper environment.
- All theorem-like statements must be correctly **labeled**.

```latex
% for axiom
\begin{ax}[axiom name]\label{chapter_no.axiom_no}
  ... % axiom goes here
\end{ax}

% for definition
% similarly for corollary, example, lemma, proposition, remark, theorem
\begin{defn}[definition name]\label{chapter_no.section_no.statement_no}
  ... % definition goes here
\end{defn}

% for exercise
\begin{ex}[exercise name]\label{ex:chapter_no.section_no.exercise_no}
  ... % exercise goes here
\end{ex}

% for additional corollary
\begin{ac}\label{ac:chapter_no.section_no.corollary_no}
  ... % additional corollary goes here
\end{ac}

% for proof
% similarly for meta-proof, note
\begin{proof}
  ... % proof goes here
\end{proof}
```

- All **references** to theorem-like statements must be enclosed by `\cref{}`, and specify the **type** of theorem-like statement with **capital initials**.
- All statements must be enclosed either by the environment `\begin{note}` and `\end{note}` or by other theroem-like statements.
- If there are some statements which might help prove others and must be included, use the environment `\begin{ac}` and `\end{ac}`.
  - **Additional Corollaries** must also come with **proofs**.

#### Quotes and Emphasis

- **Single Quotes** statements must be enclosed by ``` ` ``` and `'`.
- **Double Quotes** statements must be enclosed by ``` `` ``` and `''`.

```latex
This is a `single quote' example.
This is a ``double quote'' example.
```

- Emphasis text must be enclosed by `\emph{}`.

```latex
This is a \emph{emphasis} example.
```

#### Operators, Subscripts and Superscripts

- **Binary operator** must be surrounded by **spaces**.

```latex
\(a + b\) % + is surrounded by spaces
```

- **Multiplication** symbol can be **ignored**, and when doing so, **no space** were allowed in between operands.

```latex
\(a \times b\) % \times is surrounded by space
\(ab\)         % no space in between
```

- **Subscript** take precedence over **superscript**.
- If there is only **single letter** in **subscript** and **superscript**, then do not enclose with `{` and `}`.

```latex
a_n^2                      % do not enclose with {}
\((a_n)_{n = 1}^{\infty}\) % enclosed by {}
```

- If **subscript** and **superscript** are followed with another symbols, then **appended with additional space**.

```latex
\(a_n b_n\)
\(x^2 y^2\)
```

#### Enumerate and Itemize

- Prefer **itemize** over **enumerate** when order doesn't matter.
- `\item` in enumerate environments must be **indented**.

```latex
\begin{enumerate}
  \item statement 1
  \item statement 2
\end{enumerate}
```

- Enumerate **labels** must be enclosed by `(` and `)`.

```latex
\begin{enumerate}[label=(\roman*)]
  \item statement 1
  \item statement 2
\end{enumerate}
```

- **Nested enumerate** environments' **labels** must follow the order: `\alph`, `\Roman`, `\roman` and `\arabic`.

```latex
\begin{enumerate}[label=(\alph*)]
  \item alph statement 1
  \begin{enumerate}[label=(\Roman*)]
    \item Roman statement 1
    \begin{enumerate}[label=(\roman*)]
      \item roman statement 1
      \begin{enumerate}[label=(\arabic*)]
        \item arabic statement 1
        \item arabic statement 2
      \end{enumerate}
      \item roman statement 2
    \end{enumerate}
    \item Roman statement 2
  \end{enumerate}
  \item alph statement 2
\end{enumerate}
```

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
