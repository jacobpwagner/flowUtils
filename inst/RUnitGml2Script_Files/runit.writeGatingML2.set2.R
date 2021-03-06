#############################################################
## This set tests Gating-ML 2.0 output.
#######################################
## It is based on runit.02.set2.R but this time, we 
## 1) Read the Gating-ML file into an empty enviroment
## 2) Save that enviroment into temporary Gating-ML 2.0 file
## 3) Empty the enviroment
## 4) Read the saved temporary Gating-ML file
## 5) Check that we retrieved all the gates with all the 
##    expected results correctly
#############################################################

fcsFile <-  system.file("extdata/Gml2/FCSFiles", "data2.fcs", package = "gatingMLData")
gateFile <- system.file("extdata/Gml2/Gating-MLFiles","gates2.xml", package = "gatingMLData")
csvFile <-  system.file("extdata/Gml2/ExpectedResults/set_2", package = "gatingMLData")

flowEnv=new.env()
read.gatingML(gateFile, flowEnv)
gateFile2 <- tempfile(fileext=".gating-ml2.xml")
write.gatingML(flowEnv, gateFile2)
flowEnv=new.env()
read.gatingML(gateFile2, flowEnv)
fcs <- read.FCS(fcsFile, transformation="linearize-with-PnG-scaling")

test.Cube3Du <- function()
{
  gateId  <- "Cube3Du"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Cube3Dul <- function()
{
  gateId  <- "Cube3Dul"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Cube3DuP <- function()
{
  gateId  <- "Cube3DuP"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Cube3DuPAsBool <- function()
{
  gateId  <- "Cube3DuPAsBool"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Ellipseca <- function()
{
  gateId  <- "Ellipseca"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Ellipsech <- function()
{
  gateId  <- "Ellipsech"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Ellipsecl <- function()
{
  gateId  <- "Ellipsecl"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Ellipseclb <- function()
{
  gateId  <- "Ellipseclb"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Ellipseua <- function()
{
  gateId  <- "Ellipseua"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Ellipseuh <- function()
{
  gateId  <- "Ellipseuh"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Ellipseul <- function()
{
  gateId  <- "Ellipseul"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Ellipseulb <- function()
{
  gateId  <- "Ellipseulb"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Ellipseulb2 <- function()
{
  gateId  <- "Ellipseulb2"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.HyperCube1 <- function()
{
  gateId  <- "HyperCube1"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.NotRectcl <- function()
{
  gateId  <- "NotRectcl"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1c <- function()
{
  gateId  <- "Poly1c"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1ca <- function()
{
  gateId  <- "Poly1ca"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1cab <- function()
{
  gateId  <- "Poly1cab"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1ch <- function()
{
  gateId  <- "Poly1ch"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1chb <- function()
{
  gateId  <- "Poly1chb"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1cl <- function()
{
  gateId  <- "Poly1cl"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1clb <- function()
{
  gateId  <- "Poly1clb"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1u <- function()
{
  gateId  <- "Poly1u"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1ua <- function()
{
  gateId  <- "Poly1ua"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1uab <- function()
{
  gateId  <- "Poly1uab"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1uab2 <- function()
{
  gateId  <- "Poly1uab2"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1uh <- function()
{
  gateId  <- "Poly1uh"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1uhb <- function()
{
  gateId  <- "Poly1uhb"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1ul <- function()
{
  gateId  <- "Poly1ul"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Poly1ulb <- function()
{
  gateId  <- "Poly1ulb"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Rectch <- function()
{
  gateId  <- "Rectch"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.RectchAndNotRectcl <- function()
{
  gateId  <- "RectchAndNotRectcl"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.RectchAndNotRectcl2 <- function()
{
  gateId  <- "RectchAndNotRectcl2"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Rectcl <- function()
{
  gateId  <- "Rectcl"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.RectclAgain <- function()
{
  gateId  <- "RectclAgain"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.RectclAndRectch <- function()
{
  gateId  <- "RectclAndRectch"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.RectclOrRectch <- function()
{
  gateId  <- "RectclOrRectch"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.RectMix1 <- function()
{
  gateId  <- "RectMix1"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Rectuh <- function()
{
  gateId  <- "Rectuh"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}

test.Rectul <- function()
{
  gateId  <- "Rectul"
  csvFile <- paste(csvFile, .Platform$file.sep, "Results_", gateId, ".txt", sep="")
  expectedResult <- read.csv(csvFile, header = FALSE)
  flowUtils:::performGateTest(gateId, fcs, expectedResult, flowEnv)
}
