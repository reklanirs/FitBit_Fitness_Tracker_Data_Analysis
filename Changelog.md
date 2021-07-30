# Changelog

This file contains the notable changes to the project data files.



## Version 0.2 (2021-07-28 17:38:17)

Data cleaning inside the Google sheet.

### Changes

 **`Daily_merged` file:**

- Change `ActicityDay` column into Date format.
- Change all columns except `Id` and `ActivityDay` into number format with two decimal places. (Select these columns and using Format --> Number)

- Sort data by `Id` first then by `ActivityDay`. (Using sort sheet function)
- Remove all `<name>.x` or `<name>.y` columns and only keep one column `<name>`.
- Remove column `StepTotal` as it is same with the column `TotalSteps`.
- Remove all rows with 0 `TotalSteps`. (Using filter in spreadsheet)
- Remove empty columns T-U
- Remove 1 duplicated row

**`Hourly_merged` file:**

- Change all fields except `Id` and `ActivityHour` into number format.
- Change `ActivityHour` into datetime format.
- Sort sheet by `Id` first then `ActivityHour`.

- Remove records with 0 `StepTotal`.

- Remove empty columns G-H
- Split column `ActivityHour` into two columns:`ActivityDay` and `ActivityHour` by space.



## Version 0.1 (2021-07-28 15:48:22)

Data merging inside a R notebook. For details, see `Fitbit_process.Rmd`.

### New

- Add new data table: `Daily_merged.csv`. Contains all files inside `Fitabase_Data_4.12.16-5.12.16/Daily`.
- Add new data table: `Hourly_merged.csv`. Contains all files inside `Fitabase_Data_4.12.16-5.12.16/Hourly`.

### Changes

- Change column name `ActivityDate` to `ActivityDay` in `dailyActivity_merged`.
- Remove suffix `12:00:00 AM` in column `SleepDay` in `dailySteps_merged.csv`.
- Change column name `SleepDay` to `ActivityDay` in `dailySteps_merged.csv`. 

