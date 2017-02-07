all: cover-letters, resume, projects

cover-letters: cover-letters/PRAInc.tex
	lualatex --output-directory=cover-letters cover-letters/PRAInc.tex

resume: resume.tex
	lualatexx resume.tex
	mv resume.pdf 'Andy Choens - Resume.pdf'
	pandoc -o 'Andy Choens - Resume.md' resume.tex

projects: projects.tex
	lualatex projects.tex
	mv projects.pdf 'Andy Choens - Example Projects.pdf'
	pandoc -o 'Andy Choens - Example Projects.md' projects.tex
