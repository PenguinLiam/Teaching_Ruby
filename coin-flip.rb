## Coin flipper


def flipCoin
    if rand(2) == 1
        return "Heads"
    else
        return "Tails"
    end
end

playAgain = true
while playAgain
    puts flipCoin
    
    print "Flip another coin?: "
    again = gets.chomp.downcase
    if !["yes", "y"].include? again then
        playAgain = false
    end
end