% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QDA.R
\name{QDA_eval}
\alias{QDA_eval}
\title{graphical model model evaluation using QDA as a classifier}
\usage{
QDA_eval(train, valid, test, lambda_range, v_seeking_length = 10,
  method = "diffee", ...)
}
\arguments{
\item{train}{a list of training data}

\item{valid}{a list of validation data}

\item{test}{a list of test data}

\item{lambda_range}{a vector of lambda values to train to given method, eg c(0.1,0.2,0.3)}

\item{v_seeking_length}{second hyperparameter length, default to 10}

\item{method}{name of the method to be evaluated}

\item{...}{optional parameters passed to your method from JointNets package}
}
\value{
covriance matrix / kendall tau correlation matrix
}
\description{
graphical model model evaluation using QDA as a classifier
}
\examples{
library(JointNets)
data("nip_37_data")
split = train_valid_test_split(nip_37_data,c(0.8,0.1,0.1),10000)
train = split[["train"]]
valid = split[["valid"]]
test = split[["test"]]
v_seeking_length = 2
lambda_range = seq(0.5,1, length.out = 2)
result = QDA_eval(train,valid,test,lambda_range, v_seeking_length, method = "diffee")
result[["best test accuracy"]]
}
