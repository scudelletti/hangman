require_relative "../lib/filter"

RSpec.describe Filter do
  describe ".reveal_or_conceal_char" do
    context "when the letter matches" do
      it "reveals the letter" do
        guess = "A"
        letter = "A"
        current = "_"

        result = Filter.reveal_or_conceal_char(guess, letter, current)

        expect(result).to eq("A")
      end
    end

    context "when the letter does not match" do
      it "conceals the letter" do
        guess = "B"
        letter = "A"
        current = "_"

        result = Filter.reveal_or_conceal_char(guess, letter, current)

        expect(result).to eq("_")
      end
    end
  end

  describe ".reveal_or_conceal_array" do
    it "reveals characters based on guess" do
      guess = "S"
      word = ["S","U","N"]
      hidden = ["_","_","_"]

      result = Filter.reveal_or_conceal_array(guess, word, hidden)

      expect(result).to eq(["S","_","_"])
    end

    it "reveals currently revealed characters" do
      guess = "A"
      word = ["S","U","N"]
      hidden = ["_","U","_"]

      result = Filter.reveal_or_conceal_array(guess, word, hidden)

      expect(result).to eq(["_","U","_"])
    end

    it "conceals characters based on guess" do
      guess = "A"
      word = ["S","U","N"]
      hidden = ["_","_","_"]

      result = Filter.reveal_or_conceal_array(guess, word, hidden)

      expect(result).to eq(hidden)
    end
  end
end
