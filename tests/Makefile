R = R CMD BATCH --no-timing --quiet --vanilla

all: test clean
	mv burn.Rout burn.Rout.save
	mv chdage.Rout chdage.Rout.save
	mv glow.Rout glow.Rout.save

test:
	${R} burn.R
	${R} chdage.R
	${R} glow.R

clean:
	rm -rf *.pdf
