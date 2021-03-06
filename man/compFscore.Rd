% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compFscore.R
\name{compFscore}
\alias{compFscore}
\title{F score computation}
\usage{
compFscore(geno.df, tre.mt, svQTL = FALSE, asympt = TRUE, res = FALSE)
}
\arguments{
\item{geno.df}{a data.frame of one row with the genotype information for each sample.}

\item{tre.mt}{a matrix with the transcript relative expression (samples x transcripts).}

\item{svQTL}{should svQTL test be performed in addition to sQTL. Default is \code{FALSE}.}

\item{asympt}{should significance for the F score (sQTL test) be computed using 
the \code{\link[CompQuadForm]{davies}} method in the \code{CompQuadForm} package. 
Default is \code{TRUE}.}

\item{res}{is \code{tre.mt} the residual of the regression of additional covariates. Default is \code{FALSE}}
}
\value{
A data.frame with columns:
\item{F}{the F score.}
\item{nb.groups}{the number of genotype groups.}
\item{md}{the maximum difference in splicing ratios between genotype groups.}
\item{tr.first, tr.second}{the two transcripts that change the most.}
\item{info}{comma separated list with the number of individuals per genotype group: -1,0,1,2.}
\item{pv}{if \code{asympt} is \code{TRUE} a P-value for the F score is computed.}
}
\description{
Compute the F score, max diff ratio difference and transcripts that change the most.
Additionally, it can compute a P-value to assess the significance of the F score.
}
\author{
Diego Garrido-Martín, Jean Monlong
}
\keyword{internal}
