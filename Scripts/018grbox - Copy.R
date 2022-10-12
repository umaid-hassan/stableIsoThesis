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

exceldata = read_excel("csv/Reaarangement for graph.xlsx")                                                                            
dfdata = data.frame(exceldata)
dfdata

dfdata %>% 
  ggplot(aes(x=City, y=Value, fill=factor(Type.of.measurement))) +
  labs(title = "O18 values for modelled and city stations data", fill = "Measurement Type") + 
  xlab("Cities") + 
  ylab("O18 Values") + 
  geom_boxplot()
