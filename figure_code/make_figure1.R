# Load required libraries
library(ggplot2)

here::i_am("figure_code/make_figure1.R")


# Load data
titanic <- read.csv(file = here::here("titanic-passengers.csv"), sep = ";", stringsAsFactors = FALSE)

figure_one<-ggplot(titanic, aes(x = Pclass, fill = factor(Survived))) +
  geom_bar(position = "fill") +
  labs(title = "Survival Rate by Passenger Class", x = "Passenger Class", y = "Proportion", fill = "Survived") +
  theme_minimal()

saveRDS(
  figure_one,
  file=here::here("figure_output/figure1.rds")
)


figure_two<-ggplot(titanic, aes(x = Age, fill = factor(Survived))) +
  geom_histogram(bins = 30, alpha = 0.7, position = "identity") +
  labs(title = "Survival Distribution by Age", x = "Age", y = "Count", fill = "Survived") +
  theme_minimal()

saveRDS(
  figure_two,
  file=here::here("figure_output/figure2.rds")
)

figure_three<-ggplot(titanic, aes(x = Sex, fill = factor(Survived))) +
  geom_bar(position = "fill") +
  labs(title = "Survival Rate by Gender", x = "Gender", y = "Proportion", fill = "Survived") +
  theme_minimal()

saveRDS(
  figure_three,
  file=here::here("figure_output/figure3.rds")
)