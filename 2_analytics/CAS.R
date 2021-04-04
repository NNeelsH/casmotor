cas_ds <- read.csv("1_data/freMTPL2freq.csv")
head(cas_ds)
table(cas_ds$VehBrand)
#week 3 quiz 12
prop.table(table(cas_ds$VehBrand))
#week 3 quiz 13
prop.table(table(cas_ds$Area))

#week3 Practie Challenge q4
library(psych)
describe(cas_ds)
str(cas_ds)
class(cas_ds)
dim(cas_ds)
head(cas_ds)
#tidy up table names and data types to enable modelling
library(janitor)
cas_ds_01 <- clean_names(cas_ds)
#??clean_names

cas_ds_02 <- cas_ds_01 %>% rename(idpol=i_dpol)
#note I need Area, VehBrand, VehGas, Region to be factors
cas_ds_02$area      <- as.factor(cas_ds_02$area)
cas_ds_02$veh_brand <- as.factor(cas_ds_02$veh_brand)
cas_ds_02$veh_gas   <- as.factor(cas_ds_02$veh_gas)
cas_ds_02$region    <- as.factor(cas_ds_02$region)
# and the rest as integers
cas_ds_02$veh_power   <- as.integer(cas_ds_02$veh_power)
cas_ds_02$veh_age     <- as.integer(cas_ds_02$veh_age)
cas_ds_02$driv_age    <- as.integer(cas_ds_02$driv_age)
cas_ds_02$bonus_malus <- as.integer(cas_ds_02$bonus_malus)
cas_ds_02$density     <- as.integer(cas_ds_02$density)

str(cas_ds_02)


# Week4 Practice Challenge
# Explore the distribution of the response/target variable (claim frequency) by
# looking at the histogram of exposure, boxplot of exposure and histogram of claim
# numbers. What do you see?

library(ggplot2)
library(dplyr)

#most of the exposure is = 1
cas_ds_02 %>% ggplot(aes(exposure ))+ geom_histogram()

# the exposure distribution is between 0 and 2
cas_ds_02 %>% ggplot(aes(exposure ))+ geom_boxplot()

#claim values are usually nil, sometomes 1 and rarely 2
cas_ds_02 %>% ggplot(aes(claim_nb  ))+ geom_histogram()







