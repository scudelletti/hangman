require_relative "../lib/hangman"

RSpec.describe Hangman do
  describe ".new" do
    it "instantiates a word object" do
      expect(Hangman.new("banana")).to be_a(Hangman)
    end
  end

  describe "#original" do
    it "returns the original word as a string" do
      word = Hangman.new("banana")
      expect(word.original).to eq("banana")
    end
  end

  describe "#split" do
    it "split word into characters" do
      word = Hangman.new("sun")

      expect(word.split).to eq(["s", "u", "n"])
    end
  end

  describe "hidden" do
    it"returns an array with hidden characters" do
      word = Hangman.new("sun")

      expect(word.hidden).to eq(["_", "_", "_"])
    end
  end
end
