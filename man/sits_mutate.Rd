% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sits_table.R
\name{sits_mutate}
\alias{sits_mutate}
\title{Add new SITS bands.}
\usage{
sits_mutate(data.tb, ...)
}
\arguments{
\item{data.tb}{a valid sits table}

\item{...}{Name-value pairs of expressions. Use NULL to drop a variable.}
}
\value{
result.tb    a sits_table with same samples and the new bands
}
\description{
Adds new bands and preserves existing in a sits_table's time series,
using dplyr::mutate function
}
\author{
Rolf Simoes, \email{rolf.simoes@inpe.br}
}
