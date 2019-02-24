def stock_picker(arr)
    best_days = Array.new
    profit_holder = 0

    #iterate every price in the array to look for best buy price
    i = 0
    while i < arr.length
      buy = arr[i]
    #check the profit gaining with the sell price, except the first one
      x = 1
      while x < arr.length
        sell = arr[x]
        profit = sell - buy
    #if the profit bigger then the previous on and the index of the buy is smaller then the sell
    #update the profit_holder and best_days
        if profit > profit_holder && i < x
          profit_holder = profit
          best_days = [i,x]
        end
        x+= 1
      end
      i += 1
    end
    best_days
    end

    #handle Display
        puts "Give me Stock prices of each day seperated buy space"
        stock_prices= gets.chomp
        stock_prices= stock_prices.split(" ")
        stock_arr = Array.new
        stock_prices.each do |num|
          stock_arr<<num.to_i
        end
        puts "#{stock_picker(stock_arr)}"


    #> stock_picker([17,3,6,9,15,8,6,1,10]) => [1,4]   for a profit of $15 - $3 == $12
