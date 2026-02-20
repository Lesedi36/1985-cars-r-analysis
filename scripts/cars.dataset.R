library(dplyr)
library(readr)
#importing data
Cars<- read.csv("imports-85.data",header = FALSE)
head(Cars)
getwd()
cars<- read.csv("imports-85.data", header = FALSE)
cars
#renaming columns
colnames(cars)<- c("Symboling", "normalized_losses", "make", "fuel_type", "aspiration",
                   "num_of_doors", "body_style", "drive_wheels", "engine_location",
                   "wheel_base", "length", "width", "height", "curb_weight",
                   "engine_type", "num_of_cylinders", "engine_size", "fuel_system",
                   "bore", "stroke", "compression_ratio", "horsepower",
                   "peak_rpm", "city_mpg", "highway_mpg", "price")
colnames(cars)
cars
#selecting relevant columns for analysis
cars_relevant<- cars %>%
  select(make, fuel_type, num_of_doors, body_style, engine_size, horsepower, price)
cars_relevant
cars_relevant<- cars_relevant %>%
  rename(doors = num_of_doors)

cars_relevant<- cars_relevant %>%
  mutate(horsepower = na_if(horsepower,"?"))
cars_relevent<- cars_relevant %>%
  mutate(horsepower = as.numeric(horsepower))

cars_relevant<- cars_relevant %>%
  mutate(price = na_if(price, "?"))
cars_relevant<- cars_relevant %>%
  mutate(price = as.numeric(price),horsepower = as.numeric(horsepower))

# Separating cars by engine size above 250 is considered large. 

cars_relevant<- cars_relevant %>%
  mutate(engine_category = ifelse (engine_size >= 250,
                                   "Large Engine",
                                   "Small Engine"))


# Separating cars by horsepower above 180 considered high horsepower.

cars_relevant<- cars_relevant %>%
  mutate(horsepower_category = ifelse(horsepower > 180,
                                      "High horsepower",
                                      "Low horsepower"))

head(cars_relevant)

#Filtering cars by large engine and high horsepower

performing_cars<- cars_relevant %>%
  filter(engine_category == "Large Engine", horsepower_category == "High horsepower")

performing_cars

# Arranging cars by price

performing_cars_price<- performing_cars %>%
  arrange(price)

performing_cars_price
