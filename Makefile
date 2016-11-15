

open: main.pdf
	open $<

main.pdf: main.tex references.bib
	pdflatex $<
	bibtex main
	pdflatex $<
	pdflatex $<

clean:
	rm *.toc *.log *.blg *.out *.pdf *.aux *.nav *.vrb *.snm *~

.SECONDARY:
