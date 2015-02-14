\name{Stats}
\alias{tdStats}
\alias{applyStats}
\alias{pvObs}
\alias{pvModels}

\encoding{UTF-8}

\title{
Error Statistics
}

\description{
Error Statistics
}

\usage{
tdStats(m, o,
         functions = c("mo", "mm",
                       "sdo", "sdm",
                       "mbe", "mae", "rmse",
                       "nmbe", "cvmbe",
                       "nmae", "cvmae",
                       "nrmse", "cvrmse",
                       "r2", "tStone"))

applyStats(models, o,
           functions = c("mo", "mm",
                         "sdo", "sdm",
                         "mbe", "mae", "rmse",
                         "nmbe", "cvmbe",
                         "nmae", "cvmae",
                         "nrmse", "cvrmse",
                         "r2", "tStone"))

}
\arguments{
  \item{m}{Numeric, vector, model values}

  \item{models}{Numeric, matrix, model values}

  \item{o}{Numeric, vector, observation values}

  \item{functions}{Character, name of functions to compute model
    errors. The package includes definitions for these functions:
    \itemize{

      \item{Mean: \code{mo}, \code{mm}}
      \item{Standard Deviation: \code{sdo}, \code{sdm}}
      \item{Mean Bias Error: \code{mbe}}
      \item{Mean Absolute Error: \code{mae}}
      \item{Root Mean Square Error: \code{rmse}}
      \item{t of Stone: \code{tStone}}
      \item{Coefficient of determination, \eqn{R^2}: \code{r2}}
    }
    There are also functions that normalize the MBE, MAE and RMSE values. \code{nmbe}, \code{nmae}, and \code{nrmse} use the  observation range as factor of normalization, while \code{cvmbe}, \code{cvmae}, and \code{cvrmse}, use the observation average to normalize.}
}

\value{
A \code{data.frame} with a column for each function, and a row for each model.
}

\author{
Oscar Perpiñán Lamigueiro
}

\seealso{
  \code{\link{targetDiagram}}
}

\examples{
data(modelEx)

## Analyze one model
tdStats(pvModels$M01, pvObs)

## Analyze a set of models
applyStats(pvModels, pvObs)
}
