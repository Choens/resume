build-container: Containerfile
	podman build --tag localhost/resume-image:latest .

run-container: Containerfile
	podman run \
  	--detach \
  	--interactive \
  	--name resume \
  	--publish 8787:8787 \
  	--replace \
  	--tty \
  	-v /home/$USER/Projects/:/root/Projects/ \
  	--security-opt label=disable \
  	resume-image

resume: resume.tex
	# pandoc -o resume.tex 'Andy Choens - Resume.md'
	lualatex resume.tex
	mv resume.pdf 'Andy Choens - Resume.pdf'

clean:
	rm -f *.aux *.cls *.log  *.out
