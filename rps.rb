## Rock Paper Scissors


def computerChoice
    choice = rand(3)
    if choice == 1 then
        return "rock"
    elsif choice == 2 then
        return "paper"
    else
        return "scissors"
    end
end
        
def findWinner(pc, cc)
   if pc == "rock" && cc == "paper" then
       return "Computer wins!"
   elsif pc == "rock" && cc == "scissors" then
       return "You win!"
   elsif pc == "paper" && cc == "scissors" then
       return "Computer wins!"
   elsif pc == "paper" && cc == "rock" then
       return "You win!"
   elsif pc == "scissors" && cc == "rock" then
       return "Computer wins!"
   elsif pc == "scissors" && cc == "paper" then
       return "You win!"
   else
       return "Its a draw!"
   end
end
        
playAgain = true
while playAgain
    ## Getting user input of their choice
    print "Rock, Paper, Scissors?: "
    playerChoice = gets.chomp.downcase
    
    if !["rock", "paper", "scissors", "r", "p", "s"].include? playerChoice then
        puts "Please enter rock, paper or scissors"
        next
    end

    puts findWinner(playerChoice, computerChoice)
        
    print "Would you like to play again?: "
    again = gets.chomp.downcase
    if !["yes", "y"].include? again then
        puts "Thank you for playing!"
        playAgain = false
    end
end
    
    