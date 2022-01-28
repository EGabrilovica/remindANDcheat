remind_me <- function(x) {
  food <- read.table("https://gist.githubusercontent.com/peterdemin/920ec3eaaa0a9f3cafd3a855557f5e0c/raw/9c7337d7f6274de704f9018ed363d51dd7a0b128/food.txt")
  grocery_list <- as.list(sample(food$V1, 10))
  print(grocery_list)
}
