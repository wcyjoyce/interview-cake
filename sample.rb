# TODO:
# Write an efficient method that takes stock_prices and returns the best profit
# I could have made from one purchase and one sale of one share of AAPL stock
# yesterday

def get_max_profit(stock_prices)
  raise ArgumentError, "You need more than 2 prices" if stock_prices.length < 2

  buy_price = stock_prices[0] # set buy price to first price available
  max_profit = stock_prices[1] - stock_prices[0] # first possible profit/loss
                                                 # in the event that the price keeps dropping

  stock_prices.each_with_index do |price, index|
    next if index.zero? # skips the first iteration (which is already shown in max_profit above)
    potential_profit = price - buy_price
    buy_price = [buy_price, price].min
    max_profit = [max_profit, potential_profit].max
  end
  puts max_profit
end

stock_prices_profit = [10, 7, 5, 4, 8, 11, 9, 6, 12]
stock_prices_loss = [10, 7, 5, 4, 3, 1]

get_max_profit(stock_prices_profit)
get_max_profit(stock_prices_loss)

###

# ANSWER:

def answer(stock_prices)
  raise ArgumentError, "Getting a profit requires at least 2 prices" if stock_prices.length < 2

  min_price = stock_prices[0] # initialise to first price possible
  max_profit = stock_prices[1] - stock_prices[0] # initialise to first profit possible

  stock_prices.each_with_index do |current_price, index|
    next if index.zero? # skip the first time, since we already used it when we initialized min_price and max_profit
    potential_profit = current_price - min_price # see what our profit would be if we bought at the min price and sold at the current price
    max_profit = [max_profit, potential_profit].max # update max_profit if we can do better
    min_price  = [min_price, current_price].min # update min_price so it's always the lowest price we've seen so far
  end
  puts max_profit
end
