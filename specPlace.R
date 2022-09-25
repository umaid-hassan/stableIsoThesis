library(ncdf4)
precip <- nc_open("../data/NUDGING_ERA5_T127L95_v1.2_echam6.wisoq18o_d.20000101-20031231.daymean.nc")
print(precip) # check that dims are lon-lat-time

finda = precip$dim$lon$vals
findb = precip$dim$lat$vals

latlon <- data.frame(Latitude= findb, longitude = finda)
head(latlon)
# location of interest
lon <- 16.363449  # longitude of location
lat <- 48.210033 # latitude  of location


clon= finda[which(abs(precip$dim$lon$vals-lon)==min(abs(precip$dim$lon$vals-lon)))]
clat= findb[which(abs(precip$dim$lat$vals-lat)==min(abs(precip$dim$lat$vals-lat)))]
# clon = which.min(abs(precip$dim$lon$vals - lon))
# clat = which.min(abs(precip$dim$lat$vals - lat))

# get dates
precipdatadates <- as.Date(precip$dim$time$vals, origin = '2000-01-01')

# get values at location lonlat
obsoutput <- ncvar_get(precip, varid = 'wisoqhdo_d',
                       start= c(clon, clat,1),
                       count = c(1,1,-1)) #count '-1' means 'all values along that dimension'that dimension'
# create dataframe
datafinal <- data.frame(date= precipdatadates, dofhhumidity = obsoutput, lat = clat, lon =clon)
head(datafinal)

write.csv(datafinal,"csv\\extractdhhum.csv", row.names = TRUE)
