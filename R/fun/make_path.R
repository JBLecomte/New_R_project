################################################################################
### set path for data inptut and outputs
################################################################################

###-----------------------------------------------------------------------------
### make sure that directories exist
dir.create(here("data"), showWarnings = FALSE)
dir.create(here("data", "raw"), showWarnings = FALSE)
dir.create(here("data", "tidy"), showWarnings = FALSE)
dir.create(here("figures"), showWarnings = FALSE)

###-----------------------------------------------------------------------------
### Create a directory to store raw data
path_data_raw <- here("data", "raw")

###-----------------------------------------------------------------------------
### Create a directory to store tidy sacrois data
path_tidy_data <- here("data", "tidy")
dir.create(path_tidy_data, showWarnings = FALSE)

###-----------------------------------------------------------------------------
### Create a directory to store tidy cpue data
path_tidy_temp_data <- here("data", "tidy", "temp")
dir.create(path_tidy_temp_data, showWarnings = FALSE)
