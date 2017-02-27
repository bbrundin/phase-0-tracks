#Do The Thing

#find the index of the character in the array

def util_search(array, num)
  matching_index = nil
  current_index = 0
  array.each do |x|
    if x == num
      matching_index = current_index
    end
    current_index += 1
  end
  matching_index
end

#check current letter case and apply casing to next letter.

def convert_case(letter, new_letter)
  return new_letter.upcase if letter == letter.upcase
  new_letter
end

#defines index and length of name letters and loops through each letter

def char_shift(string, letters)
  new_letters = []
  string.chars.each { |letter|
    curr_index = util_search(letters, letter.downcase)
    if curr_index
      if ((curr_index + 1) < letters.length)
        new_index = curr_index + 1
      else
        new_index = 0
      end
      new_letters.push(convert_case(letter, letters[new_index]))
    else
      new_letters.push(convert_case(letter, letter))
    end
  }
  new_letters
end

#method for name swap, print last name first, first name last

def swap_reverse(name_array)
  name_array.last + " " + name_array.first
end

#method for swapping vowels in the name

def swap_vowels(name, vowels)
  char_shift(name, vowels).join()
end

#method for swapping consonants in the name

def swap_letters(name, consonants)
  char_shift(name, consonants).join()
end


#official spy method that splits the name, defines the alphabet
# creates array of vowels, and defines consonants as alphabet- vowels

def spyonize(name)
  name_array = name.split(" ")
  alphabet = ('a'..'z').to_a
  vowels = ["a", "e", "i", "o", "u"]
  consonants = alphabet - vowels

  reversed = swap_reverse(name_array)
  vowel_swapped = swap_vowels(reversed, vowels)
  letters_swapped = swap_letters(vowel_swapped, consonants)
  letters_swapped
end

# Release 1/ Release 2

spyonized = {}
puts "Please enter your First and Last name to find out your official Spyonize (tm) name!"

while user_input = gets.chomp
  case user_input
  when "quit"
    spyonized.map { |key, value|
      p key + " is also known as " + value
    }
    break
  else
    spyonized[user_input] = spyonize(user_input)
  end
end