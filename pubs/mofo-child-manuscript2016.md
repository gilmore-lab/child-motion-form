mofo-child-manuscript
================
Rick Gilmore
2017-10-24 14:43:39

Mofo child manuscript
=====================

-   Items in bold need to be checked for accuracy.

Methods
-------

``` r
# for every file in csv-bysession, we need to change the iSess variable to the
# participant ID, which is the 3 or 4 digit number between the '-' and the '.csv'
# The following code was run once

# Change_iSess <- function(fn) {
#   new_iSess <- str_extract_all(fn, pattern = '[0-9]+')[[1]][2]
#   df <- read_csv(fn)
#   df$iSess <- as.numeric(new_iSess)
#   write.csv(df, file = paste0("analysis/data/csv-bysession-anon/", new_iSess, ".csv"), row.names = FALSE)
# }
# 
# fl <- list.files("analysis/data/csv-bysession", full.names = TRUE)
# # Change_iSess(fl[1])
# 
# sapply(fl, Change_iSess)
```

``` r
# to run from project root temporarily
# params$data_dir <- "analysis/data/csv-bysession-anon"
file_list <- list.files(params$data_dir, pattern = "\\.csv$", full.names = TRUE)

mofo_merged_list <- lapply(file_list, read_csv)
```

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_double(),
    ##   iSess = col_integer(),
    ##   iCond = col_integer(),
    ##   Harm = col_character(),
    ##   Direction = col_character(),
    ##   Speed = col_character(),
    ##   Channel = col_integer(),
    ##   ChanGroup = col_character(),
    ##   Study = col_character(),
    ##   Operator = col_character(),
    ##   Sex = col_character(),
    ##   AgeDays = col_integer()
    ## )

    ## See spec(...) for full column specifications.

``` r
mofo_merged <- Reduce(function(x,y) full_join(x,y, all=TRUE), mofo_merged_list)
```

    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")

    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")
    ## Joining, by = c("iSess", "iCond", "Harm", "Sr", "Si", "N1r", "N1i", "N2r", "N2i", "Signal", "Phase", "Noise", "StdErr", "PVal", "SNR", "Direction", "Speed", "Channel", "ChanGroup", "Hz", "Study", "Operator", "Sex", "AgeDays")

``` r
mofo_merged %>%
  select(iSess, AgeDays, Sex) %>%
  mutate(MinDays = min(AgeDays), MaxDays=max(AgeDays), MeanDays=mean(AgeDays)) ->
  age_dist

hist(unique(age_dist$AgeDays))
```

![](mofo-child-manuscript2016_files/figure-markdown_github-ascii_identifiers/calculate-demographics-1.png)

``` r
# Looks like there is an outlier with AgeDays == 22424
age_dist$iSess[age_dist$AgeDays > 5000]
```

    ##     [1] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##    [18] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##    [35] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##    [52] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##    [69] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##    [86] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [103] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [120] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [137] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [154] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [171] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [188] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [205] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [222] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [239] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [256] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [273] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [290] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [307] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [324] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [341] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [358] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [375] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [392] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [409] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [426] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [443] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [460] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [477] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [494] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [511] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [528] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [545] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [562] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [579] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [596] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [613] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [630] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [647] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [664] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [681] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [698] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [715] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [732] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [749] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [766] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [783] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [800] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [817] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [834] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [851] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [868] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [885] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [902] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [919] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [936] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [953] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [970] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##   [987] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1004] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1021] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1038] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1055] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1072] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1089] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1106] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1123] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1140] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1157] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1174] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1191] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1208] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1225] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1242] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1259] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1276] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1293] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1310] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1327] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1344] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1361] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1378] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1395] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1412] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1429] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1446] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1463] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1480] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1497] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1514] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1531] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1548] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1565] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1582] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1599] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1616] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1633] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1650] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1667] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1684] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1701] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1718] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1735] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1752] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1769] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1786] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1803] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1820] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1837] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1854] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1871] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1888] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1905] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1922] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1939] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1956] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1973] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [1990] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2007] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2024] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2041] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2058] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2075] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2092] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2109] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2126] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2143] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2160] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2177] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2194] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2211] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2228] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2245] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2262] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2279] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2296] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2313] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2330] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2347] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2364] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2381] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2398] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2415] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2432] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2449] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2466] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2483] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2500] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2517] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2534] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2551] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2568] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2585] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2602] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2619] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2636] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2653] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2670] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2687] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2704] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2721] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2738] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2755] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2772] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2789] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2806] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2823] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2840] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2857] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2874] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2891] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2908] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2925] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2942] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2959] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2976] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [2993] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3010] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3027] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3044] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3061] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3078] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3095] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3112] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3129] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3146] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3163] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3180] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3197] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3214] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3231] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3248] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3265] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3282] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3299] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3316] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3333] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3350] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3367] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3384] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3401] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3418] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3435] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3452] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3469] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3486] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3503] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3520] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3537] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3554] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3571] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3588] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3605] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3622] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3639] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3656] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3673] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3690] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3707] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3724] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3741] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3758] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3775] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3792] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3809] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3826] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3843] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3860] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3877] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3894] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3911] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3928] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3945] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3962] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3979] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [3996] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4013] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4030] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4047] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4064] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4081] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4098] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4115] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4132] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4149] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4166] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4183] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4200] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4217] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4234] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4251] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4268] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4285] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4302] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4319] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4336] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4353] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4370] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4387] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4404] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4421] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4438] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4455] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4472] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4489] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4506] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4523] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4540] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4557] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4574] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4591] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4608] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4625] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4642] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4659] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4676] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4693] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4710] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4727] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4744] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4761] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4778] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4795] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4812] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4829] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4846] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4863] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4880] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4897] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4914] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4931] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4948] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4965] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4982] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [4999] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5016] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5033] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5050] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5067] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5084] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5101] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5118] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5135] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5152] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5169] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5186] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5203] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5220] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5237] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5254] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5271] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5288] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5305] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5322] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5339] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5356] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5373] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5390] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5407] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5424] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5441] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5458] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5475] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5492] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5509] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5526] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5543] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5560] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5577] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5594] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5611] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5628] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5645] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5662] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5679] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5696] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5713] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5730] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5747] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5764] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5781] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5798] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5815] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5832] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5849] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5866] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5883] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5900] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5917] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5934] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5951] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5968] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [5985] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6002] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6019] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6036] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6053] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6070] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6087] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6104] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6121] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6138] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6155] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6172] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6189] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6206] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6223] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6240] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6257] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6274] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6291] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6308] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6325] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6342] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6359] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6376] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6393] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6410] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6427] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6444] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6461] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6478] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6495] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6512] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6529] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6546] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6563] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6580] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6597] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6614] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6631] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6648] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6665] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6682] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6699] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6716] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6733] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6750] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6767] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6784] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6801] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6818] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6835] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6852] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6869] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6886] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6903] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6920] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6937] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6954] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6971] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [6988] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7005] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7022] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7039] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7056] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7073] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7090] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7107] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7124] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7141] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7158] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7175] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7192] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7209] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7226] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7243] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7260] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7277] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7294] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7311] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7328] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7345] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7362] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7379] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7396] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7413] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7430] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7447] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7464] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7481] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7498] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7515] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7532] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7549] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7566] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7583] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7600] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7617] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7634] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7651] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7668] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7685] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7702] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7719] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7736] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7753] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7770] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7787] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7804] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7821] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7838] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7855] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7872] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7889] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7906] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7923] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7940] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7957] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7974] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [7991] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8008] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8025] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8042] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8059] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8076] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8093] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8110] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8127] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8144] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8161] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8178] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8195] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8212] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8229] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8246] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8263] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8280] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8297] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8314] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8331] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8348] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8365] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8382] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8399] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8416] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8433] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8450] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8467] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8484] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8501] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8518] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8535] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8552] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8569] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8586] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8603] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8620] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8637] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8654] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8671] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8688] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8705] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8722] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8739] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8756] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8773] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8790] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8807] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8824] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8841] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8858] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8875] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8892] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8909] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8926] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8943] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8960] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8977] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [8994] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9011] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9028] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9045] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9062] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9079] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9096] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9113] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9130] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9147] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9164] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9181] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9198] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9215] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9232] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9249] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9266] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9283] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9300] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9317] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9334] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9351] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9368] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9385] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9402] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9419] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9436] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9453] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9470] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9487] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9504] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9521] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9538] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9555] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9572] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9589] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9606] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9623] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9640] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9657] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9674] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9691] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9708] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9725] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9742] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9759] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9776] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9793] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9810] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9827] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9844] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9861] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9878] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9895] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9912] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9929] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9946] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9963] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9980] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ##  [9997] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10014] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10031] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10048] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10065] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10082] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10099] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10116] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10133] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10150] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10167] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10184] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10201] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10218] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10235] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10252] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10269] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10286] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10303] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10320] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10337] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10354] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10371] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10388] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10405] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10422] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10439] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10456] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10473] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10490] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10507] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10524] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10541] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10558] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10575] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10592] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10609] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10626] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10643] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10660] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10677] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10694] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10711] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10728] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10745] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10762] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10779] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10796] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10813] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10830] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10847] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10864] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10881] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10898] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10915] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10932] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10949] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10966] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [10983] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11000] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11017] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11034] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11051] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11068] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11085] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11102] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11119] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11136] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11153] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11170] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11187] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11204] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11221] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11238] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11255] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11272] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11289] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11306] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11323] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11340] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11357] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11374] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11391] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11408] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11425] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11442] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11459] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11476] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11493] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11510] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11527] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11544] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11561] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11578] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11595] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11612] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11629] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11646] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11663] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11680] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11697] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11714] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11731] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11748] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11765] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11782] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11799] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11816] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11833] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11850] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11867] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11884] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11901] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11918] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11935] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11952] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11969] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [11986] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12003] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12020] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12037] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12054] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12071] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12088] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12105] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12122] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12139] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12156] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12173] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12190] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12207] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12224] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12241] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12258] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12275] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12292] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12309] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12326] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12343] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12360] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12377] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12394] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12411] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12428] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12445] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12462] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12479] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12496] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12513] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12530] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12547] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12564] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12581] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12598] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12615] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12632] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12649] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12666] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12683] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12700] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12717] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12734] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12751] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12768] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12785] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12802] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12819] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12836] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12853] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12870] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12887] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12904] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12921] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12938] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12955] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12972] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [12989] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13006] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13023] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13040] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13057] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13074] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13091] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13108] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13125] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13142] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13159] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13176] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13193] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13210] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13227] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13244] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13261] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13278] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13295] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13312] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13329] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13346] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13363] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13380] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13397] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13414] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13431] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13448] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13465] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13482] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13499] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13516] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13533] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13550] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13567] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13584] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13601] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13618] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13635] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13652] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13669] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13686] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13703] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13720] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13737] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13754] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13771] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13788] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13805] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13822] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13839] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13856] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13873] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13890] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13907] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13924] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13941] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13958] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13975] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [13992] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14009] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14026] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14043] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14060] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14077] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14094] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14111] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14128] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14145] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14162] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14179] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14196] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14213] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14230] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14247] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14264] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14281] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14298] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14315] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14332] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14349] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14366] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14383] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14400] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14417] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14434] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14451] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14468] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14485] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14502] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14519] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14536] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14553] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14570] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14587] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14604] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14621] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14638] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14655] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14672] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14689] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14706] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14723] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14740] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14757] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14774] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14791] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14808] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14825] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14842] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14859] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14876] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14893] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14910] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14927] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14944] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14961] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14978] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [14995] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15012] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15029] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15046] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15063] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15080] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15097] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15114] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15131] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15148] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15165] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15182] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15199] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15216] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15233] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15250] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15267] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15284] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15301] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15318] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15335] 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993 993
    ## [15352] 993 993 993 993 993 993 993 993 993

``` r
# So, we need the actual age in days for "19691231_190357"

age_dist %>%
  group_by(Sex, iSess) %>%
  summarize(nF = n())
```

    ## # A tibble: 37 x 3
    ## # Groups:   Sex [?]
    ##      Sex iSess    nF
    ##    <chr> <int> <int>
    ##  1     f   994 15360
    ##  2     f   995 15360
    ##  3     f   997 15360
    ##  4     f   998 15360
    ##  5     f   999 15360
    ##  6     f  1008 15360
    ##  7     f  1017 15360
    ##  8     f  1021 15360
    ##  9     f  1025 15360
    ## 10     f  1029 15360
    ## # ... with 27 more rows

### Participants

Fifty two children participated in this study and this sample consisted of children drawn from a database of families in Centre County, Pennsylvania. Thirty-seven children, (16 female; mean age: 6.4 years) between four and nine years of age resulted in data comprising the final data set. Fifteen children were tested but excluded because of equipment failure (5), experimenter error (1), poor participant vision -strabismus (1), refusal to wear net (3), too many channels above threshold (3) and too few blocks collected (2). Children were excluded if they were born prematurely, had a history of serious visual or medical problems, epilepsy, or seizures. All children tested had normal pattern vision as evaluated with HOTV optotype acuity, a measure of visual function designed for very young participants, at a distance of 10 feet. We obtained written consent to participate from parents or guardians on behalf of the children and written assent from the children themselves under procedures approved by the Institutional Review Board of The Pennsylvania State University (\#37946). The research was conducted according to the principles expressed in the Declaration of Helsinki.

### Display

All participants viewed random dot kinematogram displays on a monochrome monitor with an 800 x 600 pixel resolution and a screen refresh rate of 72 Hz. The displays were generated on a Macintosh G4 computer using Power Diva software (version 3.4, Smith- Kettlewell Eye Research Institute).

### Stimuli

Participants passively viewed random dot kinematogram displays that depicted visual forms which differed in direction from uniform background motion by 5, 45, or 180 deg, differed in coherence (0,100%) and differed in motion direction on a black background from 0 to 180 deg. All patterns were displayed in an annular region 24° in outer and 4.8° inner diameter at the 60 cm viewing distance. Four 9x9 deg square-shaped figure regions emerged from and disappeared into the background at a rate of 1.2 Hz (F1). Figure and background regions were populated with white (39 cd/m^2) dots on a black (.065 cd/m^2) background at a density of 10%; dot positions were updated at 36 Hz (F2). Each condition was presented at two speeds (1.2 and 6.0 deg/s). In order to reduce response adaptation, the direction of motion reversed **every other cycle (at 0.6 Hz)**.

### Procedures

Upon arrival at the laboratory, study and visit procedures were described and informed consent/assent was obtained. After net fitting and placement, participants were escorted to the testing room and seated on an adjustable chair in front of the computer monitor. Electrode impedances were checked, and once impedances met testing criteria (at 50kΩ or below), lights were dimmed and the session began. A research assistant remained in the testing room to monitor participants' fixation and to call for breaks, as needed. Between 3 and 10 blocks were collected for each set of 10 conditions depending on the attention span of the child. Each of the 10 conditions were presented in random order. Participants were encouraged to talk or wiggle in between blocks to help the child remain still during data collection. The entire testing session took about 45 min.

### EEG Collection

Steady-state evoked potential (SSVEP) responses were recorded using a 128-channel HydroCel Geodesic Sensor Net (Electrical Geodesics, Inc.) in conjunction with NetStation 4.1 software. Electrode impedance for each session was at or below 50 kOhms for all electrodes. EEG was **filtered at XXX**, sampled rate of 432.43 Hz, referenced to the vertex (Cz).

### EEG analysis

PowerDiva Host 3.4 software was used offline to analyze the cortical activity related to the display of the stimuli. Artifact rejection was completed according to a sample by sample procedure where the rejected individual electrodes were eplaced with the average of the six neighboring electordes. The EEG data were then re-referenced to the net average. Amplitude modulations that exceeded 100 µV were rejected as artifact as well as entire trials that had greater than 15% of rejected cycles. The EEG patterns were analyzed using a version of the discrete Fourier transform. The frequency domain components were extracted at low order integer harmonics of the fundamental frequency (1F1=1.2 Hz) of the motion coherence modulation and the dot update rate (1F2=36 Hz) using a discrete Fourier transform algorithm.

Phase-locked coherent averages of response amplitudes were analyzed and visualized using R 3.2.1 \[71\], RStudio 0.99.489 (<http://www.rstudio.com>), and the packages ggplot2 \[72\] and dplyr \[73\]. The complex domain (real and imaginary) components of each channel were analyzed using mixed-effects MANOVA, with direction difference and speed as fixed factors and participant as a random factor. We analyzed speed and pattern effects separately for each individual channel while choosing a conservative criterion (p&lt;.0005) as our alpha level to reduce the likelihood of reporting false positives. Topographic visualizations of the data were created with the effects of Pattern and Speed on the VEP signal.

Results
-------

### Hypotheses

1.  Stronger responses to larger direction contrasts (0-180).
2.  Speed tuning in 1F2 at least. Have seen many times before.
3.  No prediction about age effects. No strong prior hypothesis.

### Overall responsiveness of children's brains

-   For each participant, summarize SNR by Condition, counting or listing of channels for SNR &gt; 2?

``` r
# Where s1004 is data for participant 1004
# Counts the number of channels x conditions meeting SNR thresh
#sum(s1004$SNR > 2)

# Write dplyr code to filter data frame by SNR criterion, then
# summarize
```

-   Report median and range of channels meeting SNR criterion in manuscript. Look at age distributions.

-   Look at *T*<sub>*c**i**r**c*</sub><sup>2</sup> values at individual and group level (see Gilmore et al. 2016; Fig 3; <https://doi.org/10.1371/journal.pone.0157911.g003>). Since we're focusing on higher order harmonics, let's do plots for 1F1, 2F1, 3F1, 4F1, 5F1 and 1F2.

### Generate Channel-wise MANOVA plots

-   Similar to <https://doi.org/10.1371/journal.pone.0157911.g004> and similar figures in SfN 2016 poster.

<img src="sfn-16-poster/img/1F1-analyze-and-plot-main-effects-1.png">

<img src="sfn-16-poster/img/2F1-analyze-and-plot-main-effects-1.png">

<img src="sfn-16-poster/img/3F1-analyze-and-plot-main-effects-1.png">

Rerun these and also plot for 4F1, 5F1 and 1F2.

### Generate channel effects plots

<img src="sfn-16-poster/img/1F1-plot-channel-effects-1.png">

<img src="sfn-16-poster/img/2F1-plot-channel-effects-1.png">

<img src="sfn-16-poster/img/3F1-plot-channel-effects-1.png">

Rerun these and also plot for 4F1, 5F1 and 1F2.

### Generate statistical summary tables with effect sizes

-   See Gilmore Thomas & Fesi 2016

### Generate vector average plots

<img src="sfn-16-poster/img/1F1-plot-vector-avg-1.png">

![](sfn-16-poster/img/1F1-plot-vector-avg-1.png)

<img src="sfn-16-poster/img/2F1-plot-vector-avg-1.png">

<img src="sfn-16-poster/img/2F1-plot-vector-avg-1.png">

Rerun these and also plot for 4F1, 5F1 and 1F2.

Discussion
----------

Conclusion
----------

------------------------------------------------------------------------

**Language from other papers**

Data analysis focused on the phase-locked amplitude of responses at 1F1, 2F1, 3F1 ....

From Fesi 2014:

Steady-state evoked potential (SSVEP) responses were recorded via a 128-electrode dense array (SensorNet, Electrical Geodesics, Inc.). **The electrodes were referenced to the vertex (Cz), and then re-referenced to the net average.** EEG was sampled at a rate of 443.52 Hz and low pass filtered at 50 Hz. Electrode impedance for each session was at or below 50 kOhms for all electrodes. Artifact rejection parameters were employed to reject display cycles containing raw amplitudes that exceeded a threshold of 50 *μ*V, as well as entire trials with 15% of rejected cycles. Activity was analyzed offline via PowerDiva Host 3.4 software. The software analyzes EEG patterns using a version of the discrete Fourier transform. Responses that occurred at integer harmonics of the modulation frequency (1.2 Hz, F1) of the displays and the monitor (24 Hz, F2) and were phase-locked to the stimulus are reported here. Topographic visualizations of the data were created with mrCurrent (Smith-Kettlewell Eye Research Institute) software. The intensity values of these plots were normalized by harmonic, in order to illustrate the spatial distribution of the responses at each harmonic. Statistical significance of signal from noise was determined via a two-dimensional t-test called the *T*<sub>*c**i**r**c*</sub><sup>2</sup> (Victor & Mast, 1991).

from PLOSone -EEG Data Collection A 128-channel HydroCel Geodesic Sensor Net (Electrical Geodesics, Inc.) was used in conjunction with NetStation 4.1 software to record SSVEP responses to the stimuli. EEG was sampled rate of 432.43 Hz, **referenced to Cz,** and the signal was low-pass filtered at 50 Hz \[70\] prior to analysis. Amplitude modulations that exceeded 60µV were rejected as artifact. Trials that had 15% of coherent/incoherent cycles rejected by these criteria were excluded from analysis. Children who produced fewer than three trials per condition were also excluded. A total of four children were excluded from analysis; two were excluded due to too few trials and two others were excluded due to equipment malfunction. In total, 29 children were included in the analysis (mean age=75.48 months; SD=19.18).

Analysis - from PLOSone To evaluate the overall responsiveness of EEG channels to motion coherence modulations, we calculated for each channel the T2Circ statistic \[75\], a version of Hotelling's T2 statistic adapted for frequency domain data, across participants, pattern types, and speeds. It is analogous to conducting a t test with the null hypothesis that EEG amplitudes are equal to zero. Since the T2Circ statistic could cause us to overlook channels that responded to the pattern and speed conditions with distinctive amplitude and phase profiles, we also computed a mixed-effects MANOVA (using R's manova command). Here, the real (cosine) and imaginary (sine) components of the Fourier decomposition of the EEG signal served as outcome variables. This revealed those EEG responses that were time/phase-locked to the stimulation modulations. We chose this approach in order to evaluate jointly amplitude and phase differences in the evoked responses while avoiding distributional complications with analyses based on amplitudes and phases. Specifically, amplitudes have a fixed floor at zero voltage, and phases are circularly distributed. Thus, both of these polar space quantities violate distributional assumptions that underlie standard linear statistical models. The real and imaginary components of the EEG are, under the null hypothesis, distributed symmetrically around zero, consistent with the distributional assumptions that underlie the general linear model.

Consistent with standard mixed-effects modeling procedures in the behavioral sciences, participants' mean response levels were included in the model as random intercept effects to attempt to control for individual differences in EEG response magnitudes. We used the default Pillai trace test that approximates an F distribution as the statistic of interest. To interpret the results, we chose a statistical criterion of α=.0005. This compares to a Bonferroni adjustment with n=100 tests, assuming a baseline criterion of p&lt;.05. We report partial η values to indicate effect sizes for the MANOVA results. For illustrative purposes we plotted (Figs 3, 6, 7, 10, and 13-15) the channel-wise results over a range of strict and liberal levels of statistical significance to illustrate how the effects varied by choices of criterion. Additional figures, full datasets, and analysis code may be found at <http://doi.org/10.17910/B7QG6W> and <https://github.com/gilmore-lab/gilmore-thomas-fesi-2015>.
