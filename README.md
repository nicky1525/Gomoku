# Gomoku

[Gomoku](https://en.wikipedia.org/wiki/Gomoku) is an abstract strategy board game played on a 15x15 board.

## Implementation details

#### Player
an enum that is either Black or White

#### CurrentTurn
a Player

#### Coordinates
a tuple of integers

#### Move
a struct of Coordinates and Player

#### Moves
a collection of Move

#### GameModel
orchestrates the Move collection, stores the CurrentTurn


### GameManager 
contains the game logic

Methods:
#### Reset()
Resets the game to the initial state, restoring the Moves collection to be empty.

#### AddMove(Move)
Adds the new Move to the Moves collection.

#### CheckForWinner(Coordinates)
Checks the given coordinates to see if there is a winner. It takes a coordinate for performance reasons, because we can avoid checking everything if we just check for the latest move. In the context of this method, the given coordinate is the origin for the purpose of checking.


### GameManagerDelegate Methods

#### Render(coordinates, player)
Tells the view to update the grid with the latest move when nobody won.

#### EndGame(player)
Tells the view that the player won.


### ViewController
Contains an instance of Game and conforms to GameDelegate.
