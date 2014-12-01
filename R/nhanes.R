#' NHANES data
#' 
#' nhanes dataset.
#' 
#' @format A data frame with XXX rows and 21 variables:
#' \describe{
#' \item{id}{Identification Code (1 - 6482)}
#' \item{gender}{Gender (0 = Male, 1 = Female)}
#' \item{age}{Age at Screening (Years)}
#' \item{marstat}{Marital Status (1 = Married, 2 = Widowed, 3 = Divorced,
#' 4= Separated, 5 = Never Married, 6 = Living Together)}
#' \item{samplewt}{Statistical Weight (4084.478 - 153810.3)}
#' \item{psu}{Pseudo-PSU (1, 2)}
#' \item{strata}{Pseudo-Stratum (1 - 15)}
#' \item{tchol}{Total Cholesterol (mg/dL)}
#' \item{hdl}{HDL-Cholesterol (mg/dL)}
#' \item{sysbp}{Systolic Blood Pressure (mm Hg)}
#' \item{dbp}{Diastolic Blood Pressure (mm Hg)}
#' \item{wt}{Weight (kg)}
#' \item{ht}{Standing Height (cm)}
#' \item{bmi}{Body mass Index (Kg/m^2)}
#' \item{vigwrk}{Vigorous Work Activity (0 = Yes, 1 = No)}
#' \item{modwrk}{Moderate Work Activity (0 = Yes, 1 = No)}
#' \item{wlkbik}{Walk or Bicycle (0 = Yes, 1 = No)}
#' \item{vigrecexr}{Vigorous Recreational Activities (0 = Yes, 1 = No)}
#' \item{modrecexr}{Moderate Recreational Activities (0 = Yes, 1 = No)}
#' \item{sedmin}{Minutes of Sedentary Activity per Week (0 = Yes, 1 = No)}
#' \item{obese}{BMI>35 (0 = No, 1 = Yes)}
#' }
#' @examples
#' head(nhanes, n = 10)
#' summary(nhanes)
#'
"nhanes"
