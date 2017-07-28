require "rpss/version"

module Rpss
	# Welcome to Rock Paper Scissors Shoot! 
	# Start by picking rock, paper or scissors 
	def start_game 
		puts "Welcome to Rock, Paper, Scissors!"
		take_turn
	end 



	private 


	def take_turn
		print "Enter your move:  "
		move = gets.strip.to_s.downcase
		validate_move(move)
	end 

	def validate_move(move)
		if move == "rock" 
			compare_to_rock
		elsif move == "scissors"
			compare_to_scissors
		elsif move == "paper"
			compare_to_paper
		else 
			print "invalid entry. Please enter 'rock', 'paper', or 'scissors'.  "
		end 
	end 


	# The computer will then also randomly select an option. 
	 def computer_move
	 	random_number = rand(9)

	 	if random_number < 3
	 		cmove = "rock"
	 		elsif random_number > 5
	 			cmove = "scissors"
	 		else 
	 			cmove = "paper"
	 	end 

	 	puts "The computer threw: #{cmove}" 
	 	return cmove
	 end


	# Then we see who wins by comparing the player selection to the computer selection! 
	def compare_to_rock 
		cmove = computer_move

		if cmove == "scissors"
			puts "Rock smashes scissors. You Win!! "
		elsif cmove == "paper"
			puts "Paper covers rock. You Lose :( "
		else 
			puts "Its a tie "
		end
	end

	def compare_to_paper
		cmove = computer_move

		if cmove == "scissors"
			puts "Scissors cuts paper. You Lose :( "
		elsif cmove == "rock"
			puts "Paper covers rock. You Win!! "
		else 
			puts "Its a tie "
		end
	end

	def compare_to_scissors
		cmove = computer_move

		if cmove == "rock"
			puts "Rock smashes scissors. You Lose :( "
		elsif cmove == "paper"
			puts "Scissors cut paper. You Win!! "
		else 
			puts "Its a tie "
		end
	end
end
