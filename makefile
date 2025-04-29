# Makefile for Windows (Git Bash / WSL)
# Docker image named final
# Output folder final_report/

.PHONY: report clean

report:
	docker run --rm -v "/$$(pwd)/final_report":/project/final_report lejun2002/final

clean:
	rm -f report/*.html
	rm -f table_output/*.rds
	rm -f figure_output/*.rds






