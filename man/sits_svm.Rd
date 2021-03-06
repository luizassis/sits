% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sits_machine_learning.R
\name{sits_svm}
\alias{sits_svm}
\title{Train SITS classifier with a Support Vector Machine}
\usage{
sits_svm(distances.tb = NULL, formula = sits_formula_logref(),
  kernel = "linear", degree = 3, coef0 = 0, cost = 1,
  tolerance = 0.001, epsilon = 0.1, ...)
}
\arguments{
\item{distances.tb}{a time series with a set of distance measures for each training sample}

\item{formula}{a symbolic description of the model to be fit. SITS offers a set of such formulas (default: sits_svm)}

\item{kernel}{the kernel used in training and predicting (options = linear, polynomial, radial basis, sigmoid)}

\item{degree}{exponential of polynomial type kernel}

\item{coef0}{parameter needed for kernels of type polynomial and sigmoid (default: 0)}

\item{cost}{cost of constraints violation}

\item{tolerance}{tolerance of termination criterion (default: 0.001)}

\item{epsilon}{epsilon in the insensitive-loss function (default: 0.1)}

\item{...}{other parameters to be passed to e1071::svm function}
}
\value{
result          either an model function to be passed in sits_predict or an function prepared that can be called further to compute multinom training model
}
\description{
This function receives a tibble with a set of attributes X for each observation Y
These attributes are usually distance metrics between patterns and observations
This function is a front-end to the "svm" method in the "e1071" package.
Please refer to the documentation in that package for more details.
}
\author{
Alexandre Xavier Ywata de Carvalho, \email{alexandre.ywata@ipea.gov.br}

Rolf Simoes, \email{rolf.simoes@inpe.br}
}
