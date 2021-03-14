cas_ds <- read.csv("1_data/freMTPL2freq.csv")
head(cas_ds)
table(cas_ds$VehBrand)
#week 3 quiz 12
prop.table(table(cas_ds$VehBrand))
#week 3 quiz 13
prop.table(table(cas_ds$Area))
