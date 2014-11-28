#' CHDAGE data
#' 
#' chdage dataset.
#' 
#' @format A data frame with 100 rows and 3 variables:
#' \describe{
#'    \item{id}{Identification code}
#'    \item{age}{Years}
#'    \item{chd}{Presence of CHD}
#' }
#' @examples
#' summary( glm( chd ~ age, family = binomial, data = chdage ))
"chdage"
