def substring(string)
  dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  output = Hash.new
  output.default = 0
  string.split(" ").each do |inputword|
    dict.each do |word|
      if word.match(inputword)
        output[word] = output[word]+1
      end
    end
  end
  puts output
end
