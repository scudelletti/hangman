require_relative "../lib/hangman"

RSpec.describe Hangman do
  describe ".new" do
    it "instantiates a hangman match" do
      expect(Hangman.new("ice")).to be_a(Hangman)
    end
  end

  describe "#give" do
    it "plays a match" do
      game = Hangman.new("ICE")

      game.give("I")
      game.give("C")
      result = game.give("E")

      expect(result).to eq(["I", "C", "E"])
    end

    context "when the guess is incorrect" do
      it "concealed guessed letter" do
        game = Hangman.new("ICE")

        expect(game.give("I")).to eq(["I","_","_"])
      end
    end

    context "when the guess is correct" do
      it "reveal guessed letter" do
        game = Hangman.new("ICE")

        expect(game.give("A")).to eq(["_","_","_"])
      end
    end
  end
end
