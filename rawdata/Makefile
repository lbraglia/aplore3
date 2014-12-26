R = R CMD BATCH --no-timing --quiet --vanilla

%.Rout : %.R
	${R} $<

all: *.Rout

aps.Rout: aps.R
burn.Rout: burn.R
chdage.Rout: chdage.R
glow.Rout: glow.R
icu.Rout: icu.R
lowbwt.Rout: lowbwt.R
myopia.Rout: myopia.R
nhanes.Rout: nhanes.R
polypharm.Rout: polypharm.R
scale.Rout: scale.R


