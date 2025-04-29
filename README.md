README
================

# Final Project Report

## 📄 Overview

This project explores Titanic passenger data to understand survival
patterns based on demographic and socioeconomic variables.

## 🛠️ How to Generate the Final Report

Make sure you’re in the folder where your folder is saved.

## Setting Up the Project

To install required R packages using `renv`:

``` bash
make install
```

or directly from R:

``` bash
renv::restore()
```

### one way

Run the R scripts that create your .rds tables and figures.

Then, run Render_report.R to render Final_Project2.html.

### second way

Run the make command in the terminal

# Final Project Report (Dockerized)

## Docker Image

Available on DockerHub:
<https://hub.docker.com/layers/lejun2002/final/latest/images/sha256:a34f023defb7fd36b0c1271ddfedbb1237b82b4160a8b16e928d5d9c3d7c963d?uuid=DBC4C398-F4F5-4DA0-9822-0C17C45BD36F>

## How to Build the Docker Image for Windows

``` bash
make report
```

The final report will showed in the final_report folder

## 📁 File Descriptions

| File/Folder | Description |
|----|----|
| `Render_report.R` | Run for make final report |
| `Final_Project2.Rmd` | Main R Markdown file containing analysis and report |
| `Final_Project2.html` | Rendered final report |
| `titanic-passengers.csv` | Source data |
| `table_code/` | R scripts for generating the required table |
| `table_output/` | Output of required table |
| `figure_code/` | R scripts for generating the required figure |
| `figure_output/` | Output of required figure |
| `README.md` | This documentation file |
| `Makefile` | automation instructions for building report |
