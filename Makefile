resume: resume.tex
	# pandoc -o resume.tex 'Andy Choens - Resume.md'
	lualatex resume.tex
	mv resume.pdf 'Andy Choens - Resume.pdf'

clean:
	rm -f *.aux *.cls *.log  *.out
