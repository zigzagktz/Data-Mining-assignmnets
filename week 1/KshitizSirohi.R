
#PROBLEM 2

getwd()  # extract the working directory

setwd("C:/Users/ksiro/Documents/Code/R") # setting the working directory

getwd() # checking new directory

firstfile <- file("FingersAndCars.txt") # creating the text file

vv <- rep(c(1,2,3),3) # Vector with repetative 1,2,3

length(vv) # the length of the vector vv

 save(vv,file="vv.RData") #saving the vector file
 
save(vv,file="vv.txt",ascii = TRUE) #saving the vector file as ascii value
 
list.files() # output the content of current directory

setwd("C:/Users/ksiro/Documents") # setting random directory

vv <- list.files()  # assigning value to varibale 'vv'

class(vv) # checking the class of the varibale vv

str(vv)# checking the stucture of the varibale vv

mode(vv) # checking the mode of the variabel vv

rm(vv) # removing the object vv

setwd("C:/Users/ksiro/Documents/Code/R")# again changing directory

load("vv.RData") # loading the data as R file

print(vv)

rm(vv) # removing vv again

load("vv.txt") # loading data from the text file.

print(vv) # reading the value of vv

save.image()

##-------------------------------------------------------------------------------

#PROBLEM 3

a <- runif(3*4,min = -3,max=3) #random number generated
A <- matrix(a,nrow=3,ncol=4)  # Matrix created
B <- A-1                      # subtracting 1
C <- A*2                      # multiplying 2
TA <- t(A)                    # Taking tarnspose of A
ATA <- A%*%TA                 # Matrix Multiplication 
dim(ATA)                      # finding dimension
TAA <- TA%*%A                 # Matrix Multiplication
dim(TAA)                      # finding dimension

##-------------------------------------------------------------------------------

#PROBLEM 4

a <- runif(4*4, min=.01,max=.2) #geneate the random numbers 

B <- matrix(a,nrow=4,ncol=4) #make the matrix of those numbers.

diag(B) <- c(1,2,3,4) #imputing 1,2,3,4 in diagonal of B

BINV <- solve(B) #generating a inverse matrix

round((BINV %*% B),2) #testing the result 

EIGENB <- eigen(B) #calcuates the eigen value

EIGENBINV <- eigen(BINV) #calcuate eigen value for BINV

t <- t(B) # taking the transpose of matrix B

EIGENTARANSPOSEB <- eigen(t) # calculating the eigen value