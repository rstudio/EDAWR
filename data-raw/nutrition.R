# nutrition.R

library(dplyr)
library(tidyr)
library(usdanutrients)
   
nutr_names <- c(
  "203" = "protein",
  "204" = "total_fat",
  "205" = "carbohydrates",
  "307" = "sodium",
  "303" = "iron",
  "606" = "saturated_fat",
  "301" = "calcium",
  "601" = "cholesterol",
  "306" = "potassium",
  "305" = "phosphorus",
  "291" = "fiber",
  "318" = "vitamin_A",
  "405" = "riboflavin",
  "404" = "thiamin",
  "406" = "niacin",
  "304" = "magnesium",
  "309" = "zinc",
  "401" = "vitamin_C",
  "415" = "vitamin_B6",
  "418" = "vitamin_B12",
  "317"  = "selenium",
  "431" = "folic_acid",
  "315" = "manganese", 
  "262" = "caffiene",
  "324" = "vitamin_D")

nutrition <- food %>%
   left_join(food_group) %>%
   select(food, group, food_id, pro_factor, fat_factor, carb_factor) %>%
   inner_join(nutrient %>% select(food_id, nutr_id, value)) %>%
   filter(as.character(nutr_id) %in% names(nutr_names)) %>%
   mutate(nutr_name = nutr_names[as.character(nutr_id)]) %>%
   select(-nutr_id) %>%
   spread(nutr_name, value) %>%
   mutate(calories = round(pro_factor * protein + fat_factor * total_fat + carb_factor * carbohydrates)) %>%
   select(food, calories, protein, carbohydrates, total_fat, saturated_fat, caffiene, cholesterol, fiber, folic_acid, sodium, calcium, iron, magnesium, manganese, niacin, phosphorus, potassium, riboflavin, selenium, thiamin, vitamin_A, vitamin_B6, vitamin_B12, vitamin_C, vitamin_D, zinc, group) 

write.csv(nutrition, file = "data-raw/nutrition.csv", row.names = FALSE)
save(nutrition, file = "data/nutrition.rdata")
