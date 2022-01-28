## code to prepare `assignment3` dataset goes here

usethis::use_data(assignment3, overwrite = TRUE)

library(dplyr)
assignment3 <- matrix(0,18,1)
assignment3 <- as.data.frame(assignment3)
assignment3 <- rename(assignment3, "answer" = V1)


#Q1
assignment3$answer[1] <-
  'data <- rnorm(1000)
boxplot(data)'


#Q2
assignment3$answer[2] <-
  'schipol_temp <- read.csv("https://raw.githubusercontent.com/hannesrosenbusch/schiphol_class/master/schiphol_data.csv")
plot(schipol_temp[,2], schipol_temp[,7], xlab = "time", ylab = "average temperature")'


#Q3
assignment3$answer[3] <-
  'library(titanic)
titanic_data <- titanic_train
library(ggplot2)
ggplot(data = titanic_data) +
  geom_bar(mapping = aes(x = Sex, fill = factor(Survived))) +
  labs(x = "sex", y = "count") +
  scale_fill_discrete(name = "How did it go?", labels = c("dead", "alive"))'


#Q4
assignment3$answer[4] <-
  'library(titanic)
titanic_data <- titanic_train
library(ggplot2)
ggplot(data = titanic_data) +
  geom_bar(mapping = aes(x = Sex, fill = factor(Survived))) +
  labs(x = "sex", y = "count") +
  scale_fill_discrete(name = "How did it go?", labels = c("dead", "alive")) +
  theme_minimal()'


#Q5
assignment3$answer[5] <-
  'plot(mtcars$cyl, mtcars$hp)

#Plot 1
ggplot(data = mtcars) + #this is the same scatter plot as above, just made more legible
  geom_point(mapping = aes(x = factor(cyl), y = hp)) + #made cyl into a discreet instead of continuous variable for better viewing
  labs(x = "Number of cylnders", y = "Gross horsepower") + #gives labels to x & y in human language
  theme_minimal() #easier to view plot

#Plot 2
ggplot(data = mtcars) + #makes it easier to compare between different kinds of engines in general
  geom_col(mapping = aes(x = factor(cyl), y = hp)) + #made cyl into a discreet instead of continuous variable
  labs(x = "Number of cylnders", y = "Gross horsepower") + #gives labels to x & y in human language
  theme_minimal() #easier to view plot

#Plot 3
ggplot(data = mtcars) + #easier to interpret the frequency of gross horsepower per number of cylnders
  geom_violin(mapping = aes(x = factor(cyl), y = hp)) + #made cyl into a discreet instead of continuous variable
  labs(x = "Number of cylnders", y = "Gross horsepower") + #gives labels to x & y in human language
  theme_minimal() #easier to view plot'


#Q6
assignment3$answer[6] <-
  'ggplot(data = Orange, aes(x = factor(Tree, levels = c("1", "2","3","4","5")), y = circumference)) +
  stat_summary(fun = "max", geom = "bar") +
  labs(x = "Tree", y = "max_circumference")'


#Q7
assignment3$answer[7] <-
  'ggplot(data = Orange) +
  geom_smooth(mapping = aes(x = age, y = circumference), method = "lm", se = TRUE)'


#Q8
assignment3$answer[8] <-
  'library(patchwork)

plot1 <- ggplot(data = Orange, aes(x = factor(Tree, levels = c("1", "2","3","4","5")), y = circumference)) +
  stat_summary(fun = "max", geom = "bar") +
  labs(x = "Tree", y = "max_circumference")

plot2 <- ggplot(data = Orange) +
  geom_line(mapping = aes(x = age, y = circumference, colour = factor(Tree, levels = c("1", "2","3","4","5")))) +
  scale_colour_discrete(name = "Tree")

plot1 + plot2'


#Q9
assignment3$answer[9] <-
  'library(ggstatsplot)

ggbetweenstats(data=ToothGrowth,x=supp,y=len) +
  labs(x="Means of intake",y="teeth length")'


#Q10
assignment3$answer[10] <-
  'library(plotly)

plot_ly(data = iris, x = ~Petal.Width, y = ~Petal.Length, z = ~Sepal.Width, color = ~Species)'


#Q11
assignment3$answer[11] <-
  'library(ggplot2)
library(gganimate)
library(gifski)
library(png)
library(coronavirus)
library(dplyr)

data_corona <- refresh_coronavirus_jhu()
dutch_corona <- data_corona %>% filter(location == "Netherlands")
dutch_corona$value[dutch_corona$data_type == "cases_new"] <- (dutch_corona$value[dutch_corona$data_type == "cases_new"])/10

corona_plot <- ggplot(data = dutch_corona) +
  geom_line(mapping = aes(x = date, y = value, colour = data_type)) +
  labs(title = "Covid-19 in NL") +
  scale_colour_discrete(name = "", labels = c("cases / 10", "deaths")) +
  transition_reveal(date)

animate(corona_plot, renderer = gifski_renderer())'


#Q12
assignment3$answer[12] <-
  'library(quantmod)
getSymbols("GOOG")
plot(GOOG[,1])

#The plot looks so fancy because the extracted data is fancy.
#It is in the xts format, meaning it contains multiple time series and enables the handling of many R time series classes'


#Q13
assignment3$answer[13] <-
  'plot2021 <- function(x) {
  library(quantmod)
  getSymbols(x)
  dates <- seq.Date(as.Date("2021-01-01"),as.Date("2021-12-31"), by = "days")
  plot(eval(as.symbol(x))[dates,1])
}

plot2021("GOOG")'


#Q14
assignment3$answer[14] <-
  '#first edit for Q11
library(ggplot2)
library(gganimate)
library(gifski)
library(png)
library(coronavirus)
library(dplyr)

data_corona <- refresh_coronavirus_jhu()
dutch_corona <- data_corona %>% filter(location == "Netherlands")
dutch_corona$value[dutch_corona$data_type == "cases_new"] <- (dutch_corona$value[dutch_corona$data_type == "cases_new"])/10

corona_plot <- ggplot(data = dutch_corona, aes(x = date, y = value, colour = data_type)) +
  geom_line() + #move the aes up into the ggplot, make line 151 clearer
  labs(title = "Covid-19 in NL") +
  scale_colour_discrete(name = "", labels = c("cases / 10", "deaths")) +
  transition_reveal(date)

animate(corona_plot, renderer = gifski_renderer())

#Second edit for Q9
library(ggstatsplot)

ggbetweenstats(data = ToothGrowth, x = supp, y = len) +
  labs(x = "Means of intake", y = "teeth length") #added spaces between variables'


#Q15
assignment3$answer[15] <-
  'w = "apple" #we set this in the global environment
v = function(x){
  y <- strsplit(x, " ", )
  v <- 0
  for(z in unlist(y)){if(z == w){v = v +1}} #no breaks make the code illegible
  if(v > 0) return(T)
}
v("i bought two bananas and an apple")

#The function searches for the word "apple" in a given sentence and says TRUE if its there and NULL if its not
#assigned labels are non-descriptive'


#Q16
assignment3$answer[16] <-
  'my_matrix <- matrix(c(1, 4, 7, 2, 5, 8, 3, 6, 9), 3, 3)
for(row in 1:nrow(my_matrix)){
  if(row == 1){ #if first row
    my_matrix[row,] <- my_matrix[row,] * 1
  }else if(row == 2){ #if second row
    my_matrix[row,] <- my_matrix[row,] * 2
  }else{ #if third or more row
    my_matrix[row,] <- my_matrix[row,] * 3
  }
}
my_matrix

my_matrix <- matrix(c(1:3*1, 4:6*2, 7:9*3), 3, 3, T)
my_matrix'


#Q17
assignment3$answer[17] <-
  'recursive_function <- function(x) {
  if (x == 0)    return (1)
  else           return (x * recursive_function(x-1))
}
recursive_function(10)

recursive_function2 <- function(x) {
  m <- c()
  m[1] <- x
  y <- 1
  for(i in 1:(x-1)) {
    m[i + 1] <- c(x - i)
    y <- prod(m)
  }
  print(y)
}
recursive_function2(5)'


#Q18
assignment3$answer[18] <-
  'library(devtools)
library(memer)
meme_get("SuezExcavator") %>%
  meme_text_suez("Students questions",
                 "The coordinators & TAs")

#Feel free to use my beautiful meme'

