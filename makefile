main: main.tex
	latex main.tex;
	dvipdfm main.dvi -o main.pdf
create:
	pdftk main.pdf cat 1SOUTH 3 1SOUTH 3 5SOUTH 5 output ux/intro.pdf;
	pdftk main.pdf cat 7SOUTH 9 11SOUTH 13 15SOUTH 17 19SOUTH 21 23SOUTH 25 27SOUTH 29 31SOUTH 33 35SOUTH 37 39SOUTH 41 43SOUTH 45 47SOUTH output ux/imp.pdf
	pdftk main.pdf cat 8 10SOUTH 12 14SOUTH 16 18SOUTH 20 22SOUTH 24 26SOUTH 28 30SOUTH 32 34SOUTH 36 38SOUTH 40 42SOUTH 44 46SOUTH 48 output ux/par.pdf
	cp main.pdf ux/El_Arte_de_la_Guerra.pdf
	rm main.pdf
clean:
	rm *.toc *.log *.aux *.dvi
