# TODO:
# Write a method reverse_words() that takes a message as a string and reverses
# the order of the words in place.

def reverse_words(message)
  message = message.split(" ").reverse.join(" ")
  p message
end


reverse_words("the eagle has landed") # landed has eagle the
reverse_words("cake pound steal") # steal pound cake

# ANSWER:

## 1) Reverse all the characters in the entire message
## 2) Reverse the characters in each individual word

def answer(message)
  reverse_characters(message, 0, message.length - 1)
  current_word_start_index = 0

  for i in 0..message.length
    if (message[i] == ' ') || (i == message.length)
      reverse_characters(message, current_word_start_index, i - 1)
      current_word_start_index = i + 1
    end
  end

  p message
end

def reverse_characters(message, left_index, right_index)
  while left_index < right_index
    message[left_index], message[right_index] = \
      message[right_index], message[left_index]
    left_index  += 1
    right_index -= 1
  end
end

answer("the eagle has landed")
answer("cake pound steal")
