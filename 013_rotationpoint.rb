# TODO:
# Write a method for finding the index of the "rotation point", which is where
# I started working from the beginning of the dictionary.

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
rotation_point(words) # 5

