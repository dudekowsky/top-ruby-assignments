def caesar_cipher(input, number = 1)
  a = input.split("").map do |string|
    case string
    when (/[a-z]/)
      ((string.ord - 97 + number)%26 + 97).chr
    when (/[A-Z]/)
      ((string.ord - 65 + number)%26 + 65).chr
    else
      string
    end
  end
  return a.join
end
