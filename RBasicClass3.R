# 사용자 정의 함수

f1 <- function() {
  cat("매개변수가 없는 함수")
}

f1()

f3 <- function(x,y) {
  add <- x + y
  return(add)
}
add <- f3(10,20)
add

test <- read.csv("test.csv",header=TRUE)
head(test)

summary(test)

str(test)

table(test$A)


data_pro <- function(x) {
  for (idx in 1: length(x)) {
    cat(idx,"번째 컬럼의 빈도 분석 결과")
    print(table(x[idx]))
    cat("\n")
  }
  
  for(idx in 1:length(x)){
    f <- table(x[idx])
    cat(idx, "번째 컬럼의 최대값/최소값\n")
    cat("max = ", max(f), "min = ",min(f), "\n")
  }
}
data_pro(test)


library(RSADBE)
data("Bug_Metrics_Software")

Bug_Metrics_Software[,,1]

#행별 합계
rowSums(Bug_Metrics_Software[,,1])

#행별 평균
rowMeans(Bug_Metrics_Software[,,1])

#열별 합계
colSums(Bug_Metrics_Software[,,1])

#열별 평균
colMeans(Bug_Metrics_Software[,,1])


seq(-2,2,by=.2)

vec <- 1:10
min(vec)


# 난수 발생

n <- 1000
# 표준 정규 분포로 난수 발생
rnorm(n,mean = 0, sd = 1)

hist(rnorm(n, mean=0, sd = 1))


#균등 분포
n <- 1000

runif(n, min=0,max=10)
hist(runif(n, min=0,max=10))



# 집합 관련 내장 함수

x <- c(1,3,5,7,9)
y <- c(3,7)

union(x,y)     #합집합
setequal(x,y)  #동일성확인
intersect(x,y) #교집합
setdiff(x,y)   #차집합
5 %in% y 

install.packages("devtools")
devtools::install_github("rstudio/addinexamples", type = "source")

chart_data <- c(305,450,320,460,330,480,380,520)
names(chart_data) <- c("2018년1분기","2018년1분기",
                       "2018년2분기","2018년2분기",
                       "2018년3분기","2018년3분기",
                       "2018년4분기","2018년4분기")
chart_data

barplot(chart_data, ylim=c(0,600),
        col = rainbow(8),
        main="2018년도 vs 2019년도 매출현황 비교")


barplot(chart_data)


barplot(chart_data, horiz = T)

data(VADeaths)
VADeaths


str(VADeaths)
dim(VADeaths)
mode(VADeaths)
View(VADeaths)  # V가 대문자



barplot(VADeaths)



dotchart(chart_data)


par(mfrow = c(1,1))
pie(chart_data)



boxplot(VADeaths)
summary(VADeaths)

data(iris)
str(iris)
dim(iris)
head(iris)
tail(iris)


summary(iris$Sepal.Length)

hist(iris$Sepal.Length)

hist(iris$Sepal.Width)








hist(iris$Sepal.Width, col="mistyrose", freq = F)

lines(density(iris$Sepal.Width), col="red")

x <- seq(2.0,4.5,0.1)
curve(dnorm(x, mean = mean(iris$Sepal.Width),
            sd = sd(iris$Sepal.Width)),
      col = "blue", add=T)



price <- runif(10, min=1, max=100)

plot(price, col="red")


attributes(iris)

View(iris)

pairs(iris[iris$Species == "virginica", 1:4])


pairs(iris[iris$Species == "setosa", 1:4])


install.packages("scatterplot3d")
library(scatterplot3d)

iris_setosa = iris[iris$Species == 'setosa',]
iris_versicolor = iris[iris$Species == 'versicolor',]
iris_virginica = iris[iris$Species == 'virginica',]


d3 <- scatterplot3d(iris$Petal.Length,
                    iris$Sepal.Length,
                    iris$Sepal.Width,
                    type = 'n')

d3$points3d(iris_setosa$Petal.Length,
            iris_setosa$Sepal.Length,
            iris_setosa$Sepal.Width,
            bg = 'orange', pch = 21
            )
d3$points3d(iris_versicolor$Petal.Length,
            iris_versicolor$Sepal.Length,
            iris_versicolor$Sepal.Width,
            bg = 'blue', pch = 23
)

d3$points3d(iris_virginica$Petal.Length,
            iris_virginica$Sepal.Length,
            iris_virginica$Sepal.Width,
            bg = 'green', pch = 25
)
