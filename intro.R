# Variable assignment
myX <- 5
myX

# Create a vector
myvector <- c(3,5,7)
myvector

# Data Type: List
myvector <- c(3,"Tp53",7)
myvector

# Data Type: Factors
gender <- c("male", "male", "female", "female", "female")
gender <- factor(gender)
gender

# Data Type: Matrix
mymatrix <- matrix(c(1:6), nrow=3, ncol=2)
mymatrix

# Data Type: Dataframe
mydataframe <- as.data.frame(mymatrix)
mydataframe

# Data Type: Dataframe: Columns name
names(mydataframe) <- c("col1",  "col2")
mydataframe

# Data Type: Dataframe: Rows name
row.names(mydataframe) <- mydataframe[,1]
mydataframe

# Data Wrangling: Indexing
mymatrix <- matrix(c(1:6), nrow=3, ncol=2)
mymatrix 

# Indexing: Returns element in row 1 and column 2
mymatrix[1,2]

# Indexing: return all elements in row 1
mymatrix[1,]

# Indexing: return all elements in column 1
mymatrix[,1] 

# Data Wrangling: Change Data Type
myvector <- c(3,5,7)
myvector
myvector <- as.character(myvector)
myvector

# Data Wrangling: Apply function - row sums
apply(mymatrix,1,sum)

# Data Wrangling: Apply function - column sums
apply(mymatrix,2,sum)

# Operators: Arithmetic
3+5 #Addition
3-1 #Substration
5*5 #Multiplication
10/2 #Division
3^2 #Exponent
9%%2 #Module(remainder)

# Data import from text file
# mydata <- read.table(file="MyFile",header=TRUE,sep=",")
# head(mydata)

# Data import from Excel
# install.packages("xlsx") #Install package if needed
# library("xlsx")
# mydata <- read.xlsx("myexcel.xlsx",sheetIndex=1) #Read in the 1st worksheet
# mydata <- read.xlsx("myexcel.xlsx",sheetName="mysheet") #Read worksheet named "mysheet"

# Data export
# write.table(x=mydataframe,file="MyFile.txt",sep="\t")

# Workspace: save image 
save.image(file="introR.RData")

# Exercise: Import Data
mydf <- read.table("data/Rcoursetestdata1.csv", header=TRUE,  row.names=1, sep=",")
head(mydf)

# Exercise: Basic Stats
summary(mydf)

# Exercise: Transposing Data
mymatrix <- as.matrix(mydf)
myTmatrix<- t(mymatrix) #t as for transponse
myTdf <- as.data.frame(myTmatrix) #as data frame again

# Exercise: to explore later (ggplot2)
## Install and Load ggplot2
install.packages("ggplot2") #Install if needed
library("ggplot2")

## Load some data
data("midwest",package="ggplot2")

## Plotting
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
   geom_point(aes(col=state, size=popdensity)) + 
   labs(y="Population", 
       x="Area", 
       title="Scatterplot", 
       caption = "Source: midwest")
gg
