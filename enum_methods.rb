module Enumerable
  def my_each
    for i in (0...self.length)
      yield(self[i])
    end
    return self
  end

  def my_each_with_index
    for i in (0...self.length)
      yield(self[i], i)
    end
  return self
  end

  def my_select
    array = Array.new
    self.my_each do |item|
      if yield(item)
        array.push(item)
      end
    end
    return array
  end

  def my_all?
    self.my_each do |item|
      if !(yield(item))
        return false
      end
    end
    return true
  end

  def my_any?
    self.my_each do |item|
      if yield(item)
        return true
      end
    end
    return false
  end

  def my_none?
    self.my_each do |item|
      if yield(item)
        return false
      end
    end
    return true
  end

  def my_count
    i = 0
    self.my_each do |item|
      if block_given?
        if !!yield(item)
          i+=1
        end
      else
        i+=1
      end
    end
    return i
  end

  def my_map
    array = Array.new
    self.my_each_with_index do |item, index|
      array[index] = yield(item)
    end
    return array
  end

  def my_inject(i=0)
    self.to_a.my_each do |item|
      i = yield(i,item)
    end
    return i
  end

  def multiply_els
    self.my_inject(1) {|mem, num| mem * num}
  end

  def my_map_block(&code)
    array = Array.new
    self.my_each_with_index do |item, index|
      array[index] = code.call(item)
    end
    return array
  end

end
