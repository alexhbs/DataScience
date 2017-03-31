pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    alldata <- data.frame(date = as.Date(character()), sulfate = double(), nitrate = double(), ID = integer())
    
    for( i in id ) {
            
            tempdata <- read.csv(paste(normalizePath(directory), "/", paste(sprintf("%03d", i), ".csv", sep = ""), sep = ""))
            alldata <- rbind(alldata, na.omit(tempdata))
        }

    mean <- mean(alldata[[pollutant]])
    
    mean
}