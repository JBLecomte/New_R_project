################################################################################
### Load the control file and extract the variable from it
################################################################################

### Load control file
controls <- controlfile.to.rlist("Controls.ctl")

#############################################################
### General options
#############################################################
show_plots <- eval(parse(text=controls$ShowPlots))
save_plots <- eval(parse(text=controls$SavePlots))
erase_plots <- eval(parse(text=controls$SavePlots))
output_plots <- controls$outputPlots
erase_coda <- eval(parse(text=controls$EraseCoda))
