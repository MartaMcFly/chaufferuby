def chiffre_de_cesar(string, number)
  
# permet de transformer les lettres en chiffres ASCII
letters = string.downcase.split("").map!{|n| n.ord}

# permet de décaler le chiffre ASCII
new_ascii = letters.map{|x|
    x = x - 97
      if (x+number > 25)
    x = (x + number) % 26
      else
    x = x + number
      end
  }

# affiche le nouveau texte
puts new_ascii.map{|q| (q+97).chr}.join

end

# valeur de test
chiffre_de_cesar("xyz", 2)
