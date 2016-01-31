def welcome
  welcome = "Welcome to the Blackjack Table"
  puts welcome
  welcome#welcome here
end


def deal_card
  rand 1...11
# code #deal_cad here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"

end  # code #display_card_total hereend

def prompt_user
   puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
   gets.chomp
  # code #get_user_input here
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
  # code #initial_round here
end

def hit?(value)
  prompt_user
  choice = get_user_input
  if  choice == 's'
    return value
  elsif choice == 'h'
    return deal_card + value
  else
    invalid_command
  end
end



def invalid_command
  puts "Please enter a valid command"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
until total > 21
  total = hit?(total)
  display_card_total(total)
  end_game(total)
  end
end


