% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mvmr_format.R
\name{mvmr_format}
\alias{mvmr_format}
\title{Organises the summary level data for use in the Bayesian MR functions}
\usage{
mvmr_format(rsid, xbeta, ybeta, xse, yse)
}
\arguments{
\item{rsid}{A vector of genetic variants used for analysis, if unspecified a vector is automatically generated.}

\item{xbeta}{A matrix of multiple instrument-phenotypes associations.}

\item{ybeta}{A numeric vector of the instrument-outcome associations.}

\item{xse}{The matrix for corresponding standard errors of the instrument-phenotypes associations \code{xbeta}.}

\item{yse}{The standard errors of the instrument-outcome associations \code{ybeta}.}
}
\value{
A formatted data frame for analysis of class \code{mvmr_format}.
}
\description{
Organises the summary level data for use in the Bayesian MR functions
}
\examples{
data(dodata)
dat <- mvmr_format(
  rsid = dodata$rsid,
  xbeta = cbind(dodata$ldlcbeta,dodata$hdlcbeta,dodata$tgbeta),
  ybeta = dodata$chdbeta,
  xse = cbind(dodata$ldlcse,dodata$hdlcse,dodata$tgse),
  yse = dodata$chdse
)
class(dat)
}
