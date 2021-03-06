% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Simulations-class.R
\docType{class}
\name{PseudoSimulations-class}
\alias{PseudoSimulations-class}
\alias{.PseudoSimulations}
\title{This is a class which captures the trial simulations from designs using 
pseudo model. The design for DLE only responses and model from \code{\linkS4class{ModelTox}}
class object. It contains all slots from \code{\linkS4class{GeneralSimulations}} object.
Additional slots fit and stopReasons compared to the general class 
\code{\linkS4class{GeneralSimulations}}.}
\description{
This is a class which captures the trial simulations from designs using 
pseudo model. The design for DLE only responses and model from \code{\linkS4class{ModelTox}}
class object. It contains all slots from \code{\linkS4class{GeneralSimulations}} object.
Additional slots fit and stopReasons compared to the general class 
\code{\linkS4class{GeneralSimulations}}.
}
\section{Slots}{

\describe{
\item{\code{fit}}{list of the final values. If samples are involved, these are the final fitted values.
If no samples are involved, these are included the final modal estimates of the model parameters
and the posterior estimates of the probabilities of the occurrence of a DLE.}

\item{\code{FinalTDtargetDuringTrialEstimates}}{the vector of all final estimates (the last estimate of) the TDtargetDuringTrial at the end 
of each simultaions/when each trial stops}

\item{\code{FinalTDtargetEndOfTrialEstimates}}{vector of all final estimates or the last estimate of the TDtargetEndOfTrial when each trial 
stops}

\item{\code{FinalTDtargetDuringTrialAtDoseGrid}}{vector of the dose levels at dose grid closest below the final TDtargetDuringTrial estimates}

\item{\code{FinalTDtargetEndOfTrialAtDoseGrid}}{vector of  the dose levels at dose grid closest below the final TDtargetEndOfTrial estimates}

\item{\code{FinalTDEOTCIs}}{is the list of all 95\% credibility interval of the final estimates of the TDtargetEndOfTrial}

\item{\code{FinalTDEOTRatios}}{is the vector of the ratios of the CI, the raatio of the upper to the lower 95\% credibility intervals 
of the final estimates of the TDtargetEndOfTrial}

\item{\code{FinalCIs}}{list of all the final 95\% credibility intervals of the TDtargetEndofTrial estimates or of the final optimal dose 
estimates when DLE and efficacy responses are incorporated after each simulations}

\item{\code{FinalRatios}}{vector of all the final ratios, the ratios of the upper to the lower 95\% credibility interval of the 
final estimates of the TDtargetEndOfTrial or of the final optimal dose estiamtes (when DLE and efficacy responses are
incorporated) after each simulations}

\item{\code{stopReasons}}{todo: add slot description}
}}

\keyword{class}
