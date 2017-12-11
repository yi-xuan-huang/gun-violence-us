setwd(dir = 'C:/Users/yh401/Dropbox/Fall 2016-Data Visualization')

require(dygraphs)
require(xts)
require(magrittr)
mshooting <- read.csv('data2.csv', header = TRUE, sep = ',')

mshooting$Date <- as.Date(mshooting$Date, format="%m/%d/%y")

mshooting$Date <- as.yearmon(mshooting$Date)
mshooting <- xts(mshooting, order.by=mshooting[,1])

graph1 <- dygraph(mshooting, 
        main = "Number of Victims of Mass Shootings, Jan 2013 - Sep 2016", 
        ylab = "Number of Victims",
        xlab="Source: Mass Shooting Tracker") %>%
  dyOptions(stepPlot = TRUE,
            axisLineWidth = 1.5) %>%
  dyAxis("y", valueRange = c(0, 360)) %>%
  dyAxis("x", rangePad=2, 
         labelHeight =15,
         axisHeight = 45,
         axisLabelFontSize = 15,
         drawGrid = FALSE) %>%
  dyLegend(width=500)%>%
  dyAnnotation("2016-06-01", text = "A", tooltip = "The shooting in Orlando accounted for 50 killed and 53 injured.")   
graph1
  dyEvent("2016-06-01", label = "Orlando shooting accounted for ", labelLoc = "top")
graph1

 dyAnnotation("2016-06-01", text = "A", tooltip = "Orlando shooting happened")    
graph1 
  
  dyEvent("Jun 2016", label = "Omar") 




dyRangeSelector(graph1) 
  
   dyEvent("Jan 2016", "Korea", labelLoc = "bottom") 
%>% 

dyEvent(graph,"Jun 2016", label = "Omar") 

?dyAxis
