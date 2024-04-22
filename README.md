# My Bachelor Thesis

## Linux dependencies for building LaTeX

```bash
sudo apt install texlive texlive-latex-extra texlive-lang-czechslovak texlive-science texlive-pstricks latexmk texmaker texlive-font-utils texlive-fonts-extra texlive-bibtex-extra biber okular pdf-presenter-console dvipng sketch
```

## Build using supplied Makefile

Build the pdf by running
```bash
make
```
in the thesis's folder.
The build is facilitated via `latexmk`.
The output will appear in the `build` subfolder.

## Switching between print and screen versions

The template supports the output of two different versions of the thesis.

The **print** version has asymmetric margins to compensate for the spine of the thesis.
Moreover, the **print** version adds white pages whenever necessary (new chapters and standalone pages, e.g., before the copyright notice).

The **screen** version has symmetric margins and no filler white pages.

The print version is enabled by uncommenting the first line in the `main.tex` document:
```latex
\newcommand*{\printversion}{}%
```
