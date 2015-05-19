puts "Start game!"

 @computer_score = 0
 @person_score = 0

def game
  person = gets.chomp.downcase
  
  choices = ["rock", "paper", "scissors"]
  computer = choices.sample
  
  if person == computer
#     puts "You chose #{person} and I chose #{computer}."
    puts "It's a tie."
  #computer wins
  elsif person == "rock" && computer == "paper"
#     puts "You chose #{person} and I chose #{computer}."
    puts "I win with paper!"
    @computer_score += 1
  elsif person == "paper" && computer == "scissors"
#     puts "You chose #{person} and I chose #{computer}."
    puts "I win with scissors!"
    @computer_score += 1
  elsif person == "scissors" && computer == "rock"
#     puts "You chose #{person} and I chose #{computer}."
    puts "I win with rock!"
    @computer_score += 1
  #person wins
  elsif computer == "scissors" && person == "rock"
#     puts "You chose #{person} and I chose #{computer}."
    puts "You win with rock!"
    @person_score += 1
  elsif computer == "rock" && person == "paper"
#     puts "You chose #{person} and I chose #{computer}."
    puts "You win with paper!"
    @person_score += 1
  elsif computer == "paper" && person == "scissors"
#     puts "You chose #{person} and I chose #{computer}."
    puts "You win with scissors!"
    @person_score += 1
  else
    puts "That is not a valid entry"
  end
  
  puts "Your score is #{@person_score}, and my score is #{@computer_score}."
end

until @person_score == 5 || @computer_score == 5
  game
  if @person_score == 5
    puts "You win!"
  elsif @computer_score == 5
    puts "I win!"
  end 
end

puts "game over"