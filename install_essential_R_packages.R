install.packages("devtools", repos="http://cran.itam.mx")
# install.packages("dplyr", repos="http://cran.itam.mx")
# install.packages("tidyr", repos="http://cran.itam.mx")
# install.packages("ggplot2", repos="http://cran.itam.mx")
install.packages("readxl", repos="http://cran.itam.mx")
install.packages("readr", repos="http://cran.itam.mx")
install.packages("foreign", repos="http://cran.itam.mx")
install.packages("stringr", repos="http://cran.itam.mx")
install.packages("lubridate", repos="http://cran.itam.mx")
install.packages("shiny", repos="http://cran.itam.mx")
install.packages("caret", repos="http://cran.itam.mx")
install.packages("kernlab", repos="http://cran.itam.mx")
install.packages("randomForest", repos="http://cran.itam.mx")
install.packages("knitr", repos="http://cran.itam.mx")
install.packages("xtable", repos="http://cran.itam.mx")
install.packages("Rcpp", repos="http://cran.itam.mx")
install.packages("reshape2", repos="http://cran.itam.mx")
install.packages("RCurl", repos="http://cran.itam.mx")
install.packages("RJSONIO", repos="http://cran.itam.mx")
install.packages("caTools", repos="http://cran.itam.mx")
install.packages("rmarkdown", repos="http://cran.itam.mx")
install.packages("broom", repos="http://cran.itam.mx")
install.packages("tidyverse", repos="http://cran.itam.mx")
install.packages("shinydashboard", repos="http://cran.itam.mx")

pks <- c("devtools",
"dplyr",
"tidyr",
"ggplot2",
"readxl",
"readr",
"foreign",
"stringr",
"lubridate",
"shiny",
"caret",
"kernlab",
"randomForest",
"knitr",
"xtable",
"Rcpp",
"reshape2",
"RCurl",
"RJSONIO",
"caTools",
"rmarkdown",
"broom")

a <- unlist(lapply(pks, require, character.only = TRUE))

df_pks <- data.frame(pks = pks, loaded = a)
