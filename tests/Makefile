R = R CMD BATCH --no-timing --quiet --vanilla

all: test clean
	mv aps.Rout aps.Rout.save
	mv burn.Rout burn.Rout.save
	mv chdage.Rout chdage.Rout.save
	mv glow.Rout glow.Rout.save
	mv lowbwt.Rout lowbwt.Rout.save

test:
	${R} aps.R
	${R} burn.R
	${R} chdage.R
	${R} glow.R
	${R} lowbwt.R

clean:
	rm -rf *.pdf
