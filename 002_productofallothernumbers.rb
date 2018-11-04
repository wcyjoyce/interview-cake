# TODO:
# Write a method get_products_of_all_ints_except_at_index() that takes an array
# of integers and returns an array of the products, without using division in
# your solution.

# For example:

# Given: [1, 7, 3, 4]
# Your method would return: [84, 12, 28, 21]
# By calculating: [7 * 3 * 4,  1 * 3 * 4,  1 * 7 * 4,  1 * 7 * 3]

def get_products_of_all_ints_except_at_index(array)
  solution = []
  for i in (0..array.length - 1)
    product = 1
    rejected = array.reject { |n| n == array[i] }
    rejected.each { |value| product *= value }
    solution << product
    i += 1
  end
    p solution
end

array = [1, 7, 3, 4]
get_products_of_all_ints_except_at_index(array)

