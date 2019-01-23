V <- c(7,2,1,0,3,-1,-3,4)  #creating vector
A <- matrix(V, nrow = 4,ncol = 2) # converting into matrix
AT <- t(A) # creating the transpose of A

temp1 <- A%*%AT # matrix multiplication
print(temp1) # showing the result
dim(temp1) # checking the dimensions

temp2 <- AT%*%A # matrix multiplication
print(temp2) # showing the result
dim(temp2) # checking the dimension


solve(temp1) # calcultating the inverse
solve(temp2) # calculating the inverse


V <- c(V,c(-3)) # concaticating new value to V

B <- matrix(V,ncol = 3,nrow = 3) # creating 3-by-3 matrix
B

Binv <- solve(B) # calculating inverse of B
dd1 <- round(B%*%Binv)  # multiplying B with Binv
dd1
dd2 <- round(Binv%*%B)  # multiplying Binv with B
dd2
dd1==dd2



eigen(B) # calculating the eigen value of B
C <- eigen(B)$vectors # extracting eigen vectors
C%*%B # multiplying eigen vector with original values
B%*%C # multiplying eigen vector with original values

colnames(B) <- c("col_1","col_2","col_3") # naming columns
rownames(B) <- c("row_1","row_2","row_3") # naming rows
print(B) # checking names

B <- data.frame(B) # conversting matrix into data frame
class(B) # checking the class

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Question-2

v <- runif(1000,min = -1,max = 2) # generating random variables
h<- hist(v,breaks = 30) # creating a histogram

f <- h # copying into a new plot
f$counts <- cumsum(h$counts) # tarnsferring number of counts in each bin
plot(f) #ploting new histogram with cummulaive counts

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#Question-3
v <- runif(40*100,min = -1,max = 2) # generating random variables

M <- matrix(v,ncol = 40,nrow = 100) # creating matrix

x <- runif(100,min = -1,max = 2) # creating a vector x

x <- x[order(x)] # arranging x into order

y1 <- M[,2] # extracting 2nd column
y2 <- M[,3] # extracting 3rd column

plot(x,y1,pch=4,col="red",xlab = "vector x",ylab = "columns extracted from Matrix",main="Vlaue of Y vs vector X",type="l") #creating plot

lines(x,y2,col="blue") # drawing lines

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~``
#Question 4

M <- as.data.frame(M) # converting into data frame

result <- rowSums(M) # calculating sum

M <- cbind(M, result) # adding a new column


hist(M$result, breaks = 25,prob=TRUE,xlab="result",main="Central limit theorem",col="lightblue")



curve(dnorm(x,mean=mean(M$result),sd=sd(M$result)),add=TRUE,col="red",lwd=2) # using same parameters
