library(tidyverse)
library(here)
tv_hours_table<-gss_cat %>% 
  group_by(marital) %>% 
  summarise( mean_hours_tv= mean(tvhours, na.rm=T))
write.csv(tv_hours_table, here("tv_hours_marital.csv"))  
