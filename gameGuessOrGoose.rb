#Guess or Goose Game
#Created by: Jaxson Mann

#get player name and greet them
puts "Welcome to Guess or Goose!"
print "What's your name? "
input = gets

#clean up newline character
name = input.chomp
puts "Welcome, #{name}!"

#store random number 1-100 for player to guess
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100)+1

#track number of guesses from player
num_guesses = 0

#track whether the player has guessed correctly
guessed_it = false

until num_guesses == 10 or guessed_it

    puts "You've got #{10 - num_guesses} guesses left."
    print "Make a guess: "
    guess = gets.to_i

    num_guesses += 1
    
    #compare the guess to the target
    #print the appropriate message
    if guess < target
        puts "Oops. Your guess was LOW."
    elsif guess > target
        puts "Oops. Your guess was HIGH."
    elsif guess == target
        puts "Good job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guessed_it = true
    end

end

#If player didn't guess in time, show the target number.
unless guessed_it
    puts "Sorry-- You got goosed! It was #{target}."
end
