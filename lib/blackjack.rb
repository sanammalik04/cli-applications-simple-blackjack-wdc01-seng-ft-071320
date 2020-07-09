def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(10)+1 
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1+card2)
  return card1+card2
end

def hit?(number)
  prompt_user
  user_input = get_user_input
  while user_input != "h" and user_input !="s"
  invalid_command
  user_input = get_user_input
end
  if user_input == "h" then
    number += deal_card
  end
  return number
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
