.PHONY: main clean FORCE

main: poster.pdf

poster.pdf: FORCE
	latexmk -lualatex -interaction=nonstopmode -halt-on-error poster.tex

clean:
	latexmk -pdf -C
