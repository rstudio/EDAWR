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
#' \item{wind}{Maximum wind speed measured for each hurricane (in miles per hour).}
#' \item{pressure}{Air pressure in the storm's center (in millibars).}
#' \item{date}{Date maximum wind speed was observed.}
#' }
#'
#' @source \url{http://www.nhc.noaa.gov/}
#'
"storms"

#' TB cases in USA, Germany, and France
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
"cases"


#' TB data
#'
#' A subset of data from the World Health Organization Global 
#' Tuberculosis Report.
#'
#' @format A dataset with the variables
#' \describe{
#' \item{country}{}
#' \item{year}{}
#' \item{sex}{}
#' \item{child}{Number of new cases reported among people 0 - 14 years of age.}
#' \item{adult}{Number of new cases reported among people 15 - 64 years of age.}
#' \item{elderly}{Number of new cases reported among people over 64 years of age.}
#' }
#' 
#' @source \url{http://www.who.int/tb/country/data/download/en/}
#'
"tb"

#' World Health Organization TB data
#'
#' A subset of data from the World Health Organization Global 
#' Tuberculosis Report.
#'
#' @format A dataset with the variables
#' \describe{
#' \item{country}{}
#' \item{iso2}{Two letter International Organization for Standardization (ISO) country code}
#' \item{iso3}{Three letter International Organization for Standardization (ISO) country code}
#' \item{new_sp_m014 - new_rel_f65}{Counts of new TB cases recorded by group. Column names encode three variables that describe the group (see details).}
#' }
#' 
#' @details The data uses the original codes given by the World Health Organization. The column names for columns five through 60 are made by combining \code{new_} to a code for method of diagnosis (\code{rel} = relapse, \code{sn} = negative pulmonary smear, \code{sp} = positive pulmonary smear, \code{ep} = extrapulmonary) to a code for gender (\code{f} = female, \code{m} = male) to a code for age group (\code{014} = 0-14 yrs of age, \code{1524} = 15-24 years of age, \code{2534} = 25 to 34 years of age, \code{3544} = 35 to 44 years of age, \code{4554} = 45 to 54 years of age, \code{5564} = 55 to 64 years of age, \code{65} = 65 years of age or older). 
#' 
#' @source \url{http://www.who.int/tb/country/data/download/en/}
#'
"who"


#' TB rates
#'
#' A subset of data from the World Health Organization Global 
#' Tuberculosis Report, manipulated to show TB rates by country by year.
#'
#' @format A dataset with the variables
#' \describe{
#' \item{country}{}
#' \item{year}{}
#' \item{cases}{Number of new cases of TB reported}
#' \item{population}{}
#' \item{rate}{Number of new cases of TB reported per 10,000 people.}
#' }
#' 
#' @source \url{http://www.who.int/tb/country/data/download/en/}
#'
"rates"

#' Raw TB data
#'
#' A subset of the data in the \code{\link{tb}} data set. The data displays each individual TB case from Afghanistan, Algeria, Angola, Argentina, Azerbaijan, Belarus, Benin, Botswana, and Burundi in its own row.
#'
#' @format A dataset with the variables
#' \describe{
#' \item{country}{}
#' \item{year}{}
#' \item{sex}{}
#' \item{age}{One of \code{child} (0 - 14 years of age), \code{adult} (15 - 64 years of age), or \code{elderly} (over 64 years of age).}
#' \item{n}{Number of cases: in this layout, one.}
#' }
#' 
#' @source \url{http://www.who.int/tb/country/data/download/en/}
#'
"rawtb"

#' Toy TB data
#'
#' A toy data set based on the \code{\link{tb}} data set. The data displays an imaginary number of TB cases grouped by country, year, and sex.
#'
#' @format A data frame with the columns
#' \describe{
#' \item{country}{}
#' \item{year}{}
#' \item{sex}{}
#' \item{cases}
#' }
#' 
"toyb"


#' Population data
#'
#' Populations of 100 countries for 1995-2013 laid out in table format
#'
#' 
#' @source \url{http://www.who.int/tb/country/data/download/en/}
#'
"population"

#' Population data
#'
#' Populations of 100 countries for 1995-2013 laid out in tidy format
#'
#' 
#' @source \url{http://www.who.int/tb/country/data/download/en/}
#'
"tidypop"


#' Names of musicians
#'
#' A simple data set of musicians and the instruments they played.
#'
"artists"

#' Names of musicians
#'
#' A second simple data set of musicians and the instruments they played.
#'
"artists2"

#' Names of songs
#'
#' A simple list of pop songs and their authors
#'
"songs"

#' Names of songs
#'
#' A second simple list of pop songs and their authors
#'
"songs2"

#' Toy data
#'
#' Meaningless numbers and letters.
#'
"y"

#' Toy data
#'
#' Meaningless numbers and letters.
#'
"z"

#' Toy data
#'
#' Meaningless numbers and letters.
#'
"a"

#' Toy data
#'
#' Meaningless numbers and letters.
#'
"b"


#' Toy data
#'
#' A data set that has a tricky set of missing values to work with.
#'
"nas"