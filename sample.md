# Sample Programming Interview Question
###### Sample Question

_Writing programming interview questions hasn't made me rich yet... so I might give up and start trading AAPL stocks all day instead._


First, I want to know how much money I could have made yesterday if I'd been trading AAPL stocks all day.

So I grabbed AAPL's stock prices from yesterday and put them in an array called stock_prices, where:

* The indices are the time (in minutes) past trade opening time, which was 9:30am local time.
* The values are the price (in USD) of one share of AAPL stock at that time.

So if the stock cost $500 at 10:30am, that means `stock_prices[60] = 500`.

**Write an efficient method that takes stock_prices and returns the best profit I could have made from one purchase and one sale of one share of AAPL stock yesterday.**

---

For example:
```
stock_prices = [10, 7, 5, 8, 11, 9]

get max_profit(stock_prices)
# returns 6 (buying for $5 and selling for $11)
```

---

Notes:
* No "shorting" - you need to buy before you can sell.
* Also, you can't buy and sell in the same time step — at least 1 minute has to pass.
