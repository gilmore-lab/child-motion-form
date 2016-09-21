# README
Rick Gilmore  
`r Sys.time()`  

## Motion Form (MOFO) Child Tuning

This is the repo for the Motion Form (MOFO) tuning study with child participants.

Last updated 2016-09-21 11:59:14.

## Contents

- *.Rmd, RMarkdown files for scripting various reports.
    - [mofo_render_all.R](mofo_render_all.R) creates plots for all four harmonics of interest (1F1, 2F1, 3F1, and 1F2) for the direction-defined forms condition. `source("mofo_render_all.R")` then `mofo_render_all()` to generate.
    - [child-motion-form-direction.Rmd](child-motion-form-direction.Rmd) is called by `mofo_render_all()`.
- [notes/](notes/)
    - [Project notes](notes/project-notes-mofo-child-tuning.md)
    - [Stimulus parameters](notes/mofo-child-tuning-parameters.md)
    - [How to transfer files from PowerBook to iMac](connect_PowerBook2iMac.md)
- [analysis/](analysis/)
    - [mofo-RLS-file-convert.R](analysis/mofo-RLS-file-convert.R), function to import, merge, and convert PowerDiva RLS, Session, and related files into CSVs.
    - [data/](analysis/data/)
        - [egi.csv](analysis/data/egi.csv), comma-delimited file with coordinates of EGI 128 channels.
        - child-mofo-*-direction-stats.csv summarize the channel-by-channel statistics for the GLM fit to the data.
        - [csv-bysession/](analysis/data/csv-bysession/) comma-delimited files of individual sessions.
        - [csv-aggregate/]() directory for aggregated (merged across participants) data file. Not stored on GitHub due to large size (>100MB), but can be regenerated from session-level files.
- [pubs/](pubs/) publications directory
    - [sfn-16-poster](pubs/sfn-16-poster) working files for SfN16 poster presentation.
    - [mofo-child-manuscript2016.md](pubs/mofo-child-manuscript2016.md) draft manuscript.

## Session Info

```r
sessionInfo()
```

```
## R version 3.3.1 (2016-06-21)
## Platform: x86_64-apple-darwin13.4.0 (64-bit)
## Running under: OS X 10.11.6 (El Capitan)
## 
## locale:
## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## loaded via a namespace (and not attached):
##  [1] magrittr_1.5    formatR_1.4     tools_3.3.1     htmltools_0.3.5
##  [5] yaml_2.1.13     Rcpp_0.12.6     stringi_1.1.1   rmarkdown_1.0.1
##  [9] knitr_1.13      stringr_1.0.0   digest_0.6.10   evaluate_0.9
```
