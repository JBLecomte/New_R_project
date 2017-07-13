## Draw all plots TRUE/FALSE
$ShowPlots
TRUE

## Save the figures to disk TRUE/FALSE
$SavePlots
FALSE

## if the plots are saved what kind of output is desired. Choices are '' or 'Beamer' for a presentation friendly figure
$outputPlots
Beamer

## if true report will be automaticly generated
$make_report
TRUE

## Option to delete previous Bayesian analysis TRUE/FALSE
$EraseCoda
FALSE

## Make cross-validation TRUE/FALSE
$make.cross.validation
TRUE

## Ratio of data points used for the cross-validation from 0 to 1
## 0 = no points used for validation
## 1 = all points used for validation
$ratio_val
0.1


## Make prediction on a fine grid TRUE/FALSE
$make.prediction
TRUE

## Compute temperature range
$make.temperature.range
FALSE

## Numbers of MCMC chains
$n_chains
3

## Numbers of saved interations
$numSavedSteps
500

## Number to burn-in
$BurningSteps
50000

## Thinning of the chains
$thinSteps
100

## Special samplers
$Special_samplers
FALSE

## Choose the species: ARF_KG BOR_KG CAR_KG DOG_KG DOL_KG ENL_KG GSR_KG PAC_KG PEL_KG POP_KG RAT_KG ROL_KG RSR_KG RXL_KG SBF_KG SGR_KG SST_KG WWR_KG
$Species
ENL_KG

## Choose the type of data: Survey or Commercial
$Fleet
Survey

## Choose time scales scalar or space-separated vector here
$Year
2005 2007 2009 2011

## Model Choice: Compound Poisson Gamma (CPG), Compound NegativeBinomial Gamma (CNBG), or Delta-LogNormal (DLog).
$model_Obs
CPG

## None, Spatial, or SpatialTemporal (Temporal not yet implemented). If more than one, seperate by spaces
$model_Latent
SpatialTemporal

## Kernel: type of the spatial kernel. Choices are exponential or gaussian
$Kernel
exponential 

## Estimates the phi parameter if TRUE, and fix it if FALSE
## The phi parameter control the distance of the spatial correlation and can be hard to estimates
$estimate_phi
TRUE

## Type of grid for the spatial model: Regu or Iregu
$Grid
Regu 

## If Grid == Iregu choose the number of grid points
$n_grid
200

## Options are None, AR1 or AR2
$Dyna
AR1

## In cases where Dyna = None and more than one year is used. User can include a year effect: 'None', 'fixed' or 'random'
## A fixed effect will consist of estimating one parameter for each year versus a random effect for all the years. 
$Year_effect
fixed

## Load Covariates from the data.frame data. For now options are 'depth' and/or 'temperature' and/or 'sediment'  and/or 'salinity'
## They can both be added as a space-separated vector
$Cov
depth temperature

## Include a non-linear effect in the models TRUE/FALSE
$NonLi
FALSE

