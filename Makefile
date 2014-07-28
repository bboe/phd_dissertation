pdf:
	touch dissertation.tex
	rubber -pd dissertation.tex

short:
	rubber -pd short.tex

clean:
	rubber --clean -pd dissertation.tex

cleanshort:
	rubber --clean -pd short.tex