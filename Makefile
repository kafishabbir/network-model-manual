all:
	pdflatex -output-directory=output network-model-manual
	mv output/network-model-manual.pdf network-model-manual.pdf
	biber output/network-model-manual
	pdflatex -output-directory=output network-model-manual
	clear
	pdflatex -output-directory=output network-model-manual
	mv output/network-model-manual.pdf network-model-manual.pdf
	
edit:
	geany -i \
	network-model-manual.tex \
	src/chapter01.tex \
	src/chapter02.tex \
	src/chapter03.tex \
	src/chapter04.tex \
	src/chapter05.tex \
	src/chapter06.tex \
	src/chapter07.tex \
	src/chapter08.tex

push:
	git add .
	git commit -m "upload"
	git push
	
