args <- commandArgs(trailingOnly = T)
srcDir <- args[1]
srcPath <- paste0(srcDir, "/", "libraries.txt") 
libraries <- read.csv(srcPath)

for (library in libraries) {
    install.packages(library, repos="http://cran.us.r-project.org")
}
