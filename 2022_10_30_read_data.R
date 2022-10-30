## R setup


library(tidyverse)
library(data.table)


## Read data

## Berlin data


# availibilty for listing id
berlin_calendar <-  read_csv("Berlin/2022_09_15_Berlin_calendar.csv.gz")

# listings place name host
berlin_listings <- read_csv("Berlin/2022_09_15_Berlin_listings.csv",
                            col_types = cols(id = col_character(),
                                             host_id = col_character()))

# full listing db
berlin_listings_full <- read_csv("Berlin/2022_09_15_Berlin_listings.csv.gz",
                                 col_types = cols(id = col_character(),
                                                  scrape_id = col_character()))
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

# full listing db
munich_listings_full <- read_csv("Munich/2022_09_21_Munich_listings.csv.gz",
                                 col_types = cols(id = col_character(),
                                                  scrape_id = col_character()))
# review date listing_id
munich_reviews_date <- read_csv("Munich/2022_09_21_Munich_reviews.csv",
                                col_types = cols(listing_id = col_character(),
                                                 date = col_character()))
# reviews
munich_reviews_full <- read_csv("Munich/2022_09_21_Munich_reviews.csv.gz",
                                col_types = cols(listing_id = col_character(),
                                                 id = col_character(),
                                                 reviewer_id = col_character()))