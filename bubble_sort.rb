def bubble_sort!(array)
  i = 0
  array.each do |variable|
    for i in (0...(array.length-1))
      if array[i] >= array[i+1]
        a = array[i]
        array[i] = array[i+1]
        array[i+1] = a
      end
    end
  end
end

class Array
  def bubble_sort!
    i = 0
    self.each do |variable|
      for i in (0...(self.length-1))
        if self[i] >= self[i+1]
          a = self[i]
          self[i] = self[i+1]
          self[i+1] = a
        end
      end
    end
  end
  def bubble_sort_by!
    i = 0
    self.each do |variable|
      for i in (0...(self.length-1))
        if yield(self[i],self[i+1])
          a = self[i]
          self[i] = self[i+1]
          self[i+1] = a
        end
      end
    end
  end
end
