report.pdf: report.tex report-template.cls references.bib figures/*
	make force

force:
	pdflatex -shell-escape report.tex
	bibtex report.aux
	pdflatex -shell-escape report.tex
	pdflatex -shell-escape report.tex

clean:
	rm -f *.pdf
	rm -f *.aux
	rm -f *.bbl
	rm -f *.log
	rm -f *.blg
	rm -f *.bcf
	rm -f *.xml
	rm -f *~
	rm -f *.bak
	rm -f *.out
	rm -f *.fdb_latexmk
	rm -f *.fls
	rm -f *.synctex.gz
