#game class

# class WordGame
#   def initialize
#     @secret_word = "secret_word"
#     @number_guesses = secret_word.length
#   end

#   def secret_word(secret_word)
#     secret_word == "secret_word"
#   end

#   def matching_letters(word_guess.split)
#     matching_letters = secret_word.split('')
#   end
# end


class Hangman

  attr_reader :is_over
  attr_reader :guess_count

  def initialize()
    @secret_word = ""
    @guess_count = 0
    @letters = []
    @is_over = false
  end

  def secret_word=(word)
    @secret_word = word
    @guess_count = word.length
  end

  def progress
    temp = []
    @secret_word.split("").each do |letter|
      if (@letters.include? letter)
        temp.push(letter)
      else
        temp.push("_")
      end
    end
    temp.join()
  end

  def check(letter)
    unless (@letters.include? letter)
      @guess_count -= 1
      @letters.push(letter)
    end
    if (@guess_count == 0)
      @is_over = true
    end
    check_word()
  end

  def check_word
    progress() == @secret_word
  end

end


# user interface

game = Hangman.new

p "Player 1 enter your secret word"
game.secret_word = gets.chomp

p "Player 2 guess the secret word!"
p game.progress()

while !game.is_over
  guess = gets.chomp
  if !game.check(guess)
    puts game.progress()
    puts "try again! you have #{game.guess_count} tries remaining!"
  else
    puts "you guessed #{game.progress()}!"
    puts "congrats! you've won the game!! you guessed it right!"
  end
end

if !game.check_word()
  p "you didn't guess the word sorry!!"
end