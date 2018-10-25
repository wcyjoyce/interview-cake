# TODO:
# Write an efficient method that takes stock_prices and returns the best
# profit I could have made from one purchase and one sale of one share of AAPL
# stock yesterday

def answer(stock_prices)
  raise ArgumentError, "You need more than 2 prices" if stock_prices.length < 2

  min_price = stock_prices[0]
  max_profit = stock_prices[1] - stock_prices[0]

  stock_prices.each_with_index do |current_price, index|
    next if index.zero?
    potential_profit = current_price - min_price
    max_profit = [max_profit, potential_profit].max
    min_price  = [min_price, current_price].min
  end
  puts max_profit
end

def get_max_profit(stock_prices)
  raise ArgumentError, "You need more than 2 prices" if stock_prices.length < 2

  max_profit = []
  buy_price = stock_prices[0]
  stock_prices.each do |price|
    buy_price = [buy_price, price].min
    potential_profit = price - buy_price
    max_profit << potential_profit
  end
  puts max_profit.max
end

stock_prices = [10, 7, 5, 8, 11, 9]
stock_prices_loss = [10, 7, 5, 4, 3]
get_max_profit(stock_prices)
get_max_profit(stock_prices_loss)

puts "Answer:"
answer(stock_prices)
answer(stock_prices_loss)
