# library(tidyverse)
# 
# structure(list(habitat = c("Gi", "We", "Mw", "Htr", "Gi", "Mw","Mw", "Gi", "Gi", "We", "We", "We", "Mw", "Mw", "Mw", "Htr", "Htr", "Htr"), az = c(2.8, 1.3, 11.3, 4, 1.4, 3.3, 23.6, 3.8, 0, 1, 0.6, 0.9, 13.1, 13.4, 12.7, 14.1, 18.1, 19.8), iz = c(3, 2, 9, 7, 8, 5, 12, 12, 0, 5, 3, 3, 6, 13, 10, 9, 13, 19)), class = "data.frame", row.names = c(NA, -18L))
# 
# df %>% 
#   mutate(habitat = factor(habitat , levels=c("We","Gi","Mw","Htr"))) %>% 
#   pivot_longer(cols = -habitat) %>% 
#   ggplot(aes(x = habitat, y = value, fill = name)) + 
#   geom_boxplot()

library(readxl)
library(tidyverse)
library(hrbrthemes)


# sheet_names <- excel_sheets("csv/rexyplot.xlsx") 
# list_all <- lapply(sheet_names, function(x) {          # Read all sheets to list
#   as.data.frame(read_excel("csv/rexyplot.xlsx", sheet = x)) } )
# 
# dfdata = list_all$Sheet1

exceldata = read_excel("csv/rexyplot.xlsx")                                                                            
dfdata = data.frame(exceldata)
# dfdata

dfdata %>% 
  ggplot(aes(x=anos, y=anom)) +
  labs(title = "O18 values  X Y  plot for modelled and city station data for Ankara") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()

dfdata %>% 
  ggplot(aes(x=anhs, y=anhm)) +
  labs(title = "H2 values  X Y  plot for modelled and city station data for Ankara") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()

dfdata %>% 
  ggplot(aes(x=avos, y=avom)) +
  labs(title = "O18 values  X Y  plot for modelled and city station data for Avignon") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()


dfdata %>% 
  ggplot(aes(x=avhs, y=avhm)) +
  labs(title = "H2 values  X Y  plot for modelled and city station data for Avignon") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()

dfdata %>% 
  ggplot(aes(x=caos, y=caom)) +
  labs(title = "O18 values  X Y  plot for modelled and city station data for Cairo") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()


dfdata %>% 
  ggplot(aes(x=cahs, y=cahm)) +
  labs(title = "H2 values  X Y  plot for modelled and city station data for Cairo") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()

dfdata %>% 
  ggplot(aes(x=lios, y=liom)) +
  labs(title = "O18 values  X Y  plot for modelled and city station data for Lisbon") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()


dfdata %>% 
  ggplot(aes(x=lihs, y=lihm)) +
  labs(title = "H2 values  X Y  plot for modelled and city station data for Lisbon") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()

dfdata %>% 
  ggplot(aes(x=maos, y=maom)) +
  labs(title = "O18 values  X Y  plot for modelled and city station data for Madrid") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()


dfdata %>% 
  ggplot(aes(x=mahs, y=mahm)) +
  labs(title = "H2 values  X Y  plot for modelled and city station data for Madrid") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()

dfdata %>% 
  ggplot(aes(x=raos, y=raom)) +
  labs(title = "O18 values  X Y  plot for modelled and city station data for Rabat") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()


dfdata %>% 
  ggplot(aes(x=rahs, y=rahm)) +
  labs(title = "H2 values  X Y  plot for modelled and city station data for Rabat") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()

dfdata %>% 
  ggplot(aes(x=reos, y=reom)) +
  labs(title = "O18 values  X Y  plot for modelled and city station data for Rehotov") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()


dfdata %>% 
  ggplot(aes(x=rehs, y=rehm)) +
  labs(title = "H2 values  X Y  plot for modelled and city station data for Rehotov") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()

dfdata %>% 
  ggplot(aes(x=vios, y=viom)) +
  labs(title = "O18 values  X Y  plot for modelled and city station data for Vienna") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()


dfdata %>% 
  ggplot(aes(x=vihs, y=vihm)) +
  labs(title = "H2 values  X Y  plot for modelled and city station data for Vienna") + 
  xlab("Station") + 
  ylab("Model") + 
  geom_smooth(method=lm , color="red", fill="#69b3a2", se=TRUE) +
  geom_point() +
  theme_ipsum()

plots.dir.path <- list.files(tempdir(), pattern="rs-graphics", full.names = TRUE); 
plots.png.paths <- list.files(plots.dir.path, pattern=".png", full.names = TRUE)

file.copy(from=plots.png.paths, to="plots/xyplots")

# city <- subset(dfdata, City %in% c("Vienna"))
# xdata <- subset(dfdata, City %in% c("Vienna") && Type.of.measurement == "Model")
# ydata <- subset(dfdata, City %in% c("Vienna") && Type.of.measurement == "Station")
# 
# ggplot(city , aes( x = xdata , y = ydata )) + 
#   geom_point( color="#69b3a2")

