SET rPath="C:/Users/abigail/Documents/R/R-3.5.2/bin"
SET pandocPath="C:/Users/abigail/Documents/RStudio/bin/pandoc"

:: location of r code
SET codePath="C:/Users/abigail/Documents/GitHub/ARC_Model/docs"

:: location of properties file and run log
SET properties_file="C:/Users/abigail/Documents/GitHub/ARC_Model/docs/properties.R"
SET run_log="C:/Users/abigail/Documents/GitHub/ARC_Model/docs/runSummary.log"

:: output dir
SET output_dir="C:/Users/abigail/Documents/GitHub/ARC_Model/docs"

%rPath%\Rscript.exe --vanilla --verbose %codePath%/CreateRMarkdown.R %pandocPath% %properties_file% %codePath% %output_dir% > %run_log% 2>&1
