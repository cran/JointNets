% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_brain.R
\name{plot_brain.diffee}
\alias{plot_brain.diffee}
\title{plot 3d brain network from diffee result}
\usage{
\method{plot_brain}{diffee}(x, type = "task", neighbouroption = "task",
  subID = NULL, index = NULL, hastitle = TRUE, haslegend = TRUE,
  hasbackground = TRUE, ...)
}
\arguments{
\item{x}{output generated from diffee function (diffee class)}

\item{type}{type of graph. There are two options:
\itemize{
\item "task" (difference graph)
\item "neighbour" (zoom into nodes in the difference graph specified further by parameter
\strong{"index"} (node id)
}}

\item{neighbouroption}{not used}

\item{subID}{not used}

\item{index}{determines which node(s) to zoom into when parameter \strong{"type"} is \strong{"neighbour"}.
This parameter could either be an integer or vector of integers representing node ids}

\item{hastitle}{determines whether the graph title is displayed or not (TRUE to display / FALSE to hide)}

\item{haslegend}{not used}

\item{hasbackground}{determines whether the reference brain is plotted or not (TRUE to display / FALSE to hide)}

\item{...}{extra parameters passed to igraph::rglplot()}
}
\value{
3d (rgl) brain network
}
\description{
This function plots 3d brain network from diffee result
}
\details{
The function plots brain network using \code{\link{rglplot.igraph}}
}
\examples{
library(JointNets)
graphics.off()
par(ask=FALSE)
par(mfrow=c(1,1))
data(ABIDE_aal116_timeseries)
data(aal116coordinates)
layout = cbind(aal116coordinates$x.mni + 90,
aal116coordinates$y.mni+126, aal116coordinates$z.mni+72)
result = simulation(p=116, s = 0.001, ss = 0.001, n = c(1,1))$simulatedgraphs
class(result) = "simule"
plot_brain(result, type = "task", neighbouroption = "task",
subID = NULL, index = NULL, layout = layout, hasbackground = FALSE)
\donttest{
result = diffee(ABIDE_aal116_timeseries[[1]],
ABIDE_aal116_timeseries[[2]], 0.001)
plot_brain(result, type = "task", neighbouroption = "task",
subID = NULL, index = NULL, layout = layout)
}
}
\author{
Zhaoyang Wang (Author), Zhaoyang Wang (maintainer) \email{zw4dn@virginia.edu}
}
