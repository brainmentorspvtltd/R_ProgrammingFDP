# chat = T
chat = TRUE

while(chat) {
  msg = readline("Enter your message : ")
  if(msg == "hello" || msg == "hi" || msg == "hey") {
    print("Hello User")
  } else if(msg == "bye") {
    print("Bye User")
    chat = FALSE
  } else {
    print("I don't understand")
  } 
}

