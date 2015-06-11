render_pres <- function(){
  unlink("output/*", recursive = TRUE)
  library(rmarkdown)
  render("index.Rmd", output_dir="output")
  render("dplyr.Rmd", output_dir="output")
  file.copy('img', "output", recursive = TRUE)
}