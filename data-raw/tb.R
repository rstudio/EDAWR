# making the larger tb dataset
tb <- read.csv("data-raw/TB_notifications_2014-11-13.csv", stringsAsFactors = FALSE)

library(dplyr)
library(tidyr)

tb2 <- tb %>% 
  tbl_df() %>%
  select(country:iso3, year, new_sp_m014:new_sp_m65, new_sp_f014:new_sp_f65, new_sn_m014:new_sn_m65, new_sn_f014:new_sn_f65, new_ep_m014:new_ep_m65, new_ep_f014:new_ep_f65, newrel_m014:newrel_m65, newrel_f014:newrel_f65)

dput(names(tb2)[47:60])
names(tb2)[47:60] <- c("new_rel_m014", "new_rel_m1524", "new_rel_m2534", 
  "new_rel_m3544", "new_rel_m4554", "new_rel_m5564", "new_rel_m65", 
  "new_rel_f014", "new_rel_f1524", "new_rel_f2534", "new_rel_f3544", 
  "new_rel_f4554", "new_rel_f5564", "new_rel_f65")

tb3 <- tb2 %>%
  gather("group", "n", new_sp_m014:new_rel_f65) %>%
  separate(group, c("new", "type", "sexage"), sep = "_") %>%
  mutate(sex = substr(sexage, 1, 1), age = paste0("a", substring(sexage, 2))) %>%
  group_by(country, year, sex, age) %>%
  summarise(nots = sum(!is.na(n)), n = sum(n, na.rm = TRUE)) %>%
  ungroup() 

tb3$n[tb3$nots == 0] <- NA
tb3$sex <- c(f = "female", m = "male")[tb3$sex]
tb3$age <- c(a014 = "child", 
             a1524 = "adult", 
             a2534 = "adult", 
             a3544 = "adult", 
             a4554 = "adult", 
             a5564 = "adult", 
             a65 = "elderly")[tb3$age]

tb4 <- tb3 %>%
  group_by(country, year, sex, age) %>%
  summarise(n = sum(n)) %>%
  ungroup()

# which countries to include?
keep <- tb4 %>% filter(year >= 1995) %>% 
  group_by(country) %>% 
  summarise(total = sum(n, na.rm = TRUE)) %>%
  as.data.frame() %>%
  arrange(desc(total)) %>%
  filter(total > 25000)
keep <- keep$country

tb5 <- tb4 %>% 
  filter(year >= 1995, country %in% keep)

tb6 <- tb5 %>%
  spread(age, n)

tb <- tb6
write.csv(tb, file = "data-raw/tb.csv", row.names = FALSE)
save(tb, file = "data/tb.rdata")


# making population data set

pop <- read.csv("data-raw/TB_burden_countries_2014-11-07.csv", stringsAsFactors = FALSE)

population <- pop %>%
  tbl_df() %>%
  select(country, year, e_pop_num) %>%
  filter(year >= 1995, country %in% keep) %>% 
  spread(year, e_pop_num)
write.csv(population, file = "data-raw/population.csv", row.names = FALSE)
save(population, file = "data/population.rdata")
  
