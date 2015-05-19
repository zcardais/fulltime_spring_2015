puts "Start game!"

@computer_score = 0
@person_score = 0

def game
	person = gets.chomp.downcase

	choices = ["rock", "paper", "scissors"]
	computer = choices.sample

	if person == computer
		puts "You chose #{person} and I chose #{computer}. It's a Tie! Shoot again."
	elsif person == "rock" && computer == "paper"
		puts "You chose #{person} and I chose #{computer}. I win!"
		@computer_score += 1
	elsif person == "paper" && computer == "scissors"
		puts "You chose #{person} and I chose #{computer}. I win!"
		@computer_score += 1
	elsif person == "scissors" && computer == "rock"
		puts "You chose #{person} and I chose #{computer}. I win!"
		@computer_score += 1
	elsif person == "rock" && computer == "scissors"
		puts "You chose #{person} and I chose #{computer}. You win!"
		@person_score += 1
	elsif person == "paper" && computer == "rock"
		puts "You chose #{person} and I chose #{computer}. You win!"
		@person_score += 1
	elsif person == "scissors" && computer == "paper"
		puts "You chose #{person} and I chose #{computer}. You win!"
		@person_score += 1
	else
		puts "That is not a valid choice."
	end
	puts "You: #{@person_score}; Me: #{@computer_score}"
end

until @person_score == 5 || @computer_score == 5
	game
	if @person_score == 5
		puts "Congrats! You win!"
	elsif @computer_score == 5
		puts "I win!"
	end
end

puts "game over"
