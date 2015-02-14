\name{Stats}
\alias{tdStats}
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

}
\arguments{
  \item{m}{Numeric, model values}

  \item{o}{Numeric, observation values}

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
A numeric with length equal to the number of functions.
}

\author{
Oscar Perpiñán Lamigueiro
}

\seealso{
  \code{\link{targetDiagram}}
}

\examples{
}
