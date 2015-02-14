\name{targetDiagram}
\alias{targetDiagram}
\alias{tdTheme}

\encoding{UTF-8}

\title{
Target Diagrams
}

\description{
Target diagrams
}

\usage{

targetDiagram(data, class = "",
              xlab = expression("RMSEc" \%.\% "sign(" * sigma^"*" * ")"),
              ylab = "MBE",
              auto.key = list(space = "right"),
              default.scales = list(cex = 0.6),
              scales = list(),
              type = "quantile",
              cuts = seq(0.25, 1, 0.25),
              par.settings = tdTheme(),
              ...)

tdTheme(pch = 21:25,
        col.points = 'black',
        fill = brewer.pal(n= 8, 'Dark2'),
        cex = 1.1,
        ...)
}
\arguments{

  \item{data}{A \code{data.frame} with these columns: nrmse (Root Mean Square Error), nmbe (Mean Bias Error), sdm (Standard Deviation of the model), sdo (Standard Deviation of observations)}

  \item{class}{Character, the name of the variable that defines the panels of a trellis graphic.}
  
  \item{xlab, ylab}{Character or expression, define the axis labels.}

  \item{auto.key, default.scales, scales}{Legend and scales customization. Read the \code{\link{xyplot}} and \code{\link{panel.xyplot}} help pages for details.}
  
  \item{type}{Character, defines the type of cuts between 'quantile' and 'at'.}

  \item{cuts}{Numeric, defines the radius of the RMSE circles. If \code{type = 'quantile'} it defines the probabilities with values between 0 and 1, and the radius are such that the circles are the corresponding quantile. If \code{type = 'at'} \code{cuts} defines the radius of the circles.}

  \item{par.settings}{Definition of graphical parameters using \code{\link{simpleTheme}} or its wrapper \code{tdTheme}}
  
  \item{pch, col.points, fill, cex}{Arguments for \code{\link{simpleTheme}}}
  
  \item{\dots}{Additional arguments for \code{\link{xyplot}}}

}

\details{
The Target Diagram is derived from the relation between the unbiased RMSE, MBE, and RMSE. In a Cartesian coordinate system, the x-axis represents the unbiased RMSE (variance of the error), and the y-axis represents the MBE. Therefore the distance between any point to the origin is equal to the RMSE. Because the unbiased RMSE is always positive, the left area of the coordinate system is empty with this scheme. With additional information this region may be also used: the unbiased RMSE is multiplied by the sign of the difference between the standard deviations of model and observations.

The resulting diagram provides three different measures: whether the model overestimates or underestimates (positive or negative values of the MBE on the y-axis, respectively), whether the model standard deviation is larger or smaller than the standard deviation of the measurements (positive or negative values on the x-axis, respectively), and the error performance as quantified by the RMSE represented as the distance to the coordinates origin. This tool is particularly powerful when comparing competing models.

\code{tdDiagram} uses \code{tdTheme} to define the graphical settings, which is just a wrapper around \code{simpleTheme}.
}

\value{
A trellis object.
}

\references{
  Jolliff, J. K., Kindle, J. C., Shulman, I., Penta, B., Friedrichs, M. A., Helber, R., & Arnone, R. A. (2009). Summary diagrams for coupled hydrodynamic-ecosystem model skill assessment. Journal of Marine Systems, 76(1), 64-82.
}

\author{
Oscar Perpiñán Lamigueiro
}

\seealso{
  \code{\link{xyplot}},
  \code{\link{simpleTheme}},
  \code{\link{tdStats}}
}

\examples{
data(modelEx)

## Compute statistics
errModel <- applyStats(pvModels, pvObs)
## Display results
## Default settings use type = 'quantile'
targetDiagram(errModel, groups = model)
## whose breaks can be defined with 'cuts'
targetDiagram(errModel, groups = model,
              type = 'quantile',
              cuts = seq(0, 1, .1))
## Alternatively, with type = 'at'
## one can define manually the breaks
targetDiagram(errModel, groups = model,
              type = 'at',
              cuts = seq(0, .1, .02))
}
