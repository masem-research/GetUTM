## Erzeugen des Testdatensatzes Coordinates

# data.frame erzeugen:
Coordinates <- data.frame(loc = c("DWD", "AUK"),
                          lon = c(50.10267, 174.7),
                          lat = c(8.74782, -36.9))
# Alternativ: Aus Datei importieren

# save dataset
usethis::use_data(Coordinates, overwrite = TRUE)

