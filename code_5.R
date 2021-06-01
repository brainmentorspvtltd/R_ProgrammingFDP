# for loop
# while loop

for(i in 1:10) {
  print(i)
}

x <- c(34,3,5,7,12,45,8,65,8,9,12,56)
# for(item in x){
#   if(item %% 2 == 0) {
#     print(item)
#   }
# }

for(i in 1:length(x)){
  if(x[i] %% 2 == 0) {
    print(x[i])
  }
}


x <- 10
while (x > 0) {
  print(x)
  x = x - 1
}



