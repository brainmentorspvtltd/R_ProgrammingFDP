ch = readline("Enter your choice : 1/2/3/4 : ")

fnum <- as.integer(readline("Enter first number : "))
snum <- as.integer(readline("Enter second number : "))

print("1. Add")
print("2. Sub")
print("3. Div")
print("4. Mul")

if (ch == "1") {
  result = fnum + snum
  paste("Sum is",result)
} else if(ch == "2") {
  result = fnum - snum
  paste("Sub is",result)
} else if(ch == "3") {
  result = fnum / snum
  paste("Div is",result)
}else {
  result = fnum * snum
  paste("Mul is",result)
}



