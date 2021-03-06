% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sits_assessment.R
\name{sits_kfold_validate}
\alias{sits_kfold_validate}
\title{Cross-validate temporal patterns}
\usage{
sits_kfold_validate(data.tb, bands = NULL, folds = 5,
  pt_method = sits_gam(bands = bands),
  dist_method = sits_TWDTW_distances(bands = bands), tr_method = sits_svm(),
  multicores = 1)
}
\arguments{
\item{data.tb}{a SITS tibble}

\item{bands}{the bands used for classification}

\item{folds}{number of partitions to create.}

\item{pt_method}{method to create patterns (sits_patterns_gam, sits_dendogram)}

\item{dist_method}{method to compute distances (e.g., sits_TWDTW_distances)}

\item{tr_method}{machine learning training method}

\item{multicores}{number of threads to process the validation (Linux only). Each process will run a whole partition validation.}
}
\value{
conf.tb        a tibble containing pairs of reference and predicted values
}
\description{
Splits the set of time series into training and validation and
perform k-fold cross-validation.
Cross-validation is a model validation technique for assessing how the results
of a statistical analysis will generalize to an independent data set.
It is mainly used in settings where the goal is prediction,
and one wants to estimate how accurately a predictive model will perform in practice.
One round of cross-validation involves partitioning a sample of data
into complementary subsets, performing the analysis on one subset
(called the training set), and validating the analysis on the other subset
(called the validation set or testing set).

The k-fold cross validation method involves splitting the dataset
into k-subsets. For each subset is held out while the model is trained
on all other subsets. This process is completed until accuracy
is determine for each instance in the dataset, and an overall
accuracy estimate is provided.

This function returns the Overall Accuracy, User's Accuracy,
Producer's Accuracy, error matrix (confusion matrix), and Kappa values.
}
\author{
Rolf Simoes, \email{rolf.simoes@inpe.br}

Gilberto Camara, \email{gilberto.camara@inpe.br}
}
