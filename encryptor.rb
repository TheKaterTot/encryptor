class Encryptor
  def cipher
    {"a" => "n", "b" => "o", "c" => "p", "d" => "q", "e" => "r",
     "f" => "s", "g" => "t", "h" => "u", "i" => "v", "j" => "w",
     "k" => "x", "l" => "y", "m" => "z", "n" => "a", "o" => "b",
     "p" => "c", "q" => "d", "r" => "e", "s" => "f", "t" => "g",
     "u" => "h", "v" => "i", "w" => "j", "x" => "k", "y" => "l",
     "z" => "m"}
   end
   def encrypt_letter(letter)
     lowercase_letter = letter.downcase
     cipher[lowercase_letter]
   end
   def encrypt(string)
     #cut up string
     #encrypt letters and gather that info
     #rejoin letters
     letters = string.split("")
     new_string = ""
     letters.each {|letter| new_string += encrypt_letter(letter)}
     new_string
   end
end
