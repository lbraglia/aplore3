R = R CMD BATCH --no-timing --quiet --vanilla

all: test
	mv burn.Rout burn.Rout.save
	mv chdage.Rout chdage.Rout.save

test:
	${R} burn.R
	${R} chdage.R
