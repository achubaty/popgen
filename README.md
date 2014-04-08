# popgen

## interactive population genetics models in R

To run these apps you need to have `shiny` installed in Rstudio.

    install.packages("shiny")

### drift

To run the mutation app, open Rstudio and run:

    library(shiny)
    runApp("~/pathto/popgen/drift")

### mutation

To run the mutation app, open Rstudio and run:

    library(shiny)
    runApp("~/pathto/popgen/mutation")

### migration

To run the migration app, open Rstudio and run:

    library(shiny)
    runApp("~/pathto/popgen/migration")

### selection

To run the selection app, open Rstudio and run:

    library(shiny)
    runApp("~/pathto/popgen/selection")

### inbreeding

**note: there is currently an error with the inbreeding module**

To run the selection app, open Rstudio and run:

    library(shiny)
    runApp("~/pathto/popgen/imbreeding")

### combo: migration, mutation, selection

To run the selection app, open Rstudio and run:

    library(shiny)
    runApp("~/pathto/popgen/combo")
