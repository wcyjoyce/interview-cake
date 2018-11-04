# TODO:
# Given a list of integers, find the highest product you can get from three of the integers.

# Given: [-10, -10, 1, 3, 2]
# Your method should return: 300
# By calculating: -10 * -10 * 3

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
