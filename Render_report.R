
library(rmarkdown)

here::i_am('render_report.R')

render(
  here::here("Final_Project2.Rmd"),
  knit_root_dir = here::here()
)