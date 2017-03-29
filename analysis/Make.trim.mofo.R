# Generate aggregate data file for MOFO child

Make.trim.mofo <- function(fn) {
  stopifnot(file.exists(fn))
  
  df <- read.csv(fn)
  
  # add Databrary fields IDs from file name
  df$db.session <- substr(fn, 1:5)
  df$db.participant.id <- substr(fn, 7:10)
  
  drops <- c("iSess", "")
  df <- df[,2]
}

fl <- list.files("analysis/data/csv-bysession", 
                 pattern = "\\.csv$", 
                 full.names = TRUE)

if (is.null(fl)) {
  stop("No files in file list.")
}

dfl <- lapply(fl, Make.trim.mofo)

merged <- Reduce(f = function(x, y) merge(x, y, all = TRUE), dfl)
write.csv(merged, file = "analysis/data/csv-aggregate/child-mofo-all.csv", row.names = FALSE)