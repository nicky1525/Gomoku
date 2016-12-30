
import Foundation

enum Player {
    case Black
    case White
}

typealias Coordinates = (x: Int, y: Int)

let defaultGameModel = GameModel(moves:[], currentTurn: .White)

struct GameModel {
    let moves:[Move]
    let currentTurn: Player
    
    init(moves: [Move], currentTurn: Player) {
        self.moves = moves
        self.currentTurn = currentTurn
    }
}


