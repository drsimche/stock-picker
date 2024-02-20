# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0

def stock_picker(prices)
    best_profit = 0
    best_days = []

    prices.each_with_index do |buy_price, buy_day|
        prices[buy_day+1..-1].each_with_index do |sell_price, sell_day_offset|
            sell_day = sell_day_offset + buy_day + 1
            profit = sell_price - buy_price
            if profit > best_profit
                best_profit = profit
                best_days = [buy_day, sell_day]
            end
        end
    end
    puts best_days
end

# Example usage
prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
stock_picker(prices)  # Output: [1, 4]