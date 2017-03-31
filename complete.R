complete <- function(directory, id = 1:332) {
    
   frame <- data.frame(id = integer(), nobs = integer(), fix.empty.names = FALSE)
    
    for( i in id ) {
            file <- file.path(directory, paste(sprintf("%03d", as.numeric(i)), ".csv", sep=""))
            nob <- sum(complete.cases(read.csv(file)))
            
            frame[ nrow(frame) + 1, ] <- c(i, nob)
    }
    
    return(frame)
}