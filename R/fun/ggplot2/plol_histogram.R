fc_plot_histogram <- function(df_data,
                              variable, 
                              binwidth = NULL,
                              x_lab = NULL){
  
  if(is.null(binwidth)){
    plot_temp <- ggplot(data = df_data, aes_string(variable)) +
      geom_histogram() + xlab(x_lab) + ylab('Number')
  }
  
  if(!is.null(binwidth)){
    plot_temp <- ggplot(data = df_data, aes_string(variable)) +
      geom_histogram() + xlab(x_lab) + ylab('Number')
  }
  
  
  save_plot(plot = plot_temp,
            file_name = paste0('histogram_', variable),
            path = path_figure,
            output = outputPlots,
            Save = SavePlots)
  
  
  return(plot_temp)
}
