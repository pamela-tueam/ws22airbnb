## R setup

if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, data.table, ggplot2, broom, geojsonio)



## Read data

## Berlin data


# availibilty for listing id
berlin_calendar <-  read_csv("Berlin/2022_09_15_Berlin_calendar.csv.gz")

# listings place name host
berlin_listings <- read_csv("Berlin/2022_09_15_Berlin_listings.csv",
                            col_types = cols(id = col_character(),
                                             host_id = col_character()))
berlin_listings$price<- gsub(",","", berlin_listings$price)
berlin_listings$price<- as.numeric(gsub("\\$","", berlin_listings$price))

# full listing db
berlin_listings_full <- read_csv("Berlin/2022_09_15_Berlin_listings.csv.gz",
                                 col_types = cols(id = col_character(),
                                                  scrape_id = col_character()))
berlin_listings_full$price<- gsub(",","", berlin_listings_full$price)
berlin_listings_full$price<- as.numeric( gsub("\\$","", berlin_listings_full$price))
# review date listing_id
berlin_reviews_date <- read_csv("Berlin/2022_09_15_Berlin_reviews.csv",
                                col_types = cols(listing_id = col_character(),
                                                 date = col_character()))
# reviews
berlin_reviews_full <- read_csv("Berlin/2022_09_15_Berlin_reviews.csv.gz",
                                col_types = cols(listing_id = col_character(),
                                                 id = col_character(), reviewer_id = col_character()))


## Munich data

# availibilty for listing id
munich_calendar <-  read_csv("Munich/2022_09_21_Munich_calendar.csv.gz")

# listings place name host
munich_listings <- read_csv("Munich/2022_09_21_Munich_listings.csv",
                            col_types = cols(id = col_character(),
                                             host_id = col_character()))
munich_listings$price<- gsub(",","", munich_listings$price)
munich_listings$price<- as.numeric(gsub("\\$","", munich_listings$price))

# full listing db
munich_listings_full <- read_csv("Munich/2022_09_21_Munich_listings.csv.gz",
                                 col_types = cols(id = col_character(),
                                                  scrape_id = col_character()))
munich_listings_full$price<- gsub(",","", munich_listings_full$price)
munich_listings_full$price<- as.numeric( gsub("\\$","", munich_listings_full$price))

# review date listing_id
munich_reviews_date <- read_csv("Munich/2022_09_21_Munich_reviews.csv",
                                col_types = cols(listing_id = col_character(),
                                                 date = col_character()))
# reviews
munich_reviews_full <- read_csv("Munich/2022_09_21_Munich_reviews.csv.gz",
                                col_types = cols(listing_id = col_character(),
                                                 id = col_character(),
                                                 reviewer_id = col_character()))
