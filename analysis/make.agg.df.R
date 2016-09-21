make.agg.df <- function(data.dir = "analysis/data/csv-bysession", agg.dir="analysis/data/csv-aggregate"){
  source("analysis/make.mofo.df.R")
  files <- list.files(path = data.dir, pattern="*.csv$", full.names = TRUE)
  df.list <- lapply(X = files, FUN = make.mofo.df)
  df.agg <- Reduce(function(x,y) merge(x,y, all=TRUE), df.list)
  write.csv(x = df.agg, file = paste(agg.dir, "child-mofo-all.csv", sep="/"), row.names=FALSE)
  return(df.agg)
}