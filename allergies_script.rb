#!/usr/bin/ruby
require ('./lib/allergies.rb')


puts 'Whats your allergen score-gives us a number between 1 and 255'
number = gets.chomp
puts "your score is #{number}"
your_allergies = Allergen_score.new(number.to_i)
your_allergies.allergy_calc
puts "your allgeries #{your_allergies.allergy_array}"
