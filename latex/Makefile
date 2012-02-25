NAME = NameOfPdf

compile: $(THREADOBJECTS)
	gnome-terminal --full-screen --window-with-profile=Coding -x vim main.tex
	latexmk -pdf -bibtex -jobname=out/$(NAME) -view=pdf -pvc main.tex
clean:
	latexmk -CA
	rm ./out/*
