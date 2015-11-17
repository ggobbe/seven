#!/usr/bin/ruby

# Bonus problem: If you're feeling the need for a little more, write a program
# that picks a random number. Let a player guess the number, telling the player
# whether the guess is too low or too high

MAX = 10
num = rand(MAX)

puts "Try to find the number between 0 and #{MAX}!"

print "Guess: "
while line = gets do 
    try = line.to_i
    case try 
        when 0...num then puts 'Your guess is too low...'
        when num+1..MAX then puts 'Your guess it too high...'
        when num then
            puts 'You won!!!' 
            break
    end
    print "Try again: "
end

