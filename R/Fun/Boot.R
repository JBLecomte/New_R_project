##########################################################
## First R file source, load useful packages and function
##########################################################
options(install.packages.check.source = "no")


#### Load required package, and install it if not
list.of.packages <- c('ggplot2', 'grid', 'scales', 'gridExtra', 'latex2exp', 'GGally', 'ggmcmc', 'RColorBrewer', # plot
                      'ggmap', 'maps', 'mapdata', 'maptools', # ploting maps
                      'dplyr', 'tidyr', # data manipulation
                      'knitr', 'rmarkdown', 'captioner', 'bookdown', 'pander', # dynamic document
                      'sp', 'rgdal', 'spatstat',  # spatial packages
                      # 'gpclib',
                      'nimble', 'coda',
                      #'rjags', 'rbugs', 'R2OpenBUGS', # BUGS packages
                      #'dclone',
                      'parallel' # paralell computing
) 

new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]

if(length(new.packages)) install.packages(new.packages, type = 'binary')
lapply(list.of.packages, require, character.only = TRUE)

##########################
### ggplot2 functions
##########################
### Sober plot theme
source('R/Fun/ggplot2/SimpleTheme_ggplot2.R')

### Function to produce customs boxplot
source('R/Fun/ggplot2/ggplot2_summary_fct_boxplot.R')

### Palette
source('R/Fun/ggplot2/my_palette.R')

### Palette
source('R/Fun/ggplot2/save_plot.R')

### Extract legend from a plot
source('R/Fun/ggplot2/extract_plot_legend.R')

##########################
### Other functions
##########################
### Load the utilities functions and control file variables
source('R/Fun/Utils/utilities.R')

### Unpack the object stored in a list
source('R/Fun/Utils/unpack.list.R')

### Compute the 25% quantile
source('R/Fun/Utils/quantile25.R')
source('R/Fun/Utils/quantile75.R')

### Standardization of a variable
source('R/Fun/Utils/Cov_Std.R')

### Cutting a variable
source('R/Fun/Utils/cut_continuous_variable.R')

### List objects in R + print their size
source('R/Fun/Utils/list_objects_and_size.R')

##########################
### Project's functions
##########################

