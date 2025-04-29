# Start from rocker/tidyverse because we need tidyverse packages
FROM rocker/tidyverse

# Install system dependencies
RUN apt-get update && apt-get install -y \
    pandoc \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    && apt-get clean
    
# Install pdflatex via tinytex for knitting to PDF
RUN Rscript -e "tinytex::install_tinytex()"
ENV PATH="${PATH}:/root/bin"

# Make project directory
RUN mkdir /project
WORKDIR /project

# Make subfolders
RUN mkdir -p figure_code figure_output table_code table_output final_report

# Copy project files individually (no COPY . . !!!)
COPY Dockerfile .
COPY makefile .
COPY Final_Project2.Rmd .
COPY Render_report.R .
COPY README.md .
COPY README.Rmd .
COPY titanic-passengers.csv .

# Copy your code folders
COPY figure_code/ figure_code/
COPY table_code/ table_code/

# Copy renv infrastructure carefully
RUN mkdir -p renv
COPY renv.lock renv.lock
COPY .Rprofile .Rprofile
COPY renv/activate.R renv/activate.R
COPY renv/settings.json renv/settings.json

# Restore R package environment without prompts
RUN Rscript -e "renv::restore(prompt = FALSE)"

CMD Rscript Render_report.R



