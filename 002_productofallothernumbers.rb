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

# ANSWER:

def answer(array)
  raise IndexError, "At least 2 numbers are required" if array.length < 2

  # for each integer, we find the product of all integers BEFORE it (and update total product)
  products_of_all_ints_except_at_index = []
  product_so_far = 1
  i = 0

  while i < array.length
    products_of_all_ints_except_at_index[i] = product_so_far
    product_so_far *= array[i]
    i += 1
  end

  # for each integer, we find the product of all integers AFTER it (and adding this to total product)
  product_so_far = 1
  i = array.length - 1

  while i >= 0
    products_of_all_ints_except_at_index[i] *= product_so_far
    product_so_far *= array[i]
    i -= 1
  end

  p products_of_all_ints_except_at_index
end

array = [1, 7, 3, 4]
answer(array)
