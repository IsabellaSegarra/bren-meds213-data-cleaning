library(here)  

snow_survey <- read_csv(here("data_week_1", "ASDN_Snow_survey.csv"))
personnel <- read_csv(here("data_week_1", "personnel.csv"))
site <- read_csv(here("data_week_1", "site.csv"))
species <- read_csv(here("data_week_1", "species.csv"))

list <- list(snow_survey, personnel, site, species)

lapply(list, glimpse)

snow_survey %>% 
  filter(is.na(Plot))

unique(snow_survey$Plot)
unique(snow_survey$Location)

range(snow_survey$Snow_cover)
range(snow_survey$Water_cover)
range(snow_survey$Land_cover)
range(snow_survey$Total_cover)

n_distinct(snow_survey$Location)
n_distinct(snow_survey$Plot)
