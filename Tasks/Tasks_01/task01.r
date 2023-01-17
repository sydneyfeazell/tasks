# ç
library(swirl)
swirl()
swirl()
x <- 9
sydneyfeazell
getwd()
1
ls()
5+7
x <- 5+7
x
y <- x-3
y
z <- c(1.1,9,3.14)
?c
z
c(z,555,z)
z*2+1000
my_sqrt <- sqrt(z-1)
2
my_div
c(1,2,3,4)+c(0,10,100)
list.files()
?list.files
args(list.files)
old.dir <- getwd()
dir.create("testdir")
setwd("testdir")
file.create("mytest.R")
file.exists("mytest.R")
file.info("mytest.R")
file.rename(from = "mytest.R", to = "mytest2.R")
file.copy(from = "mytest.R", to = "mytest3.R")
file.copy("mytest2.R", "mytest3.R")
file.path("folder1", "folder2")
?dir.create
dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)
setwd(old.dir)
1
3 
2
1:20
pi:10
15:1
?':'
seq(1,20)
seq(0,10, by=0.5)
my_seq <- seq(5,10, length=30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0, times =40)
rep(c(0,1,2), each = 10)
x*3 <- c(44,NA,5,NA)
x*3
y <- rnorm(1000)
z <- rep(NA, 1000)
my_data <- sample(c(y,z), 100)
is.na(my_data)
my_na <- is.na(my_data)
my_na
my_data == NA
sum(my_na)
0/0
Inf-Inf
6
x[1:10]
3  5
y <- x[!is.na(x)]
1
x[x > 0]
x[!is.na(x) & x > 0]
x[c(3,5,7)]
x[3000]
x[-c(2,10)]
vect <- c(foo = 11, bar = 2, norf = NA)
names(vect)
vect[c(11,2,NA)]
vect2 <- c(11,2,NA)
names(vect2) <- c("foo", "bar","norf")
identical(vect, vect2)
vect["bar"]
1
my_vector
':'
c(1:20)
my_vector(1,2,3)
"my_vector"
my_vector <- 1:20
dim(my_vector)
length(my_vector)
dim(my_vector) <- c(4,5)
dim(my_vector)
attributes(my_vector)
my_vector
class(my_vector)
my_matrix <- my_vector
?matrix
matrix("4 rows","5 columns")
identical(my_matrix, my_matrix2)
patients <- c("Bill","Gina","Kelly", "Sean")
cbind(patients, my_matrix)
my_data <-data.frame(patients, my_matrix)
cnames <-c("patient","age","weight","bp","rating","test")
colnames(my_data) <-cnames
my_data
2 1 
TRUE==TRUE
(FALSE == TRUE) ==FALSE
6==7
6<7
10<=10
4
2
3
\
5 = (!TRUE) = 7
5!FALSE=7
5=7
5 (not false) = 7
!5==7
3
1
FALSE & FALSE
TRUE & c(TRUE,FALSE,FALSE)
TRUE && c(TRUE,FALSE,FALSE)
TRUE | c(TRUE,FALSE,FALSE)
TRUE || c(TRUE,FALSE,FALSE)
5>8 || 6!=8 && 4>3.9
4
2
isTRUE(6>4)
4
identical('twins','twins')
3
xor(5==6,!FALSE)
3
ints <- sample(10)
ints
ints>5
which(ints>7)
4
any(ints<0)
all(ints>0)
2
2
1
9
Sys.Date()
mean(c(2,4,5))
demo()
swirl()
library(swirl)
swirl()
sydneyfeazell
1
