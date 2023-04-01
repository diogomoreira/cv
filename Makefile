# Makefile for building cv.pdf from cv.tex using pdflatex

# Set the name of the LaTeX file (without the extension)
NAME=cv

# Set the pdflatex command to use
PDFLATEX=pdflatex

# Set any additional options for pdflatex
PDFLATEX_OPTS=

# Set the name of the output PDF file
PDF=$(NAME).pdf

all: $(PDF)

$(PDF): $(NAME).tex
	$(PDFLATEX) $(PDFLATEX_OPTS) $(NAME).tex
	$(PDFLATEX) $(PDFLATEX_OPTS) $(NAME).tex

clean:
	rm -f $(PDF) *.log *.aux *.out *.toc

.PHONY: all clean
