#' APS data
#' 
#' aps dataset.
#' 
#' @format A data.frame with 508 rows and 11 variables:
#' \describe{
#' \item{id}{Identification Code (1 - 508)}
#' \item{place}{Placement (1: Outpatient, 2: Day Treatment, 3:
#' Intermediate Residential, 4: Residential)}
#' \item{place3}{Placement Combined (1: Outpatient or Day Treatment, 2:
#' Intermediate Residential, 3: Residential )}
#' \item{age}{Age at Admission (Years)}
#' \item{race}{Race (1: White, 2: Non-white)}
#' \item{gender}{Gender (1: Female, 2: Male)}
#' \item{neuro}{Neuropsychiatric Disturbance (1: None, 2: Mild, 3:
#' Moderate, 4: Severe)}
#' \item{emot}{Emotional Disturbance (1: Not Severe, 2: Severe) }
#' \item{danger}{Danger to Others (1: Unlikely, 2:
#' Possible, 3: Probable, 4: Likely)}
#' \item{elope}{Elopement Risk (1: No Risk, 2: At Risk)}
#' \item{los}{Length of Hospitalization (Days)}
#' \item{behav}{Behavioral Symptoms Score (0 - 9)}
#' \item{custd}{State Custody (1: No, 2: Yes)}
#' \item{viol}{History of Violence (1: No, 2: Yes)}
#' }
#' @source Hosmer, D.W., Lemeshow, S. and Sturdivant R.X. (2013) Applied
#' Logistic Regression, 3rd ed., New York: Wiley
#' @examples
#' head(aps, n = 10)
#' summary(aps)
"aps"
