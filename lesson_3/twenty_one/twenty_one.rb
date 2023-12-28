# Constants
CARD_ARR = ('2'..'10').to_a.push(*%w(J Q K A))
CARD_VALUES = {
  "2" => 2, "3" => 3, "4" => 4,   "5" => 5,  "6" => 6,  "7" => 7,
  "8" => 8, "9" => 9, "10" => 10, "J" => 10, "Q" => 10, "K" => 10, "A" => 11
}
SUIT_ARR = [" of Hearts", " of Diamonds", " of Spades", " of Clubs"]
FULL_DECK = CARD_ARR.product(SUIT_ARR).map(&:join)
ACE_MODIFIER = 10

# Methods
def prompt(msg)
  puts ">> #{msg}"
end

def deal_card(available_cards)
  available_cards.sample
end

def update_current_deck!(available_cards, dealt_card)
  available_cards.delete(dealt_card)
end

def deal_opening_hand!(available_cards, first_hand, second_hand)
  2.times do
    card = deal_card(available_cards)
    first_hand << card
    update_current_deck!(available_cards, card)
  end

  2.times do
    card = deal_card(available_cards)
    second_hand << card
    update_current_deck!(available_cards, card)
  end
end

def calculate_value(hand)
  card_value_strings = hand.map do |card|
    card.split(" of ").first
  end

  values_arr = card_value_strings.map do |card|
    CARD_VALUES[card]
  end

  multiple_aces_boolean = card_value_strings.count("A") > 0
  extra_aces = multiple_aces_boolean ? card_value_strings.count("A") - 1 : 0

  value = values_arr.sum - (extra_aces * ACE_MODIFIER)
  value -= ACE_MODIFIER if value > 21 && (multiple_aces_boolean)
  value
end

def display_hands(first_hand, second_hand)
  revealed_card = second_hand[1]

  prompt("Dealer has: #{revealed_card} and a hidden card.")
  prompt("You have: #{first_hand.join(" and ")}. (#{calculate_value(first_hand)})")
end

# Main program
prompt("Weclome to Twenty-One! Let's play a hand.")
loop do
  current_deck = Array.new(FULL_DECK)
  player_hand = []
  dealer_hand = []

  deal_opening_hand!(current_deck, player_hand, dealer_hand)

  player_value = calculate_value(player_hand)
  dealer_value = calculate_value(dealer_hand)

  display_hands(player_hand, dealer_hand)

  # Player's loop
  loop do
    break if player_value == 21
    prompt("Hit or stay? ('H' for another card, 'S' to end your turn)")
    player_answer = gets.chomp.downcase

    case player_answer
    when "s"
      break
    when "h"
      new_card = deal_card(current_deck)
      player_hand << new_card
      update_current_deck!(current_deck, new_card)

      player_value = calculate_value(player_hand)

      prompt("#{new_card}. You have #{player_value}. (#{player_hand.join(", ")})")

      break if player_value > 21
      next
    end
    prompt("Please enter 'H' for another card or 'S' to stay")
  end

  # Dealer's loop
  until dealer_value >= 17 || player_value > 21
    new_card = deal_card(current_deck)
    dealer_hand << new_card
    update_current_deck!(current_deck, new_card)

    dealer_value = calculate_value(dealer_hand)
  end

  prompt("Dealer has #{dealer_value}. (#{dealer_hand.join(", ")})")

  # Results message
  if player_value > 21
    prompt("Bust! Sorry, the dealer wins this hand...")
  elsif dealer_value > 21
    prompt("Dealer busts! Congratulations, you win!")
  elsif dealer_value > player_value
    prompt("Sorry, the dealer wins this hand...")
  elsif player_value > dealer_value
    prompt("Congratulations, you win!")
  elsif player_value == dealer_value
    prompt("It's a tie!")
  end

  prompt("Play another hand? ('Y' to play again, 'N' to end the game)")
  continue_answer = gets.chomp.downcase
  break unless continue_answer == "y"
  system "clear"
end

prompt("Thanks for playing Twenty-One! Goodbye!")
