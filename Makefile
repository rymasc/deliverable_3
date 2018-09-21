# Builds latex files
TEX = pdflatex
BIB = bibtex

all: main.pdf

main.pdf: main.tex
	$(TEX) main.tex
	$(BIB) main.aux
	$(TEX) main.tex


view : main.pdf
	open main.pdf

clean :
	rm *.out *.log *.aux *.pdf
