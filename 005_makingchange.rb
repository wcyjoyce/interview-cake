# TODO:
# Write a function that computes the number of ways to make the amount of money
# with coins of the available denominations, given (1) an amount of money, and
# (2) a list of coin denominations.

# EXAMPLE:
# amount = 4 (4¢)
# denominations = [1,2,3] (1¢, 2¢ and 3¢)

# 1¢, 1¢, 1¢, 1¢
# 1¢, 1¢, 2¢
# 1¢, 3¢
# 2¢, 2¢

def count_ways(amount, denominations)
  # some method
end

count_ways(4, [1,2,3]) # should return 4
count_ways(5, [1,3,5]) # should return 3

# ANSWER:

def answer(amount, denominations)
  number_of_ways = [0] * (amount + 1)
  number_of_ways[0] = 1

  denominations.each do |coin|
    (coin..amount).each do |higher_amount|
      higher_amount_remainder = higher_amount - coin
      number_of_ways[higher_amount] += number_of_ways[higher_amount_remainder]
    end
  end
  p number_of_ways[amount]
end

answer(4, [1,2,3]) # should return 4
answer(5, [1,3,5]) # should return 3

# ===========
# key:
# a = higher_amount
# r = higher_amount_remainder
# ===========

# ============
# for coin = 1:
# ============
# [1, 1, 0, 0, 0, 0]
#  r  a

# [1, 1, 1, 0, 0, 0]
#     r  a

# [1, 1, 1, 1, 0, 0]
#        r  a

# [1, 1, 1, 1, 1, 0]
#           r  a

# [1, 1, 1, 1, 1, 1]
#              r  a

# ============
# for coin = 3:
# =============
# [1, 1, 1, 2, 1, 1]
#  r        a

# [1, 1, 1, 2, 2, 1]
#     r        a

# [1, 1, 1, 2, 2, 2]
#        r        a

# ============
# for coin = 5:
# =============
# [1, 1, 1, 2, 2, 3]
#  r              a

# final answer: 3
