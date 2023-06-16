TEX = pandoc
src = templates/cvtemplate.tex cv.yml 

cv.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< 

.PHONY: clean
clean :
	rm cv.pdf
