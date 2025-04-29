library(rmarkdown)

if (!dir.exists("final_report")) {
  dir.create("final_report")
}
# Render_report.R

# Step 1: Generate tables
source("table_code/make_table1.R")

# Step 2: Generate figures
source("figure_code/make_figure1.R")

# Step 3: Knit report to mounted /project/final_report/ folder
rmarkdown::render("Final_Project2.Rmd", output_file = "final_report/Final_Project2.html")

