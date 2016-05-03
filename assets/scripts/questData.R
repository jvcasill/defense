assessData.R

questData <- structure(list(week = 0:6, spanTotal = c(0, 91, 87, 87, 88, 89, 
88), engTotal = c(100, 11, 11, 15, 10, 11, 23), spanNat = c(0, 
42, 37, 39, 40, 40, 45), spanNonNat = c(0, 60, 69, 66, 63, 63, 
62), spanBetter = c(0, 66, 70, 65, 69, 61, 62), spanWorse = c(0, 
24, 26, 26, 28, 23, 23), spanSame = c(0, 37, 40, 45, 43, 44, 
47), rateSpeak = c(2.7, 3.8, 4.2, 4.6, 5.5, 5.3, 5.4), rateUnderstand = c(4.9, 
5.7, 6, 5.8, 6.1, 6.6, 6.7), rateOveral = c(3.5, 4.7, 4.9, 5.1, 
5.2, 5.5, 5.8)), class = c("tbl_df", "tbl", "data.frame"), row.names = c(NA, 
-7L), .Names = c("week", "spanTotal", "engTotal", "spanNat", 
"spanNonNat", "spanBetter", "spanWorse", "spanSame", "rateSpeak", 
"rateUnderstand", "rateOveral"))

questData$date <- "2015-6-25"
questData[questData$week == 1, 'date'] <- "2015-7-1"
questData[questData$week == 2, 'date'] <- "2015-7-8"
questData[questData$week == 3, 'date'] <- "2015-7-15"
questData[questData$week == 4, 'date'] <- "2015-7-22"
questData[questData$week == 5, 'date'] <- "2015-7-29"
questData[questData$week == 6, 'date'] <- "2015-8-5"
questData$date <- as.Date(questData$date)

questData %>%
  select(., week, date, useSpan = spanTotal, useEng = engTotal, speak = rateSpeak, understand = rateUnderstand, overall = rateOveral) %>%
  mutate(., speak = speak * 10, 
            understand = understand * 10, 
            overall = overall * 10) %>%
  gather(., key = var, value = value, -week, -date) -> test
  test$var <- as.factor(test$var)
  gvisMotionChart(test, idvar = "var", timevar = "date", 
     options = list(width=1000, height=500)) %>% plot()
