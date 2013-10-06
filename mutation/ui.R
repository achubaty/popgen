library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Population Genetics Models: Mutation"),
  
  sidebarPanel(
    # navigation
    p(a("HOME", href="../index.html")),
    
    # Descriptive text
    p("Use the sliders below to explore the effects of changing parameters associated with mutation on the evolution of a population."),
    
    # equation
    p(img(src="equation.png")),
    
    # mutation rate A->a
    sliderInput("mu", "Mutation rate, μ:", min=0, max=0.001, value=0.0001, step=1*10^-5),
    
    # mutation rate a->A
    sliderInput("nu", "Mutation rate, ν:", min=0, max=0.001, value=0.00001, step=1*10^-5),
    
    # starting A allele frequency
    sliderInput("p0", "Initial allele frequency, p_0:", min=0, max=1, value=0.90, step=0.01),
    
    # generation time
    sliderInput("tmax", "Number of generations:", min=1, max=50000, value=10000, step=100)
  ),
  
  mainPanel(
    #textOutput("debug"),
    plotOutput("allelePlot"),
    plotOutput("genoPlot")
  )
))
