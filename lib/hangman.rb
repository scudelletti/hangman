require_relative "word"
require_relative "filter"

class Hangman
  attr_reader :current, :split_word

  def initialize(word)
    word = Word.new(word)

    @split_word = word.split
    @current = word.hidden
  end

  def give(guess)
    @current = Filter.reveal_or_conceal_array(guess, split_word, current)
  end
end
