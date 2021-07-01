##### PREAMBLE ------

## ENVIRONMENT LEEREN / WORKING DIRECTORY SETZEN

rm(list = ls())

setwd("/Users/dominiklawetzky/Desktop")



## PACKAGE NAMEN
packages <- c("ggplot2", "readxl", "dplyr", "multcomp", "tidyr", "knitr", "car", "psych", "tidyverse", "lmtest", "ggpubr", "ggstatsplot", "jsonlite", "pander", "abind", "RColorBrewer", "rococo", "shiny", "gvlma")



## PACKETE INSTALLIEREN, WENN NICHT INSTALLIERT
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}



## PAKETE LADEN
invisible(lapply(packages, library, character.only = TRUE))

library(report)

##### Orte schreiben -----


taunusstein <- data.frame(text = paste(sep = "<br/>",
                                       "<b><a href='https://anna-luehrmann.de/tour/taunusstein'>Taunusstein</a></b>",
                                       "9. August/22. August",
                                       "Auftakt- und Ende der Tour",
                                       "Details folgen"),
                          lng = 8.159880,
                          lat = 50.143028)

niedernhausen <- data.frame(text = paste(sep = "<br/>",
                                         "<b><a href='https://anna-luehrmann.de/tour/niedernhausen'>Niedernhausen</a></b>",
                                         "10. August",
                                         "Hier steht demnächst mehr",
                                         "Details folgen"),
                            lng = 8.314529,
                            lat = 50.161832)

idstein <- data.frame(text = paste(sep = "<br/>",
                                   "<b><a href='https://anna-luehrmann.de/tour/idstein'>Idstein</a></b>",
                                   "11. August",
                                   "Hier steht demnächst mehr",
                                   "Details folgen"),
                      lng = 8.263746,
                      lat = 50.219256)

badcamberg <- data.frame(text = paste(sep = "<br/>",
                                      "<b><a href='https://anna-luehrmann.de/tour/bad-camberg'>Bad Camberg</a></b>",
                                      "12. August",
                                      "Hier steht demnächst mehr",
                                      "Details folgen"),
                         lng = 8.265960,
                         lat = 50.298260)


hadamar <- data.frame(text = paste(sep = "<br/>",
                                   "<b><a href='https://anna-luehrmann.de/tour/hadamar'>Hadamar</a></b>",
                                   "13. August",
                                   "Hier steht demnächst mehr",
                                   "Details folgen"),
                      lng = 8.045833,
                      lat = 50.446248)

limburg <- data.frame(text = paste(sep = "<br/>",
                                   "<b><a href='https://anna-luehrmann.de/tour/limburg'>Limburg</a></b>",
                                   "14. August",
                                   "Hier steht demnächst mehr",
                                   "Details folgen"),
                      lng = 8.064733,
                      lat = 50.388132)

huenstetten <- data.frame(text = paste(sep = "<br/>",
                                       "<b><a href='https://anna-luehrmann.de/tour/huenstetten'>Hünstetten</a></b>",
                                       "15. August",
                                       "Hier steht demnächst mehr",
                                       "Details folgen"),
                          lng = 8.187541,
                          lat = 50.246343)

hohenstein <- data.frame(text = paste(sep = "<br/>",
                                      "<b><a href='https://anna-luehrmann.de/tour/hohenstein'>Hohenstein</a></b>",
                                      "16. August",
                                      "Hier steht demnächst mehr",
                                      "Details folgen"),
                         lng = 8.099813,
                         lat = 50.199104)

heidenrod <- data.frame(text = paste(sep = "<br/>",
                                     "<b><a href='https://anna-luehrmann.de/tour/heidenrod'>Heidenrod</a></b>",
                                     "17. August",
                                     "Hier steht demnächst mehr",
                                     "Details folgen"),
                        lng = 7.996635,
                        lat = 50.213436)

lorch <- data.frame(text = paste(sep = "<br/>",
                                 "<b><a href='https://anna-luehrmann.de/tour/lorch'>Lorch</a></b>",
                                 "18. August",
                                 "Hier steht demnächst mehr",
                                 "Details folgen"),
                    lng = 7.805987,
                    lat = 50.046262)

ruedesheim <- data.frame(text = paste(sep = "<br/>",
                                      "<b><a href='https://anna-luehrmann.de/tour/ruedesheim'>Rüdesheim</a></b>",
                                      "19. August",
                                      "Hier steht demnächst mehr",
                                      "Details folgen"),
                         lng = 7.931003,
                         lat = 49.981382)

eltville <- data.frame(text = paste(sep = "<br/>",
                                    "<b><a href='https://anna-luehrmann.de/tour/eltville'>Eltville</a></b>",
                                    "20. August",
                                    "Hier steht demnächst mehr",
                                    "Details folgen"),
                       lng = 8.120580,
                       lat = 50.025659)

walluf <- data.frame(text = paste(sep = "<br/>",
                                  "<b><a href='https://anna-luehrmann.de/tour/walluf'>Walluf</a></b>",
                                  "21. August",
                                  "Hier steht demnächst mehr",
                                  "Details folgen"),
                     lng = 8.15733,
                     lat = 50.038636)

badschwalbach <- data.frame(text = paste(sep = "<br/>",
                                         "<b><a href='https://anna-luehrmann.de/tour/bad-schwalbach'>Bad Schwalbach</a></b>",
                                         "22. August",
                                         "Hier steht demnächst mehr",
                                         "Details folgen"),
                            lng = 8.063370,
                            lat = 50.136068)


karte <- data.frame(ort = c("Taunusstein", "Niedernhausen", "Idstein", "Bad Camberg", "Hadamar", "Limburg", "Hünstetten", "Hohenstein", "Heidenrod", "Lorch", "Rüdesheim", "Eltville", "Walluf", "Bad Schwalbach", "Taunusstein"),
                    lng = c(taunusstein$lng, niedernhausen$lng, idstein$lng, badcamberg$lng, hadamar$lng, limburg$lng, huenstetten$lng, hohenstein$lng, heidenrod$lng, lorch$lng, ruedesheim$lng, eltville$lng, walluf$lng, badschwalbach$lng, taunusstein$lng),
                    lat = c(taunusstein$lat, niedernhausen$lat, idstein$lat, badcamberg$lat, hadamar$lat, limburg$lat, huenstetten$lat, hohenstein$lat, heidenrod$lat, lorch$lat, ruedesheim$lat, eltville$lat, walluf$lat, badschwalbach$lat, taunusstein$lat))


###### Karte erstellen -----

#install.packages("leaflet")
library(leaflet)


m <- leaflet() %>%
  addTiles() %>%
  setView(lng = hohenstein$lng, lat = hohenstein$lat, zoom = 9.5) %>%
  addMarkers(lng = taunusstein$lng, lat = taunusstein$lat, popup = taunusstein$text) %>%
  addMarkers(lng = niedernhausen$lng, lat = niedernhausen$lat, popup = niedernhausen$text) %>%
  addMarkers(lng = idstein$lng, lat = idstein$lat, popup = idstein$text) %>%
  addMarkers(lng = badcamberg$lng, lat = badcamberg$lat, popup = badcamberg$text) %>%
  addMarkers(lng = hadamar$lng, lat = hadamar$lat, popup = hadamar$text) %>%
  addMarkers(lng = limburg$lng, lat = limburg$lat, popup = limburg$text) %>%
  addMarkers(lng = huenstetten$lng, lat = huenstetten$lat, popup = huenstetten$text) %>%
  addMarkers(lng = hohenstein$lng, lat = hohenstein$lat, popup = hohenstein$text) %>%
  addMarkers(lng = heidenrod$lng, lat = heidenrod$lat, popup = heidenrod$text) %>%
  addMarkers(lng = lorch$lng, lat = lorch$lat, popup = lorch$text) %>%
  addMarkers(lng = ruedesheim$lng, lat = ruedesheim$lat, popup = ruedesheim$text) %>%
  addMarkers(lng = eltville$lng, lat = eltville$lat, popup = eltville$text) %>%
  addMarkers(lng = walluf$lng, lat = walluf$lat, popup = walluf$text) %>%
  addMarkers(lng = badschwalbach$lng, lat = badschwalbach$lat, popup = badschwalbach$text) %>%
  addPolylines(data = karte, lng = ~lng, lat = ~lat, color = "#f06464")
m  

m %>% addProviderTiles(providers$CartoDB.Positron)
