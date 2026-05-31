MAIN := main
LATEXMK := latexmk
LATEXMK_FLAGS := -pdf -interaction=nonstopmode -halt-on-error

.PHONY: all pdf watch clean cleanall

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
