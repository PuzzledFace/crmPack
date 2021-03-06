% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Model-class.R
\name{ProbitLogNormal}
\alias{ProbitLogNormal}
\title{Initialization function for the "ProbitLogNormal" class}
\usage{
ProbitLogNormal(mu, Sigma, refDose = 1, useLogDose = FALSE)
}
\arguments{
\item{mu}{the prior mean vector}

\item{Sigma}{the prior covariance matrix}

\item{refDose}{the reference dose \eqn{x^{*}}, default 1 (no standardization)}

\item{useLogDose}{should the log of (standardized) dose be used? (not default)}
}
\value{
the \code{\linkS4class{ProbitLogNormal}} object
}
\description{
Initialization function for the "ProbitLogNormal" class
}
\keyword{methods}
