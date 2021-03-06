% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Rules-class.R
\docType{class}
\name{CohortSizeDLT-class}
\alias{CohortSizeDLT-class}
\alias{.CohortSizeDLT}
\title{Cohort size based on number of DLTs}
\description{
Cohort size based on number of DLTs
}
\section{Slots}{

\describe{
\item{\code{DLTintervals}}{an integer vector with the left bounds of the relevant
DLT intervals}

\item{\code{cohortSize}}{an integer vector of the same length with the cohort
sizes in the \code{DLTintervals}}
}}

\examples{

# As example, here is the rule for: 
#   having cohort of size 1 until no DLT were observed
#   and having cohort of size 3 as soon as 1 DLT is observed

mySize <- CohortSizeDLT(DLTintervals = c(0, 1),
                        cohortSize = c(1, 3))

}
\keyword{classes}
