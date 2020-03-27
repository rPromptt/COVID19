#' Coronavirus COVID-19 Data - Diamond Princess
#'
#' Tidy format dataset of the 2019 Novel Coronavirus COVID-19 (2019-nCoV) epidemic.
#' Diamond Princess data.
#' The data are downloaded in real-time.
#'
#' @seealso \code{\link{world}}, \code{\link{italy}}, \code{\link{switzerland}}
#'
#' @details
#' Data pulled from the repository for the 2019 Novel Coronavirus
#' Visual Dashboard operated by the Johns Hopkins University Center for Systems
#' Science and Engineering (JHU CSSE). Also, Supported by ESRI Living Atlas Team
#' and the Johns Hopkins University Applied Physics Lab (JHU APL).
#' The \href{https://github.com/CSSEGISandData/COVID-19}{repository} and its contents herein, including all data, mapping, and analysis,
#' copyright 2020 Johns Hopkins University, all rights reserved, is provided to the
#' public strictly for educational and academic research purposes.
#' The Website relies upon publicly available data from multiple sources,
#' that do not always agree. The Johns Hopkins University hereby disclaims any and
#' all representations and warranties with respect to the Website, including accuracy,
#' fitness for use, and merchantability. Reliance on the Website for medical guidance or
#' use of the Website in commerce is strictly prohibited. Data Sources:
#' \itemize{
#'  \item \href{https://www.who.int/}{World Health Organization (WHO)}
#'  \item \href{http://3g.dxy.cn/newh5/view/pneumonia}{DXY.cn. Pneumonia. 2020}
#'  \item \href{https://bnonews.com/index.php/2020/02/the-latest-coronavirus-cases/}{BNO News}
#'  \item \href{http://www.nhc.gov.cn/xcs/yqtb/list_gzbd.shtml}{National Health Commission of the People’s Republic of China (NHC)}
#'  \item \href{http://weekly.chinacdc.cn/news/TrackingtheEpidemic.htm}{China CDC (CCDC)}
#'  \item \href{https://www.chp.gov.hk/en/features/102465.html}{Hong Kong Department of Health}
#'  \item \href{https://www.ssm.gov.mo/portal/}{Macau Government}
#'  \item \href{https://sites.google.com/cdc.gov.tw/2019ncov/taiwan?authuser=0}{Taiwan CDC}
#'  \item \href{https://www.cdc.gov/coronavirus/2019-ncov/index.html}{US CDC}
#'  \item \href{https://www.canada.ca/en/public-health/services/diseases/coronavirus.html}{Government of Canada}
#'  \item \href{https://www.health.gov.au/news/coronavirus-update-at-a-glance}{Australia Government Department of Health}
#'  \item \href{https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases}{European Centre for Disease Prevention and Control (ECDC)}
#'  \item \href{https://www.moh.gov.sg/covid-19}{Ministry of Health Singapore (MOH)}
#'  \item \href{http://www.salute.gov.it/nuovocoronavirus}{Italy Ministry of Health}
#' }
#'
#' @return Tidy format \code{tibble} (\code{data.frame}) grouped by id:
#' \describe{
#'  \item{id}{id in the form "country|state|city".}
#'  \item{date}{date.}
#'  \item{country}{administrative area level 1.}
#'  \item{state}{administrative area level 2.}
#'  \item{city}{administrative area level 3.}
#'  \item{lat}{latitude.}
#'  \item{lng}{longitude.}
#'  \item{deaths}{the number of deaths.}
#'  \item{confirmed}{the number of cases.}
#'  \item{tests}{the number of tests.}
#'  \item{deaths_new}{daily increase in the number of deaths.}
#'  \item{confirmed_new}{daily increase in the number of cases.}
#'  \item{tests_new}{daily increase in the number of tests.}
#'  \item{pop}{total population.}
#'  \item{pop_14}{population ages 0-14 (\% of total population).}
#'  \item{pop_15_64}{population ages 15-64 (\% of total population).}
#'  \item{pop_65}{population ages 65+ (\% of total population).}
#'  \item{pop_age}{median age of population.}
#'  \item{pop_density}{population density per km2.}
#'  \item{pop_death_rate}{population mortality rate.}
#' }
#'
#' @examples
#' x <- diamond()
#'
#' @export
#'
diamond <- function(){

  return(clean(juhcsse(), diamond = TRUE))

}