
# Create the data
data <- Data(x=c(0.1, 0.5, 1.5, 3, 6, 8, 8, 8),
             y=c(0, 0, 0, 0, 0, 0, 1, 0),
             cohort=c(0, 1, 2, 3, 4, 5, 5, 5),
             doseGrid=
               c(0.1, 0.5, 1.5, 3, 6, 8,
                 seq(from=10, to=80, by=2)))


# In this example we define a rule for dose increments which would allow:
#   - doubling the dose if the last dose was below 20
#   - only increasing the dose by 1.33 if the last dose was equal or above 20
myIncrements <- IncrementsRelative(intervals=c(0, 20),
                                   increments=c(1, 0.33))

# Based on the rule above, we then calculate the maximum dose allowed
nextMaxDose <- maxDose(myIncrements,
                       data=data)

