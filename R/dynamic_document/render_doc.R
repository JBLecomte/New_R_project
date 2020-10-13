################################################################################
### render document
################################################################################

###-----------------------------------------------------------------------------
### render Rmd file in doc directory
rmarkdown::render(input = here(paste0("R/dynamic_document/template.rmd")),
                  output_dir = here("doc"))

###-----------------------------------------------------------------------------
### render xaringan Rmd file in doc directory
### there is no ifremer logo because the presentation in self contained
rmarkdown::render(input = here(paste0("R/dynamic_document/talk_ifremer_long_banner/talk_ifremer_long_banner.Rmd")),
                  output_dir = here("doc"),
                  xaringan::moon_reader(self_contained = TRUE,
                                        css = here(paste0("R/dynamic_document/talk_ifremer_long_banner/theme.css"))))
                  
###-----------------------------------------------------------------------------
### render xaringan Rmd file in doc directory
### there is ifremer logo because the presentation in NOT self contained
rmarkdown::render(input = here(paste0("R/dynamic_document/talk_ifremer_long_banner/talk_ifremer_long_banner.Rmd")),
                  xaringan::moon_reader(self_contained = FALSE,
                                        css = here(paste0("R/dynamic_document/talk_ifremer_long_banner/theme.css"))))
