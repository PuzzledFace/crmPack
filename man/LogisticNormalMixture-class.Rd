% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Model-class.R
\docType{class}
\name{LogisticNormalMixture-class}
\alias{LogisticNormalMixture-class}
\alias{.LogisticNormalMixture}
\title{Standard logistic model with flexible mixture of two bivariate normal priors}
\description{
This is standard logistic regression model with a mixture of two bivariate
normal priors on the intercept and slope parameters. The weight of the two
normal priors is a model parameter, hence it is a flexible mixture.
This type of prior is often used with a mixture of a minimal informative
and an informative component, in order to make the CRM more robust to
data deviations from the informative component.
}
\details{
The covariate is the natural logarithm of the dose \eqn{x} divided by
the reference dose \eqn{x^{*}}:

\deqn{logit[p(x)] = \alpha + \beta \cdot \log(x/x^{*})}
where \eqn{p(x)} is the probability of observing a DLT for a given dose
\eqn{x}.

The prior is
\deqn{(\alpha, \beta) \sim
w * Normal(\mu_{1}, \Sigma_{1}) + (1 - w) * Normal(\mu_{2}, \Sigma_{2})}

The weight w for the first component is assigned a beta prior B(a, b).

The slots of this class comprise two lists, containing the mean vector, the
covariance and precision matrices of the two bivariate normal distributions
each, the parameters of the beta prior for the first component weight, as
well as the reference dose.
}
\section{Slots}{

\describe{
\item{\code{comp1}}{the specifications of the first component: a list with
\code{mean}, \code{cov} and \code{prec} for the first bivariate normal prior}

\item{\code{comp2}}{the specifications of the second component}

\item{\code{weightpar}}{the beta parameters for the weight of the first component}

\item{\code{refDose}}{the reference dose \eqn{x^{*}}}
}}

\examples{

model <- LogisticNormalMixture(comp1 = list(mean = c(-0.85, 1),
                                            cov = matrix(c(1, -0.5, -0.5, 1), 
                                                         nrow = 2)),
                               comp2 = list(mean = c(1, 1.5),
                                            cov = matrix(c(1.2, -0.45, -0.45, 0.6), 
                                                         nrow = 2)),
                               weightpar = c(a=1, b=1),
                               refDose = 50)


}
\keyword{classes}
