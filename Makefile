all: resume, projects

resume: resume.tex
	pdflatex resume.tex
	mv resume.pdf 'Andy Choens - Resume.pdf'
	pandoc -o 'Andy Choens - Resume.md' resume.tex

projects: projects.tex
	pdflatex projects.tex
	mv projects.pdf 'Andy Choens - Example Projects.pdf'
	pandoc -o 'Andy Choens - Example Projects.md' projects.tex
