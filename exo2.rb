def chiffre_de_cesar(string, number)
  letters = string.downcase.split("").map!{|n| n.ord}
  # print letters
  new_ascii = letters.map{|x|
    x = x - 97
  if (x+number > 25)
    x = (x + number) % 26
  else
    x = x + number
  end
  }
puts  new_ascii.map{|q| (q+97).chr}.join
end

chiffre_de_cesar("xyz", 2)
