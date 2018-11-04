# TODO:
# Given a list of integers, find the highest product you can get from three of the integers.

def highest_product_of_three(array)
  negative_count = array.select { |value| value < 0 }
  array.map! { |value| value.abs }.sort! if negative_count.length.even?
  solution = 1
  array.max(3).each { |max| solution *= max }
  p solution
end

negative = [-10, -10, 1, 3, 2]
highest_product_of_three(negative) # should return 300

both = [-10, 10, 1, 3, 2]
highest_product_of_three(both) # should return 60

positive = [5, 4, 10, 8, 2]
highest_product_of_three(positive) # should return 400

# ANSWER:

def answer(array)
  raise ArgumentError, 'Less than 3 items!' if array.length < 3

  # We're going to start at the 3rd item (at index 2) so pre-populate highests
  # and lowests based on the first 2 items. We could also start these as nil and
  # check below if they're set but this is arguably cleaner.
  highest = array.first(2).max
  lowest =  array.first(2).min

  highest_product_of_2 = array[0] * array[1]
  lowest_product_of_2  = array[0] * array[1]

  # Except this one – we pre-populate it for the first *3* items. This means in
  # our first pass it'll check against itself, which is fine.
  highest_product_of_3 = array[0] * array[1] * array[2]

  # Walk through items, starting at index 2 (we could slice the array but that would use n space)
  array.each_with_index do |current, index|
    next if index < 2
    highest_product_of_3 = [ highest_product_of_3, current * highest_product_of_2, current * lowest_product_of_2 ].max
    highest_product_of_2 = [ highest_product_of_2, current * highest, current * lowest ].max
    lowest_product_of_2 = [ lowest_product_of_2, current * highest, current * lowest ].min
    highest = [highest, current].max
    lowest = [lowest, current].min
  end
  p highest_product_of_3
end

negative = [-10, -10, 1, 3, 2]
answer(negative) # should return 300

both = [-10, 10, 1, 3, 2]
answer(both) # should return 60

positive = [5, 4, 10, 8, 2]
answer(positive) # should return 400
