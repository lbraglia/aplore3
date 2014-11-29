#' CHDAGE data
#' 
#' chdage dataset.
#' 
#' @format A data frame with 100 rows and 3 variables:
#' \describe{
#'    \item{id}{Identification code}
#'    \item{age}{Age (years)}
#'    \item{agegrp}{Age group}
#'    \item{chd}{Presence of CHD}
#' }
#' @examples
#' ## Table 1.1
#' chdage
#'
#' ## Figure 1.1
#' plot(as.integer(chd)-1 ~ age,
#'      pch = 20,
#'      ylab = "Coronary heart disease",
#'      xlab = "Age (years)",
#'      data = chdage,
#'      main = "Figure 1.1")
#'
#' ## Table 1.2
#' with(chdage, addmargins(table(agegrp)))
#' with(chdage, addmargins(table(agegrp, chd)))
#' (Means <- with(chdage, tapply(as.integer(chd)-1, list(agegrp), mean)))
#' 
#' ## Figure 1.2
#' midPoints <- c(24.5, seq(32, 57, 5), 64.5)
#' plot(midPoints, Means, pch = 20,
#'      ylab = "Coronary heart disease (mean)",
#'      xlab = "Age (years)", ylim = 0:1,
#'      main = "Figure 1.2")
#' lines(midPoints, Means)
#' 
#' ## Table 1.3
#' summary( glm( chd ~ age, family = binomial, data = chdage ))
"chdage"
