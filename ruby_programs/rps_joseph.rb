puts "Welcome to the wonderful world of Rock, Paper, Scissors"
puts "Let's get started. Please enter rock, paper or scissors:"
user = gets.chomp.downcase
rps = ["rock", "paper", "scissors"]
comp = rps.sample

until user == "quit"
  if user == comp
      puts "I got #{comp} too. That's a tie."
      # puts "Type quit if you'd like to end the game."
      # puts "Otherwise please enter rock, paper, or scissors."
      # user = gets.chomp.downcase
    elsif user == "rock" && comp == "paper"
      puts "My paper covered your Rock. I win!"
      # puts "Type quit if you'd like to end the game."
      # puts "Otherwise please enter rock, paper, or scissors."
      # user = gets.chomp.downcase
    elsif user == "scissors" && comp == "rock"
      puts "My rock destroyed your scissors. I win!"
      # puts "Type quit if you'd like to end the game."
      # puts "Otherwise please enter rock, paper, or scissors."
      # user = gets.chomp.downcase
    elsif user == "paper" && comp == "scissors"
      puts "My scissors shreded your paper. I win!"
      # puts "Type quit if you'd like to end the game."
      # puts "Otherwise please enter rock, paper, or scissors."
      # user = gets.chomp.downcase
    elsif user == "paper" && comp == "rock"
      puts "Your paper covered my Rock. You win!"
      # puts "Type quit if you'd like to end the game."
      # puts "Otherwise please enter rock, paper, or scissors."
      # user = gets.chomp.downcase
    elsif user == "scissors" && comp == "rock"
      puts "Your rock destroyed my scissors. You win!"
      # puts "Type quit if you'd like to end the game."
      # puts "Otherwise please enter rock, paper, or scissors."
      # user = gets.chomp.downcase
    elsif user == "paper" && comp == "scissors"
      puts "Your scissors shredded my paper. You win!"
      # puts "Type quit if you'd like to end the game."
      # puts "Otherwise please enter rock, paper, or scissors."
      # user = gets.chomp.downcase
  end

  puts "Type quit if you'd like to end the game."
  puts "Otherwise please enter rock, paper, or scissors."
  user = gets.chomp.downcase 
end