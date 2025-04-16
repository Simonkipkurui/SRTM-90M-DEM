library(geodata)
library(sf)
library(terra)
library(elevatr)

kenya <- geodata::gadm("KEN", level = 0, path = tempdir())
kenya_sf <- st_as_sf(kenya)
plot(kenya_sf$geometry)
kenya_wgs84 <- st_transform(kenya_sf, 4326)
