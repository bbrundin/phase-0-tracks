require_relative 'word_game'

describe Hangman do
  let(:game) { Hangman.new }

  it "should have 0 guess count" do
    expect(game.guess_count).to eq 0
  end

  it "should have a secret word" do
    game.secret_word = "secret"
    expect(game.progress()).to eq "______"
  end

  it "should set guess count" do
    game.secret_word = "secret"
    expect(game.guess_count).to eq 6
  end

  it "should take guesses of letters" do
    game.secret_word = "secret"
    game.check("e")
    expect(game.progress()).to eq "_e__e_"
  end

  it "should decrease guess count" do
    game.secret_word = "secret"
    game.check("e")
    expect(game.guess_count).to eq 5
  end

  it "should not decrease guess count for repeats" do
    game.secret_word = "secret"
    game.check("e")
    game.check("e")
    expect(game.guess_count).to eq 5
  end

  it "should return true if all letters matched" do
    game.secret_word = "secret"
    game.check("s")
    game.check("e")
    game.check("c")
    game.check("r")
    game.check("t")
    expect(game.check_word()).to eq true
  end

  it "should not end if still have guesses" do
    game.secret_word = "secret"
    game.check("a")
    game.check("b")
    expect(game.is_over()).to eq false
  end

  it "should end if ran out of guesses" do
    game.secret_word = "secret"
    game.check("a")
    game.check("b")
    game.check("c")
    game.check("d")
    game.check("e")
    game.check("f")
    expect(game.is_over()).to eq true
  end

end