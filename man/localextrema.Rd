\name{localextrema}
\alias{localextrema}
\title{Finding Local Extrema and Zero-crossings}
\description{
This function identifies local extrema and zero-crossings.
}
\usage{
localextrema(y)
}
\arguments{
\item{y}{vector of input signal.}
}
\details{
This function identifies local extrema and zero-crossings.
}
\value{ 
\item{minindex}{matrix of time index at which local minima are attained. 
Each row specifies a starting and ending time index of a local minimum.}
\item{maxindex}{matrix of time index at which local maxima are attained. 
Each row specifies a starting and ending time index of a local maximum.}
\item{nextreme}{the number of extrema.} 
\item{cross}{matrix of time index of zero-crossings. 
Each row specifies a starting and ending time index of zero-crossings.} 
\item{ncross}{the number of zero-crossings.} 
}
\seealso{
\code{\link{eptransf}}, \code{\link{eptdecomp}}.
}
\examples{
y <- c(0, 1, 2, 1, -1, 1:4, 5, 6, 0, -4, -6, -5:5, -2:2)
#y <- c(0, 0, 0, 1, -1, 1:4, 4, 4, 0, 0, 0, -5:5, -2:2, 2, 2)
#y <- c(0, 0, 0, 1, -1, 1:4, 4, 4, 0, 0, 0, -5:5, -2:2, 0, 0)

plot(y, type = "b"); abline(h = 0)
localextrema(y)

findextrema <- localextrema(y)
points(findextrema$maxindex, y[findextrema$maxindex], pch=16, col="red")
points(findextrema$minindex, y[findextrema$minindex], pch=16, col="blue")
}
\keyword{nonparametric}
