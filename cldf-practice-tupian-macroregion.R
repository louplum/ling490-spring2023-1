#### LING 490 - Last Tutorial! ####

# Today we will practice collaborating using git repositories.
# Clone the repo ling490-spring2023 Links to an external site in GitHub:

# Load the repo into your RStudio using the procedure from last class
# Read the cldf-practice-tupian.csv file into R
# Edit the document by including one of the following columns/values:

##Macro_Region/South America <- my task: data$Macro_Region <- "South America"
##Family/Tupian
##Country/Brazil | Paraguay (para1311)

# Produce new column with two letter language codes, removing the Language. 
# Write the dataset as a csv in your local repo with write.csv()
# Commit changes with comments and push them back to your forked remote repo
# Submit a pull request Links to an external site. with comments back to the 
# original repo in GitHub

setwd("~/Desktop/LING490-spring2023")

getwd()

library(readr)

data <- read_csv("cldf-practice-tupian.csv")

data$Macro_Region <- "South America"

View(data)
