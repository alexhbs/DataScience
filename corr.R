corr <- function(directory, threshold = 0) {

    vector <- numeric(0)
    i <- 1
    
    for (file in list.files(directory)) {
        
        data <- read.csv(file.path(directory, file))
        nob <- sum(complete.cases(data))
        
        if (nob > threshold) {
        
            vector[i] <- as.double(cor(data$nitrate, data$sulfate, use="complete.obs"))
            i <- i + 1
        
        } 
    }
    
    return(vector)
}