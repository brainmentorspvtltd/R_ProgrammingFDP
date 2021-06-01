add <- function(x,y) {
  result = x + y
  paste("Sum is",result)
}

sub <- function(x,y) {
  result = x - y
  paste("Sub is",result)
}

div <- function(x,y) {
  result = x / y
  paste("Div is",result)
}

ch =readline("Enter your choice : 1/2/3/4 : ")

fnum = as.integer(readline("Enter first number : "))
snum = as.integer(readline("Enter second number : "))

switch (ch,
  "1" = add(fnum, snum),
  "2" = sub(fnum, snum),
  "3" = div(fnum, snum),
  "Not a valid choice"
)


