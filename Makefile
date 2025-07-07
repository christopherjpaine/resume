CC = xelatex
CV_SRCS = $(shell find cv/src -name '*.tex')

cv.pdf: cv/cv.tex $(CV_SRCS)
	$(CC) -output-directory=cv $<

coverletter.pdf: coverletter/coverletter.tex
	$(CC) -output-directory= $<

clean:
	rm -rf /*.pdf
