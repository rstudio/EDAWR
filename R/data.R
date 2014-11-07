#' Pollution data
#'
#' Pollution data from the WHO, 2014. This dataset contains
#' a subset of data from the Ambient Air Pollution Database, 
#' WHO, May 2014.
#'
#' @format A data frame with variables:
#' \describe{
#' \item{city}{Name of city: New York, London, or Beijing}
#' \item{Size}{Size of air particulate measured. Fine suspended particles smaller than 10 microns in diameter (\code{large}) and 2.5 microns in diameter (\code{small}).}
#' \item{amount}{The mean annual concentration of particles in milligrams per meter cubed (ug/m3)}
#' }
#'
#' @source \url{http://www.who.int/phe/health_topics/outdoorair/databases/cities/en/}
#'
"pollution"

#' Hurricane data
#'
#' Wind speed data for six hurricanes, collected from 
#' National Hurricane Center's archive of Tropical Cyclone 
#' Reports.
#'
#' @format A data frame with variables:
#' \describe{
#' \item{storm}{Name of hurricane: Alberto, Alex, Allison, Ana, Arlene, Arthur.}
#' \item{max_wind}{Maximum wind speed measured for each hurricane (in miles per hour).}
#' \item{date}{Date maximum wind speed was observed.}
#' }
#'
#' @source \url{http://www.nhc.noaa.gov/}
#'
"storms"

#' TB data
#'
#' A subset of data from the World Health Organization Global 
#' Tuberculosis Report.
#'
#' @format A dataset with the estimated number of TB cases in 
#' France, Germany, and the United States for 2011, 2012, and 
#' 2013. 
#' 
#' @source \url{http://www.who.int/tb/country/data/download/en/}
#'
"tb"

