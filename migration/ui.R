library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Population Genetics Models: Migration"),
  
  sidebarPanel(
    # Descriptive text
    p("Use the sliders below to explore the effects of changing parameters associated with migration on the evolution of an island population."),
    
    # equation
    p(img(src="equation.png")),
    
    # migration rate
    sliderInput("m", "Migration rate, m:", min=0, max=1.0, value=0.05, step=0.001),
        
    # starting A allele frequency on continent (mainland)
    sliderInput("pc", "Allele frequency on continent, p_C:", min=0, max=1, value=0.90, step=0.01),
    
    # starting A allele frequency on island
    sliderInput("p0", "Initial allele frequency on island, p_I_0:", min=0, max=1, value=0.10, step=0.01),
    
    # generation time
    sliderInput("tmax", "Number of generations:", min=1, max=1000, value=100, step=1)
  ),
  
  mainPanel(
    #textOutput("debug"),
    plotOutput("allelePlot"),
    plotOutput("genoPlot")
  )
))
