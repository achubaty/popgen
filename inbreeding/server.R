library(shiny)

# Define server
shinyServer(function(input, output) {
  
  alleleFreq <- function(bigF, p0, tmax) {
    genos <- cbind(numeric(tmax), numeric(tmax), numeric(tmax))
    names(genos) <- c("AA", "Aa", "aa")
    genos$AA[1] <- p0
  
    for (t in 1:(tmax-1)) {
      p[t+1] <- p0
      
    }
    
    return(p)
  }
  
  p <- reactive({ alleleFreq(bigF=as.numeric(input$bigF), p0=as.numeric(input$p0), pc=as.numeric(input$pc), tmax=as.numeric(input$tmax)) })
  
  colours <- c("darkred", "purple", "blue")
  
  output$allelePlot <- renderPlot({
    par(mar=c(5,5,1,1))
    plot(1:input$tmax, p(), type="l", xlim=c(0,input$tmax), ylim=c(0,1), xlab="Generation", ylab="Allele frequency", col=colours[1], lty=1, lwd=3, cex.lab=2)
    points(1:input$tmax, 1-p(), type="l", col=colours[3], lty=3, lwd=3)
    abline(h=input$pc, lty=3, lwd=3)
    legend("topright", legend=c("A", "a"), col=colours[c(1,3)], lty=c(1,3), lwd=3, cex=2)
  })
  
  output$genoPlot <- renderPlot({
    par(mar=c(5,5,1,1))
    plot(1:input$tmax, p()^2, type="l", xlim=c(0,input$tmax), ylim=c(0,1), xlab="Generation", ylab="Genotype frequency", col=colours[1], lty=1, lwd=3, , cex.lab=2)
    points(1:input$tmax, (1-p())^2, type="l", col=colours[3], lty=3, lwd=3)
    points(1:input$tmax, 2*p()*(1-p()), type="l", col=colours[2], lty=2, lwd=3)
    legend("topright", legend=c("AA", "Aa", "aa"), col=colours, lty=c(1,2,3), lwd=3, cex=2)
  })
  
  # debug only
  output$debug <- renderText({ p() })
})
