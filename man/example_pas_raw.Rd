% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\encoding{UTF-8}
\name{example_pas_raw}
\alias{example_pas_raw}
\title{Example raw Purple Air Synoptic dataset}
\format{
A tibble with 1523 rows and 45 columns of data.
}
\source{
https://www2.purpleair.com
}
\usage{
example_pas_raw
}
\description{
The \code{example_pas_raw} dataset provides a quickly loadable
version of raw Purple Air synoptic data for practicing and code
examples. This dataset contains data for sensors in Washington and Oregon
and was generated on 2022-05-03 by running:

\preformatted{
library(AirSensor2)

initializeMazamaSpatialUtils()

example_pas_raw <-
  pas_downloadParseRawData(
    API_READ_KEY,
    maxAge = 3600 * 24,
    outsideOnly = TRUE,
    west = -125,
    east = -117,
    south = 42,
    north = 49
  )

save(example_pas_raw, file = "data/example_pas_raw.rda")
}

This dataset can be converted into a standard \emph{pas} object with:

\preformatted{
pas <- pas_enhanceData(example_pas_raw)
}
}
\seealso{
example_pas
}
\keyword{datasets}
