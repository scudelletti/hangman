require_relative 'lib/hangman'

puts "Give me a word:"
word = gets.chomp.upcase
match = Hangman.new(word)

puts "Give me a guess:"
guess = gets.chomp.upcase
while guess != "EXIT" do
  puts match.give(guess).inspect

  puts "Give me a guess:"
  guess = gets.chomp.upcase
end

puts "Bye!"
