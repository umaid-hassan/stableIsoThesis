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

exceldata = read_excel("csv/Reaarangement for graph.xlsx")                                                                            
dfdata = data.frame(exceldata)
# dfdata

dfdata %>% 
  ggplot(aes(x=City, y=Value, fill=factor(Type.of.measurement))) +
  labs(title = "O18 values for modelled and city stations data", fill = "Measurement Type") + 
  xlab("Cities") + 
  ylab("O18 Values") + 
  geom_boxplot()


ggplot(subset(dfdata, City %in% c("Ankara")), aes(x = Type.of.measurement, y = Value, fill = Type.of.measurement)) +
  labs(title = "O18 values for modelled and city stations data for Ankara", fill = "Measurement Type") + 
  xlab("") + 
  ylab("O18 Values") + 
  geom_boxplot()

ggplot(subset(dfdata, City %in% c("Avignon")), aes(x = Type.of.measurement, y = Value, fill = Type.of.measurement)) +
  labs(title = "O18 values for modelled and city stations data for Avignon", fill = "Measurement Type") + 
  xlab("") + 
  ylab("O18 Values") + 
  geom_boxplot()

ggplot(subset(dfdata, City %in% c("Cairo")), aes(x = Type.of.measurement, y = Value, fill = Type.of.measurement)) +
  labs(title = "O18 values for modelled and city stations data for Cairo", fill = "Measurement Type") + 
  xlab("") + 
  ylab("O18 Values") + 
  geom_boxplot()

ggplot(subset(dfdata, City %in% c("Lisbon")), aes(x = Type.of.measurement, y = Value, fill = Type.of.measurement)) +
  labs(title = "O18 values for modelled and city stations data for Lisbon", fill = "Measurement Type") + 
  xlab("") + 
  ylab("O18 Values") + 
  geom_boxplot()

ggplot(subset(dfdata, City %in% c("Madrid")), aes(x = Type.of.measurement, y = Value, fill = Type.of.measurement)) +
  labs(title = "O18 values for modelled and city stations data for Madrid", fill = "Measurement Type") + 
  xlab("") + 
  ylab("O18 Values") + 
  geom_boxplot()

ggplot(subset(dfdata, City %in% c("Rabat")), aes(x = Type.of.measurement, y = Value, fill = Type.of.measurement)) +
  labs(title = "O18 values for modelled and city stations data for Rabat", fill = "Measurement Type") + 
  xlab("") + 
  ylab("O18 Values") + 
  geom_boxplot()

ggplot(subset(dfdata, City %in% c("Rehotov")), aes(x = Type.of.measurement, y = Value, fill = Type.of.measurement)) +
  labs(title = "O18 values for modelled and city stations data for Rehotov", fill = "Measurement Type") + 
  xlab("") + 
  ylab("O18 Values") + 
  geom_boxplot()

ggplot(subset(dfdata, City %in% c("Vienna")), aes(x = Type.of.measurement, y = Value, fill = Type.of.measurement)) +
  labs(title = "O18 values for modelled and city stations data for Vienna", fill = "Measurement Type") + 
  xlab("") + 
  ylab("O18 Values") + 
  geom_boxplot()

plots.dir.path <- list.files(tempdir(), pattern="rs-graphics", full.names = TRUE); 
plots.png.paths <- list.files(plots.dir.path, pattern=".png", full.names = TRUE)

file.copy(from=plots.png.paths, to="plots/O18")

# city <- subset(dfdata, City %in% c("Vienna"))
# xdata <- subset(dfdata, City %in% c("Vienna") && Type.of.measurement == "Model")
# ydata <- subset(dfdata, City %in% c("Vienna") && Type.of.measurement == "Station")
# 
# ggplot(city , aes( x = xdata , y = ydata )) + 
#   geom_point( color="#69b3a2")

