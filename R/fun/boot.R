################################################################################
### First R file source, load useful packages and function
################################################################################

options(install.packages.check.source = "yes")

###-----------------------------------------------------------------------------
#### Load required package, and install it if not
list_of_packages <- c( "tidyverse", "here", "lubridate", "remotes",
                       # plot
                       "grid", "scales", "gridExtra", "latex2exp", "GGally", "ggthemes", "gghighlight",
                       # plotting maps
                       "maps", "mapdata", "maptools",
                       # dynamic document
                       "knitr", "rmarkdown", "captioner", "bookdown", "pander", "flextable", 
                       # spatial packages
                       "sf", "ggsn",
                       "JBUtilities") 


remotes::install_github('JBLecomte/JBUtilities', force = FALSE)

JBUtilities::InstallPackages(list_of_packages)
lapply(list_of_packages, library, character.only = TRUE)


###-----------------------------------------------------------------------------
### Load control file
source(here("R/load_control_file.R"))

###-----------------------------------------------------------------------------
### Load control file
source(here("R/fun/make_path.R"))

###-----------------------------------------------------------------------------
### ggplot2 functions
###-----------------------------------------------------------------------------

### Sober plot theme
source(here("R/Fun/ggplot2/SimpleTheme_ggplot2.R"))

### Function to produce customs boxplot
source(here("R/Fun/ggplot2/ggplot2_summary_fct_boxplot.R"))

### Palette
source(here("R/Fun/ggplot2/my_palette.R"))

### Palette
source(here("R/Fun/ggplot2/save_plot.R"))

### Extract legend from a plot
source(here("R/Fun/ggplot2/extract_plot_legend.R"))

### Extract legend from a plot
source(here("R/Fun/ggplot2/print.plot.R"))

###-----------------------------------------------------------------------------
### Other functions
###-----------------------------------------------------------------------------

### Load the utilities functions and control file variables
source(here("R/Fun/Utils/utilities.R"))

### Unpack the object stored in a list
source(here("R/Fun/Utils/unpack.list.R"))

### Compute the 25% quantile
source(here("R/Fun/Utils/quantile25.R"))
source(here("R/Fun/Utils/quantile75.R"))

### Standardization of a variable
source(here("R/Fun/Utils/Cov_Std.R"))

### Cutting a variable
source(here("R/Fun/Utils/cut_continuous_variable.R"))

### List objects in R + print their size
source(here("R/Fun/Utils/list_objects_and_size.R"))

###-----------------------------------------------------------------------------
### Project's functions
###-----------------------------------------------------------------------------

invisible(purrr::map(paste0(c("R/fun/project/"),
                            list.files(c("R/fun/project"), "*.R$")), source))
