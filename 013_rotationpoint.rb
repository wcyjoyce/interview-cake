# TODO:
# Write a method for finding the index of the "rotation point".

def rotation_point(words)
  alphabet = ("a".."z").to_a
  first_letters = words.map { |word| alphabet.index(word.chars.first) }
  for i in 1..first_letters.length - 1
    rotation_index = first_letters[i] if first_letters[i] < first_letters[i - 1]
  end
  rotation_word = words.find { |word| word if word.start_with?(alphabet[rotation_index]) }
  p words.index(rotation_word)
end

words = %w(ptolemaic retrograde supplant undulate xenoepist asymptote babka banoffee engender karpatka)
rotation_point(words) # should return 5

# ANSWER:

## 1) Guess a halfway point between floor and ceiling
## 2) If guess is/comes after the first word - go right
## 3) Return if floor and ceiling have converged

def answer(words)
  floor_index = 0
  ceiling_index = words.length - 1

  while floor_index < ceiling_index
    guess_index = (floor_index + ceiling_index) / 2
    if words[guess_index] >= words.first
      floor_index = guess_index
    else
      ceiling_index = guess_index
    end
    return ceiling_index if floor_index + 1 == ceiling_index
  end
end

p answer(words)

