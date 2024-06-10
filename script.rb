stock_prices = [17,3,6,9,15,8,6,1,10]
p stock_prices

def stock_picker prices
  trades = []
  buy_price = prices
  sell_price = prices
  buy_price.each_with_index do |buy, i|
    sell_price.each_with_index do |sell, j|
      if i < j
        trade = [i,j,sell - buy]
        #trade = {dates: [i,j], profit: sell - buy}
        trades << trade
      end
    end
  end
  date = []
  profit = 0
  trades.each_with_index do |trade, i|
    if trade[2] > profit
      profit = trade[2]
      date = trades[i]
      date.pop
    end
  end
  date    
end

p stock_picker stock_prices

# I worked hard to remove all the brackets. It's very strange coming from javascript, and I'm still not sure if I like it.