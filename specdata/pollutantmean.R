pollutantmean <- function(directory, pollutant, id = 1:332) {
        filelist <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
        values <- numeric()
        
        for (i in id) {
          data <- read.csv(filelist[i])
          values <- c(values, data[[pollutant]])
        }
          round(mean(values, na.rm = TRUE), digits = 3) 
}

