# Code your solution here!
def welcome
puts "Guess a number between 1 and 6."
end

def get_new_user_guess
  user_guess = gets.chomp
end

def get_computer_number
  computer_number = rand(1..6)
end

def exit_guessing
  puts "Goodbye!"
end





def run_guessing_game
  welcome
  user_guess = get_new_user_guess
  computer_number = get_computer_number
  guessed_correctly = user_guess.to_i == computer_number

  while user_guess != "exit"
    if guessed_correctly
      puts "You guessed the correct number!"
      user_guess = get_new_user_guess
      break if user_guess == "exit"
    else
      puts "The computer guessed #{computer_number}."
      user_guess = get_new_user_guess
      break if user_guess == "exit"
    end
  end

  exit_guessing
end


# Code your solution here!
