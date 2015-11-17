#!/usr/bin/ruby

max = 10
num = rand(max)

puts "Try to find the number between 0 and #{max}!"

print "Guess: "
while line = gets do 
    try = line.to_i
    case try 
        when 0...num then puts 'Your guess is too low...'
        when num+1..max then puts 'Your guess it too high...'
        when num then
            puts 'You won!!!' 
            break
    end
    print "Try again: "
end

