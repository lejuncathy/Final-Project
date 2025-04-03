## Render the report using Render_report.R after all RDS files are created
Final_Project2.html: Render_report.R Final_Project2.Rmd \
                     table_output/table1.rds \
                     table_output/table2.rds \
                     table_output/table3.rds \
                     table_output/table4.rds \
                     figure_output/figure1.rds \
                     figure_output/figure2.rds \
                     figure_output/figure3.rds
	Rscript Render_report.R

## Build the first RDS file
table_output/table1.rds: table_code/make_table1.R
	    Rscript table_code/make_table1.R
table_output/table2.rds: table_code/make_table1.R
	    Rscript table_code/make_table1.R
table_output/table3.rds: table_code/make_table1.R
	    Rscript table_code/make_table1.R
table_output/table4.rds: table_code/make_table1.R
	    Rscript table_code/make_table1.R

## Build the second RDS file 
figure_output/figure1.rds: figure_code/make_figure1.R 
	    Rscript figure_code/make_figure1.R

figure_output/figure2.rds: figure_code/make_figure1.R 
	    Rscript figure_code/make_figure1.R

figure_output/figure3.rds: figure_code/make_figure1.R 
	    Rscript figure_code/make_figure1.R

## Optional cleanup target
clean:
	rm -f table_output/*.rds
	rm -f figure_output/*.rds
	rm -f report.html