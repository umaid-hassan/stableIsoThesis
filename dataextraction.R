library(ncdf4)
library(ncdump)
library(sf)
library(tidyverse)


uv = nc_open("../data/NUDGING_ERA5_T127L95_v1.2_echam6.aprt.20000101-20031231.daymean.nc")

## spatial components
lon = ncvar_get(uv, "lon")
lat = ncvar_get(uv, "lat")
## temporal component
time = ncvar_get(uv, "time")
prec = ncvar_get(uv, "aprt")


time_d <- as.Date(time, format="%j", origin=as.Date("2000-01-01"))
time_years <- format(time_d, "%Y")
time_months <- format(time_d, "%m")
time_year_months <- format(time_d, "%Y-%m")

head(time_d)
dim(prec)

head(prec[,,2])


