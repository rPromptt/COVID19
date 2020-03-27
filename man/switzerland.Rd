% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/switzerland.R
\name{switzerland}
\alias{switzerland}
\title{Coronavirus COVID-19 Data - Switzerland}
\usage{
switzerland(type = "state")
}
\arguments{
\item{type}{one of \code{country} (data by country) or \code{state} (data by canton). Default \code{state}, data by canton.}
}
\value{
Tidy format \code{tibble} (\code{data.frame}) grouped by id:
\describe{
 \item{id}{id in the form "country|state|city".}
 \item{date}{date.}
 \item{country}{administrative area level 1.}
 \item{state}{administrative area level 2.}
 \item{city}{administrative area level 3.}
 \item{lat}{latitude.}
 \item{lng}{longitude.}
 \item{deaths}{the number of deaths.}
 \item{confirmed}{the number of cases.}
 \item{tests}{the number of tests.}
 \item{deaths_new}{daily increase in the number of deaths.}
 \item{confirmed_new}{daily increase in the number of cases.}
 \item{tests_new}{daily increase in the number of tests.}
 \item{pop}{total population.}
 \item{pop_14}{population ages 0-19 (\% of total population).}
 \item{pop_15_64}{population ages 20-64 (\% of total population).}
 \item{pop_65}{population ages 65+ (\% of total population).}
 \item{pop_age}{median age of population.}
 \item{pop_density}{population density per km2.}
 \item{pop_death_rate}{population mortality rate.}
}
}
\description{
Tidy format dataset of the 2019 Novel Coronavirus COVID-19 (2019-nCoV) epidemic.
Swiss data by country or state (cantons).
The data are downloaded in real-time, processed and merged with demographic indicators (\code{\link{CH}}).
}
\details{
Data pulled from the \href{https://github.com/daenuprobst/covid19-cases-switzerland}{repository}
collecting the data published on the cantonal websites.
}
\examples{
# data by country
x <- switzerland("country")

# data by canton
x <- switzerland("state")

}
\seealso{
\code{\link{world}}, \code{\link{diamond}}, \code{\link{italy}}
}