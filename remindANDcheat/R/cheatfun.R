cheatfun <- function(Q) {
  if(Q < 0 | Q > 18) {
    stop("Choose between 1 and 18")
  }
  if(Q != round(Q, digits = 0)) {
    stop("not an integer")
  }

  assignment3 <- assignment3
  print(assignment3$answer[Q])
}
