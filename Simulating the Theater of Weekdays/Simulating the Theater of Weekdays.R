########################################################################
################ Simulating the Theater of Weekdays  ###############
########################################################################

# Cost for adults and children
ticket_cost <- 30 
ticket_cost_child <- 15

movies <- c('Brid Box', 'Red Notice', 'RUN','VIVO','Secret magic Control Agency ')

# How many screens does the theater have? (assume 1 per movie)
screens <-5

# How many seats does each theater hold
seats  <- 50 
# Store totals for each day
week_days <-rep(0, 7)  

current_total <- 0 
total<-0
#______________________________________
# iterate through the week
for (i in week_days) {
  
  # Keep track of total revenue for the day
  
  
  # iterate through the amount of screens on a particular day
  for (y in 1:screens) {
    
    # Calculate how many adults and children are watching the movie
    visitors_adults <- sample(seats, 1)
    visitors_children <- sample(abs(visitors_adults-seats),1)
    
    # Calculate the revenue for adults and children
    current_total <- current_total + visitors_adults*30 + visitors_children*15
    
    # Calculate revenue, and add to running total for the day
    
    
  }
  # Save total to the corresponding day
  total <-c (total,current_total)
  current_total <- 0
}

# Make a barchart showing total revenue per day
total <- total[-1]
names(total) <- c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")
total

barplot( total,
         main = "Total revenue per day",
         xlab = "Days",
         ylab = "Revenue",
         col = "pink"
)
# Make any other chart

plot(total, xaxt="n", type="b", col="blue", main = 'Total Revenue
Per Day',xlab = "Days",
     ylab = "Revenue" )

axis(1,at = 1:7, labels = names(total))


# Which day had the highest revenue?

paste("The highest revenue is" , max(total), "$ on" , names(which.max(total)))

