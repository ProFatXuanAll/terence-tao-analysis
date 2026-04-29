# Document structure

The build is assembled via the `import` package's `\subimport`; paths resolve relative to the importing file.

```text
main.tex → preface.tex, part{1,2}/main.tex
part<P>/main.tex → ch<N>/main.tex (\part declared here)
ch<N>/main.tex → sec<M>.tex (\chapter declared here; some chapters hold content directly)
```

Adding a section or chapter requires creating the file **and** registering a `\subimport` line in the parent `main.tex`.
