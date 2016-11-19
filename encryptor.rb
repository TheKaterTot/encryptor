class Encryptor
  def cipher(rotation)
    characters = (" ".."z").to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
   end

   def encrypt_letter(letter)
     rotation = 13
     cipher_for_rotation = cipher(rotation)
     cipher_for_rotation[letter]
   end

   def encrypt(string)
     letters = string.split("")
     new_string = ""
     letters.each {|letter| new_string += encrypt_letter(letter)}
     new_string
   end

   def decrypt_letter(letter)
     cipher.invert[letter]
   end

   def decrypt(string)
     letters = string.split("")
     new_string = ""
     letters.each {|letter| new_string += encrypt_letter(letter)}
     new_string
   end
end
