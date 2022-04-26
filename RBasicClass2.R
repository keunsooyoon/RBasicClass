install.packages("stringr")
library(stringr)

str_extract("홍길동35이순신45유관순25","[1-9]{2}")

str_extract_all("홍길동35이순신45유관순25","[1-9]{2}")

num <- scan()

num

sum(num)


name <- scan(what = character())

name

df = data.frame()
df = edit(df)


student <- read.table(file="student.txt")
student
names(student) <- c("번호","이름","키","몸무게")
student


student1 <- read.table(file="student1.txt", header=T)
student1


student1 <- read.table(file.choose(),header=TRUE)


student2 <- read.table(file="student2.txt", sep=";", header=TRUE)


student3 <- read.table(file="student3.txt", header=TRUE, na.strings="-")
student3


student4 <- read.csv(file="student4.txt", sep=",", na.string="-")
student4


install.packages("readxl")
library(readxl)


st_excel <- read_excel(path = "studentexcel.xlsx", sheet="student")
st_excel


x <- 10
y <- 20
z <- x * y

cat("x*y 의 결과는 ",z,"입니다.\n")

print(z)

install.packages("RSADBE")
library(RSADBE)


data("Severity_Counts")

sink("severity.txt")
severity <- Severity_Counts
severity
sink()



st_excel
st.df <- st_excel
write.csv(st.df, "stdf.csv", row.names = F, quote = F)


install.packages("writexl")
library(writexl)

write_xlsx(x=st.df,path="st_excel.xlsx", col_names=TRUE)

x <- 50
y <- 4
z <- x*y
if(x*y >= 40){
  cat("x*y의 결과는 40 이상입니다.\n")
  cat("x*y=", z)
} else {
  cat("x*y의 결과는 40 미만입니다. x*y = ",z,"\n")
}

score <- scan()

result <- "노력"


if(score >= 80){
  result <- "우수"
}
cat("당신의 학점은",result, score)


score <- scan()

ifelse(score >= 80,"우수","노력")


excel <- read.csv("excel.csv", header = T)
excel

q1 <-  excel$q1
q1


ifelse(q1 >= 3, sqrt(q1), q1)


ifelse(q1 >= 2 & q1 <= 4, q1 ^2, q1)


# switch()함수
empname <- scan(what="")

switch(empname,
       hong=250,
       lee=350,
       kim=200,
       kang=400)


# which() 함수


name <- c("kim","lee","choi","park")
which(name == "choi")

no <- c(1:5)
no
name <- c("홍길동","이순신","강감찬","유관순","김유신")
score <- c(85,78,89,90,74)
exam <- data.frame( no=no, name=name, score=score)
exam


which(exam$name == "유관순")


# for
i <- c(1:10)
for(n in i){
  print(n*10)
  print(n)
}


for (n in i) {
  if(n %% 2 == 0) {
    print(n)
  }
}



name <- c(names(exam))
name
for(n in name){
  print(n)
}


score <- c(85,95,98)
name <- c("hong","lee","kang")

i <- 1

for (s in score){
  cat(name[i], " -> ", s, "\n")
  i <- i + 1
}



#while

i = 0
while(i < 10) {
  i <- i + 1
  print(i)
}
