.PHONY: all clean

all: cbw_resume.pdf

cbw_resume.pdf: cbw_resume.tex
	latexmk -pdf -interaction=nonstopmode -halt-on-error cbw_resume.tex

clean:
	latexmk -C
