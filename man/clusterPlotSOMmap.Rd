% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/1006-clusterPlotSOMmap.R
\name{clusterPlotSOMmap}
\alias{clusterPlotSOMmap}
\title{Plot self-organising map}
\usage{
clusterPlotSOMmap(x, index = NULL, main = NULL, label = NULL, pchs = 46,
  bgcol = NULL, cols = "red", lwds = 2, keepMargins = FALSE, ...)
}
\arguments{
\item{x}{Kohonen object.}

\item{index}{The location of the user's objective data}

\item{main}{Title of the plot.}

\item{label}{Labels to plot.}

\item{pchs}{Symbols to plot.}

\item{bgcol}{Optional argument to colour the unit backgrounds for the "mapping" and
             "codes" plotting type. Defaults to "gray" and "transparent" in both types,
             respectively.}

\item{cols}{A specification for the default number color.}

\item{lwds}{The number width, a positive number, defaulting to 1.}

\item{keepMargins}{If \code{FALSE} (the default), restore the original graphical
                   parameters after plotting the kohonen map. If \code{TRUE}, one retains
                   the map coordinate system so that one can add symbols to the plot, or
                   map unit numbers using the \code{identify} function.}

\item{...}{other graphical parameters.}
}
\value{
plot mapping
}
\description{
Plot self-organising map
}
\details{
Plot self-organising map, obtained from function kohonen. shows where objects
are mapped. It needs the \code{classif} argument, and a \code{labels} or
\code{pchs} argument.
}
\examples{
data(som.bcl)

clusterPlotSOMmap(som.bcl, pchs = 1)
idx = unique(som.bcl$unit.classif[1:80])
bgcols <- c("gray", "lightgreen")
index = rep(1, 5 * 5)
index[idx]  = 2
bgcol = bgcols[as.integer(index)]
label = c()
for (i in 1:length(idx)) {
  label[i] = length(which(som.bcl$unit.classif[1:80] == idx[i]))
  }

clusterPlotSOMmap(som.bcl, index = idx, label = label, bgcol = bgcol)
}
\author{
Min-feng Zhu <\email{wind2zhu@163.com}>,
}
\keyword{clusterPlotSOMmap}

