class Filter
  def self.reveal_or_conceal_char(guess, letter, current)
    if guess == letter
      letter
    else
      current
    end
  end

  def self.reveal_or_conceal_array(guess, word, hidden)
    word.each_with_index.map do |letter, idx|
      reveal_or_conceal_char(guess, letter, hidden[idx])
    end
  end
end
