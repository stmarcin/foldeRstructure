#' Create internal folder structure
#' 
#' @description This function creates an internal structure of working directory for RStudio projects following Martin Chan´s 
#' suggestion https://martinctc.github.io/blog/rstudio-projects-and-working-directories-a-beginner's-guide/
#' 
#' 
#' @param Functions Bolean Whether to create a subfolder Functions within Script folder. TRUE by default
#' @param Rmd Bolean Whether to create a subfolder Rmd within Output folder. TRUE by default
#' @param html Bolean Whether to create a subfolder html within Output folder. TRUE by default
#' @param pdf Bolean Whether to create a subfolder pdf within Output folder. TRUE by default
#' 



foldeRstructure <- function(Functions = TRUE, Rmd = TRUE, html = TRUE, pdf = TRUE)   {
      
      if( Rmd == FALSE & html == TRUE & pdf == TRUE ) stop('Rmd has to be TRUE if you want to create html and pdf subfolders')
      if( Rmd == FALSE & html == TRUE & pdf == FALSE ) stop('Rmd has to be TRUE if you want to create html subfolder')
      if( Rmd == FALSE & html == FALSE & pdf == TRUE ) stop('Rmd has to be TRUE if you want to create pdf subfolder')
      
      
      dir.create(paste(here::here(), "Data", sep = "/"), showWarnings = FALSE)
      dir.create(paste(here::here(), "Script", sep = "/"), showWarnings = FALSE)

      if(Functions == TRUE){

            dir.create(paste(here::here(), "Script", "Functions", sep = "/"), showWarnings = FALSE)

      }


      dir.create(paste(here::here(), "Output", sep = "/"), showWarnings = FALSE)

      dir.create(paste(here::here(), "Output", "img", sep = "/"), showWarnings = FALSE)
      dir.create(paste(here::here(), "Output", "data", sep = "/"), showWarnings = FALSE)

      if(Rmd == TRUE){
            dir.create(paste(here::here(), "Script", "Rmd", sep = "/"), showWarnings = FALSE)

            if (html == TRUE) {
                  dir.create(paste(here::here(), "Output", "html", sep = "/"), showWarnings = FALSE)
            }

            if (pdf == TRUE) {
                  dir.create(paste(here::here(), "Output", "pdf", sep = "/"), showWarnings = FALSE)
            }

      }
      
}
