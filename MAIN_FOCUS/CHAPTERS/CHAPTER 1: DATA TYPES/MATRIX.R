# ==============================================================================
# ==============================================================================
# MATRICES....
# ==============================================================================
# ==============================================================================

# ==============================================================================
# 1.CREATING THE MATRICES
# ==============================================================================
# 1.A CREATING MATRICES WITH MATRIX FUNCTION and commonly used vectors
M1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
M2 <- matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3,byrow = FALSE)
# BY DEFALT byrow IS TRUE, SO IT WILL FILL THE MATRIX BY ROWS, IF WE WANT TO FILL IT BY COLUMNS THEN WE HAVE TO SET byrow = FALSE
M1
M2
# THERE IS ANOTHER ARGUMENT WHICH IS CALLED dimnames , WHICH IS USED TO SET THE ROW AND COLUMN NAMES OF THE MATRIX....
M3 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, dimnames = list(c("Row1", "Row2"), c("Col1", "Col2", "Col3")))
M3
# 1.B CREATING THE MATRICES WITH rbind() AND cbind() FUNCTIONS
a <- 1:5
b <- 2:7
x <- cbind(a,b)
#Warning message:
# In cbind(a, b) :
#    number of rows of result is not a multiple of vector length (arg 1)
a <- 1:6
x <- cbind(a,b)
x

y <- rbind(a,b)
y
# ==============================================================================
# DON'T KNOW ABOUT CBIND AND RBIND FUNCTIONS...THEN YOU CAN ONLY SAVE YOURSELF
# ==============================================================================
m <- cbind(1, 1:7) # the '1' (= shorter vector) is recycled
m
m <- cbind(m, 8:14)[, c(1, 3, 2)] # insert a column
m
cbind(1:7, diag(3)) # vector is subset -> warning

cbind(0, rbind(1, 1:3))
cbind(I = 0, X = rbind(a = 1, b = 1:3))  # use some names
xx <- data.frame(I = rep(0,2))
cbind(xx, X = rbind(a = 1, b = 1:3))   # named differently

cbind(0, matrix(1, nrow = 0, ncol = 4)) #> Warning (making sense)
dim(cbind(0, matrix(1, nrow = 2, ncol = 0))) #-> 2 x 1

## deparse.level
dd <- 10
rbind(1:4, c = 2, "a++" = 10, dd, deparse.level = 0) # middle 2 rownames
rbind(1:4, c = 2, "a++" = 10, dd, deparse.level = 1) # 3 rownames (default)
rbind(1:4, c = 2, "a++" = 10, dd, deparse.level = 2) # 4 rownames

## cheap row names:
b0 <- gl(3,4, labels=letters[1:3])
bf <- setNames(b0, paste0("o", seq_along(b0)))
df  <- data.frame(a = 1, B = b0, f = gl(4,3))
df. <- data.frame(a = 1, B = bf, f = gl(4,3))
new <- data.frame(a = 8, B ="B", f = "1")
(df1  <- rbind(df , new))
(df.1 <- rbind(df., new))
stopifnot(identical(df1, rbind(df,  new, make.row.names=FALSE)),
          identical(df1, rbind(df., new, make.row.names=FALSE)))
