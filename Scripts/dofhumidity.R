# 

library(ncdf4)
precip <- nc_open("../data/NUDGING_ERA5_T127L95_v1.2_echam6.q.20000101-20031231.daymean.nc")
print(precip) # check that dims are lon-lat-time

finda = precip$dim$lon$vals
findb = precip$dim$lat$vals

latlon <- data.frame(Latitude= findb, longitude = finda)
head(latlon)


# Ankara Lat 39.9334 N, Lon 32.8597 E
# Avignon 43.9493 N,  4.8055 E
# Cairo 30.0444 N, 31.2357 E
# Lisbon 38.7223 N, -9.1393 W
# Madrid 40.4168 N, -3.7038 W
# Rabat 33.9716 N, -6.8498 W
# Rehotov 31.8928 N, 34.8113 E
# Vienna 48.2082 N, 16.3738 E

lon <- 350.8607 # longitude of location
lat <- 38.7223 # latitude  of location


clon= finda[which(abs(precip$dim$lon$vals-lon)==min(abs(precip$dim$lon$vals-lon)))]
clat= findb[which(abs(precip$dim$lat$vals-lat)==min(abs(precip$dim$lat$vals-lat)))]
# clon = which.min(abs(precip$dim$lon$vals - lon))
# clat = which.min(abs(precip$dim$lat$vals - lat))

# get dates
precipdatadates <- as.Date(precip$dim$time$vals, origin = '2000-01-01')

# get values at location lonlat
obsoutput <- ncvar_get(precip, varid = 'q',
                       start= c(clon, clat,1),
                       count = c(1,1,-1)) #count '-1' means 'all values along that dimension'that dimension'
# create dataframe
datafinal <- data.frame(date= precipdatadates, dofhumidity = obsoutput, lat = clat, lon =clon)
head(datafinal)

# write.csv(datafinal,"csv\\extractdwisoq18o_d.csv", row.names = TRUE)

# Export
#load existing Excel workbook
header_style <- createStyle(halign = "center", textDecoration = "bold")

wb <- loadWorkbook("Lisbon.xlsx")

addWorksheet(wb, "humidity")
writeData(wb, sheet = "humidity", datafinal, headerStyle = header_style,rowNames = FALSE)

freezePane(wb, sheet = "humidity", firstRow = TRUE)

saveWorkbook(wb, "Lisbon.xlsx", overwrite = TRUE)
