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
#' ## Table 1.3
#' summary( glm( chd ~ age, family = binomial, data = chdage ))
"chdage"
