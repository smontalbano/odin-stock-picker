stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(arr)
    profit = 0
    min_price = arr[0]
    min_price_index = 0
    best_days = [0, 0]

    arr.each_with_index do |price, idx|
        if price < min_price then
            min_price = price
            min_price_index = idx
        elsif price - min_price > profit then
            profit = price - min_price
            best_days = [min_price_index, idx]
        end
    end
    best_days  
end

puts stock_picker(stock_prices)