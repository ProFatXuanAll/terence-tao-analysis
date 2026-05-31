MAIN := main
LATEXMK := latexmk
LATEXMK_FLAGS := -pdf -interaction=nonstopmode -halt-on-error
LATEXINDENT := latexindent
# latexindent ships with a tab default; latexindent.yaml forces two spaces.
LATEXINDENT_FLAGS := -w -s -l latexindent.yaml

.PHONY: all pdf watch clean cleanall fmt

all: pdf

pdf:
	$(LATEXMK) $(LATEXMK_FLAGS) $(MAIN).tex

watch:
	$(LATEXMK) $(LATEXMK_FLAGS) -pvc $(MAIN).tex

clean:
	$(LATEXMK) -c $(MAIN).tex
	$(RM) $(MAIN).fdb_latexmk

cleanall:
	$(LATEXMK) -C $(MAIN).tex

fmt:
	find . -name '*.tex' -exec $(LATEXINDENT) $(LATEXINDENT_FLAGS) {} +
	find . -name '*.bak[0-9]*' -delete
