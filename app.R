require(shiny)
require(pkgload)
require(jsonlite)
options(shiny.autoload.r=FALSE)

# renv::install()

# lapply(
#     paste("package:", names(sessionInfo()$otherPkgs), sep = ""),
#     detach,
#     character.only = TRUE,
#     unload = TRUE
# )
# rm(list=ls(all.names = TRUE))


pkgload::load_all()

# roxygen2::roxygenise(package.dir = ".")
# devtools::test(package.dir = ".")
# devtools::check()
# pkgdown:: build_site()

custhealth::app_run()


