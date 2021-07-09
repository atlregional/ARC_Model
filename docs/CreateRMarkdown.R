# script which calls rmarkdown directly from R
args=commandArgs(trailingOnly=TRUE)

# args 1: r_program_location
# args 2: properties_file
# args 3: code path
# args 4: output locations for HTML files

Sys.setenv(RSTUDIO_PANDOC=args[1])
source(args[2])
.libPaths(c(.libPaths()))

oldw <- getOption("warn")
options(warn = -1)

library(knitr)
library(markdown)
library(rmarkdown)

rmarkdown::render(paste(args[3],"ABMVIZ.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"AccessibilityCalculator.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"ActivityPatternandTourLevelModels.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"AirPassengerModel.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"Ctramp.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"ExternalModel.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"HighwayNetworkCoding.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"index.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"Introduction.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"LongTermChoiceModels.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"ModelEXEC.rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"ModelFramework.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"ModelInputs.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"ModelOutputs.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"Overview.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"PopulationSynthesizer.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"RunModel.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"RunPopSyn.rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"Setup.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"ShadowPricing.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"SpecReportAppendixA.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"SpecReportAppendixB.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"TransitForecast.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"TransitNetworkCoding.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"TripAssignment.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"TripLevelModels.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"TruckModel.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"UserGuideAppendix.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())

rmarkdown::render(paste(args[3],"PopSyn.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"StopandModeChoiceModel.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"UpstreamModelCalibration.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())
rmarkdown::render(paste(args[3],"TourModelCalibration.Rmd",sep="/"),output_dir=args[4],params=list(properties_file=args[2]),quiet=TRUE,envir=new.env())