My Bachelor's Thesis on theme
# From FastText to Transformer Models, and their Application in Retrieval-Augmented Generation

**Abstract**
 
This thesis examines the evolution of text representation methods, starting from traditional techniques like FastText and advancing to sophisticated transformer-based models such as Bidirectional Encoder Representations from Transformers (BERT). The study evaluates these representations through analogy tests and confusion matrix analysis, utilizing the UPV corpus set for comprehensive assessment.

In the latter part of the research, the focus shifts to optimizing text representations for Retrieval-Augmented Generation (RAG) algorithms. The investigation aims to identify the most effective embeddings and determine the optimal text chunk size for Question Answering (QA) tasks, particularly within the realm of generating natural language answers from technical manuals. A thorough evaluation is conducted to recommend an optimal representation model that strikes a balance between factual accuracy and computational efficiency.

## ČVUT DSpace
You can also check this specific thesis on [ČVUT DSpace](https://dspace.cvut.cz/handle/10467/115109).

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
