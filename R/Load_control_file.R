################################################################################
### Load the control file and extract the variable from it
################################################################################

### Load control file
controls <- controlfile.to.rlist("Controls.ctl")

#############################################################
### General options
#############################################################
ShowPlots <- eval(parse(text=controls$ShowPlots))
SavePlots <- eval(parse(text=controls$SavePlots))
ErasePlots <- eval(parse(text=controls$SavePlots))
outputPlots <- controls$outputPlots
EraseCoda <- eval(parse(text=controls$EraseCoda))
make.cross.validation <- eval(parse(text=controls$make.cross.validation))
make.prediction <- eval(parse(text=controls$make.prediction))
make.temperature.range <- eval(parse(text=controls$make.temperature.range))
make_report <- eval(parse(text=controls$make_report))

if(make.cross.validation){
  
  ratio_val <- as.numeric(controls$ratio_val)
  
}else{ratio_val <- NULL}

Parallel <- eval(parse(text=controls$Parallel))

if(Parallel){
  Parallel <- '_parallel'
}else{ Parallel <- NULL}


#############################################################
### Data options
#############################################################
Species <- controls$Species
Fleet <- controls$Fleet
Year <- as.numeric(controls$Year)
scale_biomass <- as.numeric(controls$scale_biomass)

if(is.na(scale_biomass)){
  scale_biomass <- NULL
}

###############################################################################################
### Observation model choices: Compound Poisson Gamma or Compound NegativeBinomial Gamma or Delta-LogNormal
###############################################################################################
model_Obs <- controls$model_Obs

### Option for CPG model
if (model_Obs == "CPG" |  model_Obs == "CNBG") {
  #Dstandard=TRUE Include sampling effort (duration, length of tows) directly in the model
  Dstandard <- TRUE
}


################################################################################
### Latent model choices
################################################################################
model_Latent <- controls$model_Latent

if(is.null(model_Latent)){
  model_Latent <- 'None'
}

## Type of model
model.is.spatial <- length(grep('Spatial', model_Latent)) > 0
model.is.temporal <- length(grep('Temporal', model_Latent)) > 0
include_NA_years <- eval(parse(text=controls$include_NA_years))

if(model.is.temporal == FALSE){
  include_NA_years <- FALSE
}

## Check if covariates has to be include or not
Cov <- sort(controls$Cov)
NonLi <- eval(parse(text=controls$NonLi))
include_depth <- length(grep('depth', Cov)) > 0
include_temp <- length(grep('temperature', Cov)) > 0
include_sed <- length(grep('sediment', Cov)) > 0
include_sal <- length(grep('sal', Cov)) > 0

if(!(NonLi == TRUE & (include_depth | include_temp | include_sal))){
  NonLi <- FALSE
}


### Dynamic model
n_year <- length(Year)

Dyna <- controls$Dyna

if(model.is.temporal == FALSE | n_year == 1){
  
  if(model.is.temporal == TRUE & n_year == 1){
    model.is.temporal <- FALSE
    model_Latent <- gsub("Temporal", "", model_Latent)
    warning('Only one year selected: model.is.temporal set to FALSE')
  }
  
  Dyna <- ''
  warning('model.is.temporal is FALSE: Dyna set to \'\'')
}

if(model.is.temporal == FALSE & n_year > 1){
  Year_effect <- controls$Year_effect
  Dyna <- 'None'
}else{ Year_effect <- 'None' }


### if the model is spatial load the Grid type
if(model.is.spatial) {
  ## Spatial options
  Grid <- controls$Grid  ## Type of grid
  
  if(Grid == 'Iregu'){
    n_grid <- as.numeric(controls$n_grid)
  }
  
  Kernel <- controls$Kernel ## Type of kernel
  estimate_phi <- eval(parse(text=controls$estimate_phi)) ## estimation or not of the phi parameter  
  
  if(estimate_phi == FALSE){
    
    phi <- 40 ### Spatial correlation parameter
  }
} else { 
  
  estimate_phi <- FALSE
  
}

################################################################################
### If TRUE specific samplers will be used for the MCMC chains
################################################################################
Special_samplers <- eval(parse(text=controls$Special_samplers))
