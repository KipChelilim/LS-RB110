### Tic Tac Toe Algorithm
# 1.  display a board
#     a. create hash of possible squares
#     b. call method to display board using squares hash
# 2.  Choose who will go first
# 3.  request choice from first player (e.g user)
#     a. request input
#     b. test that its a key in moves
#     c. test that the key hasn't been marked ( == " ")
#     d. set square[choice] to player marker
#     e. display new board
# 4.  request choice from second player (e.g. computer)
#     a. get list of unchosen squares
#     b. pick random
#     c. assign to computer marker
# 5.  d. display board
# 6.  check if there is a win or the board is full
#     a. board is full if counter > 9
#     b. win conditions
#         1. take winning lines
#         2. get value from current hash for each square
#         3. check if value is the same for each one
# 7.  if not, repeat steps 3-4
# 8.  if so, display winner
# 9.  ask if they would like to play again
# 10. if so, repeat from #1

### Code
require 'pry'
require 'pry-byebug'

# Constants
ROW_HEADER  = "    A   B   C  "
ROW_BOARDER = "  +---+---+---+"
PLAYERS = { true => "User", false => "Computer" }
USER_MARKER = "X"
COMPUTER_MARKER = "O"
WIN_CONDITIONS = [
  [:A1, :A2, :A3], [:B1, :B2, :B3], [:C1, :C2, :C3], # verticals
  [:A1, :B1, :C1], [:A2, :B2, :C2], [:A3, :B3, :C3], # horizontals
  [:A1, :B2, :C3], [:A3, :B2, :C1]                   # diagonals
]

# Method definitions
def prompt(msg)
  puts ">> #{msg}"
end

def display_board(squares)
  row_one = ['1', "|", squares[:A1], "|", squares[:B1], "|", squares[:C1], "|"]
  row_two = ['2', "|", squares[:A2], "|", squares[:B2], "|", squares[:C2], "|"]
  row_three = ['3', "|", squares[:A3], "|", squares[:B3], "|", squares[:C3], "|"]

  puts ROW_HEADER
  puts ROW_BOARDER
  puts row_one.join(" ")
  puts ROW_BOARDER
  puts row_two.join(" ")
  puts ROW_BOARDER
  puts row_three.join(" ")
  puts ROW_BOARDER + "\n\n"
end

def request_user_choice!(squares)
  prompt("Your move. Choose a square: ")
  user_choice = nil
  loop do
    user_choice = gets.chomp.upcase.to_sym
    break if squares[user_choice] == " "
    prompt("That's not a valid choice. Please choose again: ")
  end
  squares[user_choice] = USER_MARKER
end

def make_computer_choice!(squares, empty_squares)
  computer_choice = empty_squares.sample
  squares[computer_choice] = COMPUTER_MARKER
  prompt("The computer chose #{computer_choice}.")
  display_board(squares)
end

def update_open_moves!(squares, empty_squares)
  empty_squares.delete_if do |empty_sqr|
    squares[empty_sqr] != " "
  end
end

def found_winner?(squares)
  !!winning_player(squares)
end

def winning_player(squares)
  WIN_CONDITIONS.each do |winning_line|
    current_moves = squares.values_at(*winning_line)
    return "User" if current_moves.count(USER_MARKER) == 3
    return "Computer" if current_moves.count(COMPUTER_MARKER) == 3
  end
  nil
end

def reset_game(squares)
  squares.each_key do |square_name|
    squares[square_name] = " "
  end
  system "clear"
end

# Main program
moves = { A1: " ", A2: " ", A3: " ", B1: " ", B2: " ", B3: " ", C1: " ", C2: " ", C3: " " }

loop do
  users_turn = [true, false].sample
  open_moves = moves.keys

  prompt("Welcome to Tic-Tac-Toe! The #{PLAYERS[users_turn]} will go first.")
  display_board(moves) if PLAYERS[users_turn] == "User"

  counter = 0

  loop do
    counter += 1
    if users_turn
      request_user_choice!(moves)
    else
      make_computer_choice!(moves, open_moves)
    end

    update_open_moves!(moves, open_moves)

    break if found_winner?(moves) || open_moves.empty?

    users_turn = !users_turn
    system "clear" if PLAYERS[users_turn] == "Computer"
  end

  display_board(moves)
  case winning_player(moves)
  when "User"     then prompt("You won!")
  when "Computer" then prompt("Sorry, the computer won that round...")
  when nil        then prompt("It's a tie!")
  end

  prompt("Would you like to play again? (y or n)")
  continue = gets.chomp.downcase
  break unless continue == "y"

  reset_game(moves)
end

prompt("Thanks for playing! Goodbye.")