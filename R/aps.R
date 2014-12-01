#' APS data
#' 
#' aps dataset.
#' 
#' @format A data frame with XXX rows and 11 variables:
#' \describe{
#' \item{id}{Identification Code}
#' \item{place}{Placement (0 = Outpatient, 1 = Day Treatment, 2 =
#' Intermediate Residential, 3 = Residential)}
#' \item{place3}{Placement Combined (0 = Outpatient or Day Treatment, 1 =
#' Intermediate Residential, 2 = Residential )}
#' \item{age}{Age at Admission (Years)}
#' \item{race}{Race (0 = White, 1 = Non-white)}
#' \item{gender}{Gender (0 = Female, 1 = Male)}
#' \item{neuro}{Neuropsychiatric Disturbance (0 = None, 1 = Mild, 2 =
#' Moderate, 3 = Severe)}
#' \item{emot}{Emotional Disturbance (0 = Not Severe, 1 = Severe) }
#' \item{danger}{Danger to Others (0 = Unlikely, 1 =
#' Possible, 2 = Probable, 3 = Likely)}
#' \item{elope}{Elopement Risk (0 = No Risk, 1 = At Risk)}
#' \item{los}{Length of Hospitalization (Days)}
#' \item{behav}{Behavioral Symptoms Score (0 - 9)}
#' \item{custd}{State Custody (0 = No, 1 = Yes)}
#' \item{viol}{History of Violence (0 = No, 1 = Yes)}
#' }
#' @examples
#' head(aps, n = 10)
#'
"aps"
