
# Define the dose-grid
emptydata <- DataDual(doseGrid = c(1, 3, 5, 10, 15, 20, 25, 40, 50, 80, 100))

# Initialize the CRM model 
model <- DualEndpointRW(mu = c(0, 1),
                        Sigma = matrix(c(1, 0, 0, 1), nrow=2),
                        sigma2betaW = 0.01,
                        sigma2W = c(a=0.1, b=0.1),
                        rho = c(a=1, b=1),
                        smooth="RW1")

# Choose the rule for selecting the next dose 
myNextBest <- NextBestDualEndpoint(target=c(0.9, 1),
                                   overdose=c(0.35, 1),
                                   maxOverdoseProb=0.25)

# Choose the rule for the cohort-size 
mySize1 <- CohortSizeRange(intervals=c(0, 30),
                           cohortSize=c(1, 3))
mySize2 <- CohortSizeDLT(DLTintervals=c(0, 1),
                         cohortSize=c(1, 3))
mySize <- maxSize(mySize1, mySize2)

# Choose the rule for stopping
myStopping4 <- StoppingTargetBiomarker(target=c(0.9, 1),
                                       prob=0.5)
myStopping <- myStopping4 | StoppingMinPatients(40)

# Choose the rule for dose increments
myIncrements <- IncrementsRelative(intervals=c(0, 20),
                                   increments=c(1, 0.33))

# Initialize the design
design <- DualDesign(model = model,
                     data = emptydata,
                     nextBest = myNextBest,
                     stopping = myStopping,
                     increments = myIncrements,
                     cohortSize = mySize,
                     startingDose = 3)
  
  