
def encrypt(value)
  index=0
  while index < value.length
    value[index] = value[index].next[0]
    index+=1
  end
  return value
end

# puts encrypt ("abc")
# puts encrypt ("zed")
# puts encrypt ("bcd")
# puts encrypt ("afe")



def decrypt(value)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index=0
  while index < value.length
    value[index] = alphabet[alphabet.index(value[index]) -1]
    index+=1
  end
  return value
end

# puts decrypt ("bcd")
# puts decrypt ("afe")

# puts decrypt(encrypt("swordfish"))
# We had to use puts to decrypt the code and the encrypt so it would return swordfish correctly


puts "Enter 1 to decrypt and enter 2 to encrypt a password"
user = gets.chomp.to_i

  if user == 1
    puts "You would to decrypt"
    puts "Please enter a password"
    password = gets.chomp
    puts decrypt(password)
  elsif user == 2
    puts "You would like to encrypt"
    puts "Please enter a password"
    password = gets.chomp
    puts encrypt(password)
  else "Please choose 1 or 2 only"
end


