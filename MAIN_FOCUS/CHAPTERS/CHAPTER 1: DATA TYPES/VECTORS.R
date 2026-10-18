#==================================================
#==================================================
# VECTORS.....

# SECTION 1: CLASS OF THE VECTORS
a <- TRUE
class(a) # LOGICAL

b <- 12.8
class(b) # NUMERIC

c <- 2 + 3i
class(c) # COMPLEX

d <- "INDIA"
class(d) # CHARACTER

e <- 5L
class(e) # INTEGER

f <- charToRaw("Welcome")
class(f)



# SECTION 2: CREATING OF VECTORS
## A.1 CONCATANATION FUNCTION[c()]
a <- c(1,2,3,4,5,6,7,8) # NUMERIC VECTOR
print(a)

b <- c(TRUE,TRUE,FALSE) # LOGICAL VECTOR
print(b)

c <- c("ARPAN","SAGNIK","MODOn") # CHARACTER VECTOR
print(c)

d <- c(23,TRUE,"ARPAN") # DIFFERENT TYPES OF ELEMENTS IN A VECTOR
print(d)
## A.2 NAMING OF A VECTOR BY names() FUNCTION
vector <- c(10,20,30,40,50,12,23)
names(vector) <- c("ARPAN","ARPAN1","ARPAN2","ARPAN3","ARPAN4","ARPAN5","ARPAN6")
print(vector)

## B. COLON OPERATOR[(:)]
v1 <- (2:10) # ALWAYS THE DIFFERENCE OF THE CONSECUTIVE ELEMENT IS 1
v1

v2 <- 6.2 : 10.2 # EVEN IF IT IS THE DECIMAL NUMBER
v2

v3 <- 6.2 : 11 # THE LAST ELEMENT IS DISCARDED IF NOT SPECIFIED
v3

## C. SEQUENCE OPERATOR[seq()]
v1 <- seq(1,10,by=1)
v1

v2 <- seq(1,10,by=2)
v2

v3 <- seq(0,1,by=0.1)
v3

## D. REPLICATION FUNCTION[rep()]
d <- c("x","y")[rep(c(1,2,3,4),times=20)]
d

e <- c("x","y")[rep(c(1,2),times=20)]
e

## E> SAMPLE FUNCTION[sample()]:
vec <- c(sample(10:100,10,replace=T))
vec

## F.PASTE FUNCTION[paste()]:
vec <- paste(1:10,c("A","B"),sep="-")
vec

vec1 <- paste("A",1:10,sep="")
vec1

vec <- letters[1:10]
vec

vec1 <- LETTERS[1:10]
vec1

vec2 <- paste(vec,vec1,sep="-")
vec2

vec3 <- LETTERS[c(1,5,6)]
vec3

## ACCESSING THE ELEMENTS OF THE VECTORS...
x <- c(1,2,3,4,5,6,7,8,9)
x[3] # ACCESSING THE 3RD ELEMENT OF THE VECTOR

# ACCESSING THE ELEMENTS OF THE VECTORS WITH THE LOGICAL OPERATION
x[x > 5] # ACCESSING ELEMENTS GREATER THAN 5

x[x %% 2 == 0] # ACCESSING THE EVEN ELEMENTS OF THE VECTOR]
x[x %% 2 != 0] # ACCESSING THE ODD ELEMENTS OF THE VECTOR]
x[c(1,3,5)] # ACCESSING THE 1ST,3RD AND 5TH ELEMENTS OF THE VECTOR)]

days <- c("SUNDAY","MONDAY","TUESDAY","WEDNESDAY","THURSDAY","FRIDAY","SATURDAY")

days[c(-2,-5)]
days[c(0,0,0,0,0,0,1)] # ACCESSING THE 8TH ELEMENT OF THE VECTOR  )]
days[c(TRUE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE)] # ACCESSING THE 1ST ELEMENT OF THE VECTOR  )]
nums <- c(23,12,24,35,1,-9,10,0,12,23,45,67,89,9)
sort(nums) # SORTING THE ELEMENTS OF THE VECTOR IN ASCENDING ORDER
sort(nums,decreasing = TRUE) # SORTING THE ELEMENTS OF THE VECTOR IN DESCENDING)

color <- c("RED","BLACK","BLUE","YELLOW","GREEN")
sort.result <- sort(color)
sort.result

## RANK FUNCTION[rank()]:
# RANK FUNCTION IS USED TO FIND THE RANK OF THE ELEMENTS IN A VECTOR ACCPRDING TO THEIR ORDER IN VECTOR
num1 <- c(1,4,2,3,7,6,5,10)
rank(num1)

# ASSIGNS RANKS IN DECIMAL FORM IF ITEM OCCURS FOR MULTIPLE EVEN TIMES
num2 <- c(1,1,5,4,3,3,2,2,10,-10)
rank(num2)

# ASSIGNS THE SAME RANKS IF THE ITEM OCCURS FOR MULTIPLE ODD TIMES
num3 <- c(3,41,3,85,52,3,0,104,34)
rank(num3)

# FIRST OCCURRANCE WINS IF THEIR IS A TIE...
rank(num3,ties.method = "first")
# RANK IS DECIDED AT RANDOM BASIS FOR THE TIE SITUATION...
rank(num3,ties.method = "random")
#RANK IS DECIDED DEPENDING UPON THE MINIMUM RANK...
rank(num3,ties.method = "min")
# RANK IS DECIDED DSEPENDING UPON THE MAXIMUM RANK...
rank(num3,ties.method = "max")


###***COMMON MATHEMATICAL FUNCTIONS***
### MAXIMUM OF THE VECTOR
max(num3)
### MINIMUM OF THE VECTOR
min(num3)
### ABSOLUTE VALUE OF A AVECTOR
abs(nums)
### SQUARE ROOT OF A VECTOR
sqrt(num3)
### ADDING THE ELEMENTS OF THE VECtOR
sum(num3)
### MULTIPLICATION OF THE ELEMENTS OF THE VECTOR
prod(num3)
###ARITHMATIC OPERATIONS ON THE VECTOR
#### A+B,A-B,A*B,A/B,A^B
A<-c(1,2,3,4)
B<- c(5,6,7,8)
A+B
A-B
A*B
A/B
A^B
A%/%B # %/% IS USED TO HAVE THE INTEGER DIVISION BETWEEN TWO VECTORS


