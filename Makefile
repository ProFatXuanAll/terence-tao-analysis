REQUIRED_PACKAGES := mathtools tocloft fancyhdr xparse import makeidx microtype enumitem dirtytalk listofitems ifthen hyperref chngcntr cleveref
LATEXMK := latexmk
LATEXMK_FLAGS := -pdf -interaction=nonstopmode -halt-on-error

.PHONY: all clean check

all: check main.pdf

main.pdf: main.tex myclass.cls mypackage.sty
	$(LATEXMK) $(LATEXMK_FLAGS) main.tex

clean:
	rm -f *.aux *.log *.out *.toc *.ind *.idx *.ilg *.fls *.fdb_latexmk main.pdf

check:
	@echo "Checking for required LaTeX packages..."
	@missing=0; \
	for pkg in $(REQUIRED_PACKAGES); do \
		if ! kpsewhich $$pkg.sty >/dev/null; then \
			echo "Missing package: $$pkg"; \
			missing=1; \
		fi; \
	done; \
	if [ $$missing -eq 1 ]; then \
		echo "ERROR: Missing required packages. Please install a full TeX distribution (e.g. texlive-full, texlive-science, texlive-latex-extra)."; \
		exit 1; \
	else \
		echo "All dependencies found."; \
	fi
