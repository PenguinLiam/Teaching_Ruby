## Number guessing game

$number = 0
$guesses = 0

def higherOrLower(g)
    if g.to_i < $number then
        return "Your guess is too low"
    else
        return "Your guess is too high"
    end
end

def playAgain? 
    print "Would you like to play again?: "
    if !["yes", "y"].include? gets.chomp.downcase
        puts "Thank you for playing!"
        return false
    else
        return true
    end
end
    
playAgain = true
while playAgain
    puts "I'm thinking of a number between 1 and 100"
    guessed = false
    $number = rand(100)
    $guesses = 0
    
    while !guessed
        print "Guess my number: "
        guess = gets.chomp
        
        if ![*1..100].include? guess.to_i then
            puts "Please enter a number between 1 and 100"
            next
        end
            
        $guesses += 1
        if guess.to_i == $number then
            puts "You guessed my number in #{$guesses} guesses"
            break
        else
            puts higherOrLower(guess)
        end
    end
            
    playAgain = playAgain?
end
        