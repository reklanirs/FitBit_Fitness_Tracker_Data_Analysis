library(tidyverse)

daily_prefix <- '../Fitabase_Data_4.12.16-5.12.16/Daily/'
hourly_prefix <- '../Fitabase_Data_4.12.16-5.12.16/Hourly/'
daily_files <- c('dailyActivity_merged', 'dailyCalories_merged', 'dailyIntensities_merged', 'dailySteps_merged', 'sleepDay_merged')
hourly_files <- c('hourlyCalories_merged', 'hourlyIntensities_merged', 'hourlySteps_merged')


df1 <- read_csv(paste0(path_prefix, 'dailyActivity_merged.csv'))
head(df1)
df2 <- read_csv(paste0(path_prefix, 'sleepDay_merged.csv'))
df2<-rename(df2, Date=SleepDay)
df2<-mutate(df2, Date=substr(Date,1,9))

# Clean hourly files
hourly_calories <- read_csv(paste0(hourly_prefix, hourly_files[1], '.csv'))
hourly_intensities <- read_csv(paste0(hourly_prefix, hourly_files[2], '.csv'))
hourly_steps <- read_csv(paste0(hourly_prefix, hourly_files[3], '.csv'))
str(hourly_calories)
str(hourly_intensities)
str(hourly_steps)


