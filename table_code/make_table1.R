
# Load required libraries
library(here)
library(dplyr)
library(gtsummary)
library(knitr)

here::i_am("table_code/make_table1.R")


# Load data
titanic <- read.csv(file = here::here("titanic-passengers.csv"), sep = ";", stringsAsFactors = FALSE)


table_one<-titanic |> 
  select(Survived, Age, Fare) |> 
  tbl_summary(by = Survived, statistic = all_continuous() ~ "{mean} ({sd})")


saveRDS(
  table_one,
  file=here::here("table_output/table1.rds")
)

table_two<-titanic |> 
  select(Sex, Survived) |> 
  tbl_summary(by = Survived, missing = "no") |> 
  add_overall() |> 
  bold_labels()

saveRDS(
  table_two,
  file=here::here("table_output/table2.rds")
)

table_three<-titanic |> 
  select(Pclass, Survived) |> 
  tbl_summary(by = Survived)

saveRDS(
  table_three,
  file=here::here("table_output/table3.rds")
)

summary_table <- titanic %>% 
  group_by(Sex, Pclass) %>% 
  summarise(SurvivalRate = mean(as.numeric(Survived == "Yes"), na.rm = TRUE))
table_four<-kable(summary_table)

saveRDS(
  table_four,
  file=here::here("table_output/table4.rds")
)