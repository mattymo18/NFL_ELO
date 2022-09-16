Makefile

#################################################

#Phony target for cleaning repository
.PHONY: clean
#cleans entire repository of derived elements
clean:
	rm derived_data/*.csv
	rm derived_graphs/*.png
	rm derived_graphs/*.rds
	rm derived_models/*.rds
	rm Analysis.pdf

################################################
	
#build genercic artifact called Artifact.csv with 
#dependencies Data_Source1, Data_source2, and Script.R
Artifact.csv:\
 Data_Source1.csv\
 Data_Source2.csv\
 Script.R
	Rscript Script.R