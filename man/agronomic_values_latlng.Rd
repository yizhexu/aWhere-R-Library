% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/agronomic-values.R
\name{agronomic_values_latlng}
\alias{agronomic_values_latlng}
\title{agronomic_values_latlng.}
\usage{
agronomic_values_latlng(latitude, longitude, day_start = ymd(Sys.Date()) -
  days(1), day_end = "", accumulation_start_date = "",
  gdd_method = "standard", gdd_base_temp = "10", gdd_min_boundary = "10",
  gdd_max_boundary = "30")
}
\arguments{
\item{-}{latitude: the latitude of the requested location}

\item{-}{longitude: the longitude of the requested locations}

\item{-}{day_start: character string of start date in form: YYYY-MM-DD
Defaults to system date -1 if left blank}

\item{-}{day_end: character string of end date in form: YYYY-MM-DD
If Not included will return data only for start date}

\item{-}{accumulation_start_date: If you want to start counting accumulations from
before the specified start date (or before the
planting date if using the most recent Planting),
use this parameter to specify the date from which
you wish to start counting. The daily values object
will still only return the days between the start
and end date. This date must come before the start date.}

\item{-}{gdd_method: There are variety of equations available for calculating growing degree-days.
Valid entries are: 'standard', 'modifiedstandard', 'min-temp-cap', 'min-temp-constant'
See the API documentation for a description of each method.  The standard
method will be used if none is specified}

\item{-}{gdd_base_temp: The base temp to use for the any of the GDD equations. The default value of 10 will
be used if none is specified}

\item{-}{gdd_min_boundary: The minimum boundary to use in the selected GDD equation.
The behavior of this value is different depending on the equation you're using
The default value of 10 will be used if none is specified}

\item{-}{gdd_max_boundary: The max boundary to use in the selected GDD equation. The
behavior of this value is different depending on the equation you're using.
The default value of 30 will be used if none is specified}
}
\value{
data.table of requested data for dates requested
}
\description{
\code{agronomic_values_latlng} calls Agronomic Values and Accumulations by Geolocation Endpoint of API using Lat/Lon
}
\details{
Agronomic Values are calculated numbers that can be used to show the agronomic status of a field or crop.
These figures can be used, for example, to track and predict plant growth or identify water stress.
Accumulated values allow growers to easily identify how the weather has been over the season.
Both sets of data are commonly used on small and large farms alike.  This is a very flexible API
that supports a wide variety of configurations to get exactly the data you want as efficiently as
possible. This function used the Lat/Lon construct to request data.  This function returns GDDs, Pet,
P/Pet, accumulated GDD, accumulated Precipitation, accumulated Pet, accumulated P/Pet.  Returns data
in API default units (metric)
}
\examples{
\dontrun{agronomic_values_latlng('39.8282', '-98.5795','2015-07-01','2015-07-31','','standard','10','10','30')}
}
\references{
http://developer.awhere.com/api/reference/agronomics/values/geolocation
}

