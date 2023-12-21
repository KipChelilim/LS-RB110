## Problem
### Explicit rules:
* standard 52 card deck, 4 suits 2-Ace
* closest to 21 without going over wins
* initial 2 cards, 1st card revealed, 2nd hidden from other player (not self)
* 2-10 worth face value, J-K worth 10, Ace worth 1 or 11 based on hand
* player goes first, can "hit" continuously until they bust or stay, then dealer goes
* dealer hits until 17, then alway stays
* after both stay, comparison
* win conditions: 21 => other player busts => highest value under 21
* ace defaults to 11, drops to 1 if hand over 21

### Implicit rules:
* if s1 gets 21 on initial deal, not revealed until both stay (example 1)

### Clarifying questions:
* alternating deals on the first hand? (assume no for simplicities sake)
* players hand before dealers hand? (assume yes)

### Examples
* ex 1: Dealer will stay, then immediately win
** Dealer has: Ace and King

* ex 2: Dealer will stay, always
** Dealer has: 7 and 10

* ex 3: Dealer will hit since < 17
** Dealer has: 5 and 5        => 10, dealer will hit
** Dealer hits: 5, 5, and 6   => 13, dealer will hit
** Dealer hits: 5, 5, 3 and J => 23, dealer will bust

## Data
* hash for deck values
* array for current deck
* 2nd array for played cards, which is pushed back into current deck after each hand
* 2 arrays for current hands of dealer and player

## Algorithm
1. initialize deck
2. deal players hand & deal dealers hand
3. update deck
4. ask player if they want to hit or stay
5. check if player busts, or if they want to stay
6. dealer hits or stays
7. check if dealer busts or reaches stay number
8. if neither has lost, calculate values
9. display winner message
10. ask if the player wants to repeat the game