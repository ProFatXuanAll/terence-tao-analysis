# Terence Tao Analysis

This is a note of the textbooks

- Analysis I 3rd edition by Terence Tao
- Analysis II 3rd edition by Terence Tao

The note covers almost all **axioms**, **theories**, **lemmas**, **propositions**, **corollaries**, **remarks**, **proofs**, **notes**, **examples** and **exercises** appear in the book, which are copied from the books with or without some modifications.

Additionally, I also wrote proofs if there are none in the book.

## Contribution

I'm not a native English speaker, and do not have mathematical background, so I really appreciate some help for the following things:

- **grammer**, **syntax** and **semantic correction**
- more **rigorous proofs**
- **proofs** I cannot come up with myself

If you want to help, please fork the repository and submit a pull request, I'll review the submission ASAP.

### Rules

- **Math symbols**, **equations** and **statements**
  - All **inlined math symbols** and **equations** should be enclosed with `\(` and `\)`.
    - ex: `\(x = 1\)`.
    - Don't use `$`.
  - If variables are **seperated by comma with the same properties**, then enenclosed them **together**.
    - ex: `\(x, y \in \mathds{R}\)`.
  - All **block-style single line equation** and **statement** should be enclosed with `\[` and `\]`.
  - All **block-style multi-line equations** and **statements** should be enclosed with the environment `\begin{align*}` and `\end{align*}`.
- **Axioms**, **theories**, **lemmas**, **propositions**, **corollaries**, **remarks**, **proofs**, **notes** and **exercises**
  - All **axioms**, **theories**, **lemmas**, **propositions**, **corollaries**, **remarks**, **proofs**, **notes** and **exercises** should be enclosed with the proper environment.
  - All **axioms**, **theories**, **lemmas**, **propositions**, **corollaries**, **remarks** and **exercises** should be correctly **labeled**.
  - All **references** to **axioms**, **theories**, **lemmas**, **propositions**, **corollaries**, **remarks** and **exercises** should be enclosed with `\ref{}`, and specify the **type** of statement with **capital**.
    - ex: `Axiom \ref{2.1}`.
  - All paragraphs other than **axioms**, **theories**, **lemmas**, **propositions**, **corollaries**, **remarks**, **proofs** and **exercises** should be enclosed with the environment `\begin{note}` and `\end{note}`.
  - If there are some statements which might help prove others should be included, use the environment `\begin{additional corollary}` and `\end{additional corollary}`.
    - **Additional Corollaries** must also come with **proof**.

|statement|environment|label|
|-|-|-|
|axiom|`\begin{axiom}` and `\end{axiom}`|`\label{chapter_no.axiom_no}`|
|theorem|`\begin{theorem}` and `\end{theorem}`|`\label{chapter_no.section_no.statement_no}`|
|lemma|`\begin{lemma}` and `\end{lemma}`|`\label{chapter_no.section_no.statement_no}`|
|proposition|`\begin{proposition}` and `\end{proposition}`|`\label{chapter_no.section_no.statement_no}`|
|corollary|`\begin{corollary}` and `\end{corollary}`|`\label{chapter_no.section_no.statement_no}`|
|remark|`\begin{remark}` and `\end{remark}`|`\label{chapter_no.section_no.statement_no}`|
|example|`\begin{example}` and `\end{example}`|`\label{chapter_no.section_no.statement_no}`|
|exercise|`\begin{exercise}` and `\end{exercise}`|`\label{ex chapter_no.section_no.exercise_no}`|
|additional corollary|`\begin{additional corollary}` and `\end{additional corollary}`|`\label{ac chapter_no.section_no.corollary_no}`|
|proof|`\begin{proof}` and `\end{proof}`||
|meta-proof|`\begin{meta-proof}` and `\end{meta-proof}`||
|note|`\begin{note}` and `\end{note}`||

- **Quotes**
  - **Quotes** should be surrounded with ``` `` ``` and `''`.
  - Don't use `\say{}`.
- **Operators**, **subscript** and **superscript**
  - **Binart operator** should be surrounded with **spaces**.
    - ex: `\(a + b\)`.
  - **Multiplication** symbol can be **ignored**, and when doing so, **no space** should be in between operands.
    - ex: `\(ab\)`
  - **Subscript** take precedence over **superscript**.
    - ex: `\((a_n)_{n = 1}^{\infty}\)`.
  - If there is only **single letter** in **subscript** and **superscript**, then do not enclose with `{` and `}`.
    - ex: `\(x^2\)`.
  - If **subscript** and **superscript** are followed with aother symbols, then **appended with additional space**.
    - ex: `\(x^2 y^2\)`.
- `\forall` and `\exists`
  - `\forall` and `\exists` should be **followed with additional space**.
    - ex: `\(\forall\ n \geq 1\)`.
  - If there are text before `\forall` and `\exists`, then **prepended with additional space**.
    - ex: `\(n \geq 1 \ \forall\ n \in \{1,2,3\}\)`.
- **Absolute value**, **floor**, **ceiling**
  - **Absolute value** should be written as `\abs*{}`.
    - ex: `\(\abs*{a_j - a_k}\)`.
  - **Floor** should be written as `\floor*{}`.
    - ex: `\(\floor*{x}\)`
  - **Ceiling** should be written as `\ceil*{}`.
    - ex: `\(\ceil*{x}\)`
- **Enumerate**
  - `\item` in enumerate environments should be **indented**.
  - **Labels** should be enclosed with `(` and `)`.
  - If the statement we tried to **prove** also use enumerate environment, then start the label with `\roman`.
  - In **nested** enumerate environments, **labels presedence** should be `\alph`, `\Roman`, `\roman` and `\arabic`.

### Unsolved Exercise

- Analysis I
  - no requirement yet
- Analysis II
  - not start yet
