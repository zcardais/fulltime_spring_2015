choices = ["rock", "paper", "scissors"]
computer = choices.sample

puts "Welcome to the Rock, Paper, Scissors Game"

# puts "Would you like to play? Yes Or No?" YOU DON'T NEED THIS. I'VE COMMENTED IT OUT AS WELL AS THE NEXT FEW LINES BELOW. WE CAN ALWAYS ADD THIS BACK IN LATER IF YOU WANT.

# answer = gets.chomp.downcase

# if answer == "yes"
#  puts "Please choose Rock, Paper or Scissors each time to play versus the Computer.  The first competitor to 5 scores wins!"
# elsif answer == "no"
#  puts "Well, press Control C or quit to end this game"
# else
#  puts "That\'s not a valid answer, press Control C or quit to end this game"
# end

puts "Your Hand!!! Rock, Paper, Scissors, Shoot!" #I added the R, P, S, Shoot! line for clarity.
response = gets.chomp.downcase
# computer = choices.sample #YOU HAVE THIS TWICE…LINE 2 AS WELL. SO, I'VE COMMMENTED THIS LINE OUT.
puts computer


user_score = 0
comp_score = 0

if response == "rock" and computer == "paper"
	puts "Computer Wins This Match"
	comp_score += 1
elsif response == "rock" and computer == "scissors"
 puts "You Win This Match"
 user_score += 1
 
elsif response == "paper" and computer == "scissors"
 puts "Computer Wins This Match"
 comp_score += 1
 
elsif response == "paper" and computer == "rock"
 puts "You Win This Match"
 user_score += 1
 
elsif response == "scissors" and computer == "rock"
 puts "Computer Wins This Match"
 comp_score += 1
 
elsif response == "scissors" and computer == "paper"
 puts "You Win This Match"
 user_score += 1
 
elsif response == computer
 puts "It's A Tie, keep playing"
 
elsif response != "rock" || response != "paper" || response != "scissors"
 puts "That's not what you're supposed to put there!!!"
else
end

puts "Your score is #{user_score}, Computers score is #{comp_score}"

if user_score == 5 || comp_score == 5
 break
end
end