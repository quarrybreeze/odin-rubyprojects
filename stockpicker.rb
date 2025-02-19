def stock_picker(array)
  price_hash = {}       # set up an empty hash
  pick = []             # set up an empty array for the answer
  maxgain = 0           # set up to track what the max gain possible is
  array.each_with_index { |price, day| price_hash[day] = price } # populate the hash resulting in day=>price
  price_hash.each do |daybuy|                                  # loop through days
    price_hash.each do |daysell|                               # loop through days
      # filter for days where you can sell for profit, and the day buy comes before day sell.
      next unless daysell[1] > daybuy[1] && daysell[0] > daybuy[0]

      if (daysell[1] - daybuy[1]) > maxgain # if the gain is higher than our current max, update the days we picked
        maxgain = daysell[1] - daybuy[1] # update the maximum gain found so far
        pick = [daybuy[0], daysell[0]] # update the answer
      end
    end
  end
  p pick
end

day_1_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
day_2_prices = [10, 3, 6, 9, 15, 8, 6, 1, 17]
day_3_prices = [10, 3, 6, 9, 15, 8, 6, 17, 1]
day_4_prices = [1, 3, 6, 9, 15, 8, 6, 17, 10]
stock_picker(day_1_prices)
stock_picker(day_2_prices)
stock_picker(day_3_prices)
stock_picker(day_4_prices)
