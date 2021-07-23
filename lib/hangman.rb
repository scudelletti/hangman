class Hangman
  attr_reader :original, :size

  def initialize(word)
    @original = word
    @size = word.size
  end

  def split
    original.chars
  end

  def hidden
    Array.new(size, "_")
  end
end
