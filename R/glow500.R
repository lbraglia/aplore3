#' GLOW500 data
#' 
#' glow500 dataset.
#' 
#' @format A data frame with 500 rows and 15 variables:
#' \describe{
#' \item{sub_id}{Identification Code}
#' \item{site_id}{Study Site}
#' \item{phy_id}{Physician ID code}
#' \item{priorfrac}{History of Prior Fracture}
#' \item{age}{Age at Enrollment (Years)}
#' \item{weight}{Weight at enrollment (Kilograms)}
#' \item{height}{Height at enrollment (Centimeters)}
#' \item{bmi}{Body Mass Index (Kg/m^2)}
#' \item{premeno}{Menopause before age 45}
#' \item{momfrac}{Mother had hip fracture}
#' \item{armassist}{Arms are needed to stand from a chair}
#' \item{smoke}{Former or current smoker}
#' \item{raterisk}{Self-reported risk of fracture}
#' \item{fracscore}{Fracture Risk Score (Composite Risk Score)}
#' \item{fracture}{Any fracture in first year}
#' }
#' @examples
#' head(glow500, n = 10)
#'
#' ## Table 2.2
#' summary(glm(fracture ~ age + weight + priorfrac + premeno + raterisk,
#'             family = binomial,
#'             data = glow500))
"glow500"
