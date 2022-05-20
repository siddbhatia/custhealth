#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @importFrom htmltools tagList
#' @import shiny
#' @noRd
app_ui <- function(request) {
    tagList(
        div("Welcome")
    )
}
