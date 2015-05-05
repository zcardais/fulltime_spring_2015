puts "Let's play!" 

@user_wins = 0
@computer_wins = 0 

def game
	puts "Rock, Paper, Scissors, Shoot!"
	user = gets.chomp.downcase

	choices = ["rock", "paper", "scissors"]
	computer = choices.sample

	if user == computer
		puts "It's a tie!"
	elsif user == "rock" && computer == "paper"
		puts "Paper beats rock. I win!"
		@computer_wins += 1
	elsif user == "scissors" && computer == "rock"
		puts "Rock beats scissors. I win!"
		@computer_wins += 1
	elsif user == "paper" && computer == "scissors"
		puts "Scissors beats paper. I win!"
		@computer_wins += 1
	elsif user == "rock" && computer == "scissors"
		puts "Rock beats scissors. You win!"
		@user_wins += 1
	elsif user == "scissors" && computer == "paper"
		puts "Scissors beats paper. You win!"
		@user_wins += 1
	elsif user == "paper" && computer == "rock"
		puts "Paper beats rock. You win!"
		@user_wins += 1
	else
		puts "That is not a valid choice."
	end
	puts "You: #{@user_wins}; Computer: #{@computer_wins}"
end

until @user_wins == 5 || @computer_wins == 5
	game
	if @user_wins == 5
		puts "Congrats! You win!"
	elsif @computer_wins == 5
		puts "I win! Try again next time!"
	end
end

puts "GAME OVER"

		
			
		