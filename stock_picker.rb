def stockpicker(array)
  i = 0
  buy_day = 0
  sell_day = 0
  spread = 0
  array.each do |stock|
    for n in (i...(array.length))
      if (array[i] - array[n]) > spread
        spread = array[i] - array[n]
        buy_day = i
        sell_day = n
      end
    end
  end
  puts "Buy on day #{buy_day + 1} and sell on #{sell_day + 1}, so you make #{spread}"
end
