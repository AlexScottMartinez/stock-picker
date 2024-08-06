def stock_picker(array)
  lowest = array[0]
  sell = 0
  profit = 0
  result = []

  # iterates through the given array in which `price` represents the value of given array at certain index
  #    ,while `buy` represents the index of the value
  array.each_with_index do |price, buy|

    # if the value of the `price` variable is less than the value of `lowest` variable, then set the `lowest`
    #    to the value of `price`. Lastly set `sell` to the value `buy`
    if price < lowest
      lowest = price
      sell = buy
    end

    # if the value of `price` minus `lowest` is greater than the value of `profit`, then set `profit` to equal
    #    `price` minus `lowest`. Then lastly set the `result` to the `sell` & `buy` indices
    if price - lowest > profit
      profit = price - lowest
      result = [sell, buy]
    end
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])
