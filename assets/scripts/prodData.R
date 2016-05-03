# prod google vis

## @knitr loadProdLibs

# rm(list = ls(all = TRUE))

library(googleVis); library(dplyr); library(tidyr)




# prodShadow %>%
#   filter(., group == 'midd', picName == 0, labID != "approx" & labID != "error") %>% 
#   aggregate(vot ~ group + place + voicing + phon + session, FUN = mean, data = .) -> shadow

# prodShadow %>%
#   filter(., group == 'bi', picName == 0, labID != "approx" & labID != "error") %>% 
#   aggregate(vot ~ group + place + voicing + phon + session, FUN = mean, data = .) -> shadow.bi

# shadow$week <- "2015-6-25"
# shadow[shadow$session == 'prodShadow1', 'week'] <- "2015-7-1"
# shadow[shadow$session == 'prodShadow2', 'week'] <- "2015-7-8"
# shadow[shadow$session == 'prodShadow3', 'week'] <- "2015-7-15"
# shadow[shadow$session == 'prodShadow4', 'week'] <- "2015-7-22"
# shadow[shadow$session == 'prodShadow5', 'week'] <- "2015-7-29"
# shadow[shadow$session == 'prodShadow6', 'week'] <- "2015-8-5"
# shadow[shadow$session == 'prodShadow7', 'week'] <- "2015-8-12"
# shadow$week <- as.Date(shadow$week)

# shadow.bi <- data.frame(group = shadow.bi$group, place = shadow.bi$place, 
#                         voicing = shadow.bi$voicing, phon = shadow.bi$phon, 
#                         session = shadow$session, vot = shadow.bi$vot, week = shadow$week)

# df <- rbind(shadow, shadow.bi)

# dput(df)

## @knitr loadProdData

df <- structure(list(group = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 2L, 
2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), .Label = c("bi", 
"midd"), class = "factor"), place = structure(c(1L, 2L, 3L, 3L, 
1L, 2L, 1L, 2L, 3L, 3L, 1L, 2L, 1L, 2L, 3L, 3L, 1L, 2L, 1L, 2L, 
3L, 3L, 1L, 2L, 1L, 2L, 3L, 3L, 1L, 2L, 1L, 2L, 3L, 3L, 1L, 2L, 
1L, 2L, 3L, 3L, 1L, 2L, 1L, 2L, 3L, 3L, 1L, 2L, 1L, 2L, 3L, 3L, 
1L, 2L, 1L, 2L, 3L, 3L, 1L, 2L, 1L, 2L, 3L, 3L, 1L, 2L, 1L, 2L, 
3L, 3L, 1L, 2L, 1L, 2L, 3L, 3L, 1L, 2L, 1L, 2L, 3L, 3L, 1L, 2L
), .Label = c("bilabial", "coronal", "velar"), class = "factor"), 
    voicing = structure(c(1L, 1L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 
    2L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 
    1L, 1L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 
    2L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 
    1L, 1L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 
    2L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 2L
    ), .Label = c("voiced", "voiceless"), class = "factor"), 
    phon = structure(c(1L, 2L, 3L, 4L, 5L, 6L, 1L, 2L, 3L, 4L, 
    5L, 6L, 1L, 2L, 3L, 4L, 5L, 6L, 1L, 2L, 3L, 4L, 5L, 6L, 1L, 
    2L, 3L, 4L, 5L, 6L, 1L, 2L, 3L, 4L, 5L, 6L, 1L, 2L, 3L, 4L, 
    5L, 6L, 1L, 2L, 3L, 4L, 5L, 6L, 1L, 2L, 3L, 4L, 5L, 6L, 1L, 
    2L, 3L, 4L, 5L, 6L, 1L, 2L, 3L, 4L, 5L, 6L, 1L, 2L, 3L, 4L, 
    5L, 6L, 1L, 2L, 3L, 4L, 5L, 6L, 1L, 2L, 3L, 4L, 5L, 6L), .Label = c("b", 
    "d", "g", "k", "p", "t"), class = "factor"), session = structure(c(1L, 
    1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 
    3L, 3L, 4L, 4L, 4L, 4L, 4L, 4L, 5L, 5L, 5L, 5L, 5L, 5L, 6L, 
    6L, 6L, 6L, 6L, 6L, 7L, 7L, 7L, 7L, 7L, 7L, 1L, 1L, 1L, 1L, 
    1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 3L, 4L, 
    4L, 4L, 4L, 4L, 4L, 5L, 5L, 5L, 5L, 5L, 5L, 6L, 6L, 6L, 6L, 
    6L, 6L, 7L, 7L, 7L, 7L, 7L, 7L), .Label = c("prodShadow0", 
    "prodShadow1", "prodShadow2", "prodShadow3", "prodShadow4", 
    "prodShadow5", "prodShadow6", "prodShadow7"), class = "factor"), 
    vot = c(13.5418666666667, 16.7942, 27.3598666666667, 45.5389333333333, 
    32.0649333333333, 33.7566666666667, 11.1130201342282, 15.7846666666667, 
    24.9423489932886, 50.3282666666667, 34.6558666666667, 40.2872666666667, 
    8.29946666666667, 11.8766, 20.8038255033557, 42.6632666666667, 
    28.5672666666667, 27.3723333333333, -17.1506081081081, -14.9164666666667, 
    -2.06879194630873, 35.3492666666667, 23.2006, 27.703355704698, 
    -19.1496575342466, -18.9852666666667, -8.36893333333333, 
    42.0052, 19.9180536912752, 23.8824, -16.5652, -14.4143624161074, 
    -4.96, 44.7748666666667, 22.4636666666667, 26.2624666666667, 
    -24.9480666666667, -14.6588, -10.4662416107383, 40.3496666666667, 
    21.4016891891892, 23.5812666666667, -83.5872666666667, -84.4683108108108, 
    -69.9372916666667, 31.1619047619048, 16.5562, 14.8544666666667, 
    -83.5872666666667, -84.4683108108108, -69.9372916666667, 
    31.1619047619048, 16.5562, 14.8544666666667, -83.5872666666667, 
    -84.4683108108108, -69.9372916666667, 31.1619047619048, 16.5562, 
    14.8544666666667, -83.5872666666667, -84.4683108108108, -69.9372916666667, 
    31.1619047619048, 16.5562, 14.8544666666667, -83.5872666666667, 
    -84.4683108108108, -69.9372916666667, 31.1619047619048, 16.5562, 
    14.8544666666667, -83.5872666666667, -84.4683108108108, -69.9372916666667, 
    31.1619047619048, 16.5562, 14.8544666666667, -83.5872666666667, 
    -84.4683108108108, -69.9372916666667, 31.1619047619048, 16.5562, 
    14.8544666666667), week = structure(c(16611, 16611, 16611, 
    16611, 16611, 16611, 16617, 16617, 16617, 16617, 16617, 16617, 
    16624, 16624, 16624, 16624, 16624, 16624, 16631, 16631, 16631, 
    16631, 16631, 16631, 16638, 16638, 16638, 16638, 16638, 16638, 
    16645, 16645, 16645, 16645, 16645, 16645, 16652, 16652, 16652, 
    16652, 16652, 16652, 16611, 16611, 16611, 16611, 16611, 16611, 
    16617, 16617, 16617, 16617, 16617, 16617, 16624, 16624, 16624, 
    16624, 16624, 16624, 16631, 16631, 16631, 16631, 16631, 16631, 
    16638, 16638, 16638, 16638, 16638, 16638, 16645, 16645, 16645, 
    16645, 16645, 16645, 16652, 16652, 16652, 16652, 16652, 16652
    ), class = "Date")), .Names = c("group", "place", "voicing", 
"phon", "session", "vot", "week"), row.names = c(NA, 84L), class = "data.frame")


# setwd("~/Desktop/")

# write table
# write.table(df, "prodDataGVIS.csv", row.names = F, quote = F, sep = ",")


str(df)

## @knitr prodMotionPlot
df$session <- as.numeric(df$session) - 1

df %>%
  spread(., group, vot) -> test
  test$phon <- as.numeric(test$phon)
  plot(gvisMotionChart(test, idvar = "phon", timevar = "week", 
       color = "voicing", yvar = "midd", size = "Same size", 
       options = list(width=1200, height=500)))


  plot(gvisMotionChart(test, idvar = "phon", timevar = "week", 
       options = list(width=1200, height=500)))








