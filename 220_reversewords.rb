# TODO:
# Write a method reverse_words() that takes a message as a string and reverses
# the order of the words in place.

def reverse_words(message)
  message = message.split(" ").reverse.join(" ")
  p message
end


reverse_words("the eagle has landed") # landed has eagle the
reverse_words("cake pound steal") # steal pound cake
