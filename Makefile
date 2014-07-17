pdf:
	touch dissertation.tex
	rubber -pd dissertation.tex

clean:
	rubber --clean -pd dissertation.tex
