#' Access files in the current app
#'
#' @param ... Character vector specifying directory and or file to
#'     point to inside the current package.
#'
#' @export
app_sys <- function(...){
    system.file(..., package = "custhealth")
}


#' Get all or one custhealth options
#'
#' This function is to be used inside the
#' server and UI from your app, in order to call the
#' parameters passed to \code{run_app()}.
#'
#' @param which NULL (default), or the name of an option
#' @importFrom shiny getShinyOption
#' @export
get_ch_options <- function(which = NULL){

    if (is.null(which)){
        getShinyOption("runtime_options")
    } else {
        if (length(which)>1){
            unlist(getShinyOption("runtime_options")[which])
        }
        else{
            getShinyOption("runtime_options")[[which]]
        }
    }
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @importFrom shiny addResourcePath
#' @noRd
add_external_resources <- function(path){

    addResourcePath('www', app_sys(path))
    # tags$link(rel = "stylesheet",type = "text/css",href = "www/bootstrap.css")
    # tags$link(rel = "stylesheet",type = "text/css",href = "www/custom.css")
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()

}
