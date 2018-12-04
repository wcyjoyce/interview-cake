# TODO:
# Suppose we had an array of n integers sorted in ascending order. How quickly
# could we check if a given integer is in the array?

def search(number, array)
  array.include?(number) ? true : false
end

search(9, 1..10) # true
search(9, 1..5) # false

