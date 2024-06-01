PROJNAME=main
PRESENTATIONNAME=presentation
BUILDDIR=build

.PHONY: $(PROJNAME).pdf all clean

all: $(PROJNAME).pdf $(PRESENTATIONNAME).pdf

$(PROJNAME).pdf: $(PROJNAME).tex
	latexmk -pdf -synctex=1 -verbose -interaction=nonstopmode -file-line-error -output-directory=$(BUILDDIR) $<	

$(PRESENTATIONNAME).pdf: $(PRESENTATIONNAME).tex
	latexmk -pdf -synctex=1 -verbose -interaction=nonstopmode -file-line-error -output-directory=$(BUILDDIR) $<

clean:
	latexmk -output-directory=$(BUILDDIR) -c && rm -rf build/*
