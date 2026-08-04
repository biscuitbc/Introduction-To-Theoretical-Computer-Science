.PHONY: all clean

all: lecture-notes.pdf

lecture-notes.pdf: main.tex preamble.tex chapters/chapter01.tex chapters/chapter02.tex
	mkdir -p build/chapters
	latexmk -xelatex -interaction=nonstopmode -halt-on-error -file-line-error -outdir=build main.tex
	cp build/main.pdf lecture-notes.pdf

clean:
	latexmk -C -outdir=build main.tex
	rm -f lecture-notes.pdf
