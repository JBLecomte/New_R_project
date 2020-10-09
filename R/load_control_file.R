################################################################################
### Load the control file and extract the variable from it
################################################################################

### Load control file
controls <- controlfile_to_rlist("controls.ctl")

#############################################################
### General options
#############################################################
show_plots <- eval(parse(text=controls$show_plots))
save_plots <- eval(parse(text=controls$save_plots))
erase_plots <- eval(parse(text=controls$erase_plots))
output_plots <- controls$output_plots
erase_tidy_data <- eval(parse(text=controls$erase_tidy_data))
