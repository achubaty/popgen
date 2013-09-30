library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Population Genetics Models: Selection"),
  
  sidebarPanel(
    # navigation
    p(a("HOME", href="../index.html")),
    
    # Descriptive text
    p("Use the sliders below to explore the effects of changing parameters associated with selection on the evolution of a population."),
    
    # equation
    p(img(src="equation.png")),
    
    # relatvie fitnesses
    sliderInput("wAA", "Relative fitness of AA:", min=0, max=1.0, value=1.00, step=0.01),
    sliderInput("wAa", "Relative fitness of Aa:", min=0, max=1.0, value=1.00, step=0.01),
    sliderInput("waa", "Relative fitness of aa:", min=0, max=1.0, value=0.90, step=0.01),

    # starting A allele frequency on island
    sliderInput("p0", "Initial allele frequency of A:", min=0, max=1, value=0.10, step=0.01),
    
    # generation time
    sliderInput("tmax", "Number of generations:", min=1, max=1000, value=100, step=1)
  ),
  
  mainPanel(
    #textOutput("debug"),
    plotOutput("allelePlot"),
    plotOutput("genoPlot")
  )
))
