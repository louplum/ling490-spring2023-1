# Load tupian data
cldf_practice_tupian <- read_csv("cldf-practice-tupian.csv")

# Load glottolog info
languoid <- read.csv("~/Desktop/ling590/01practice/week13/glottolog_languoid.csv/languoid.csv", stringsAsFactors=TRUE)

# Separate out latitude and longitude
languoid.latlong <- subset(languoid, select = c(id, latitude, longitude))

# Merge cldf_practice_tupian with languoid.latlong
cldf_practice_tupian <- merge(x = cldf_practice_tupian, y = languoid.latlong,
                              by.x = "Glottocode", by.y = "id") 
# Write new cldf-practie-tupian.csv
write.csv(cldf_practice_tupian, file = "cldf-practice-tupian-latlong")

# Add languoid to the repo
write.csv(languoid, file = "languoid")
