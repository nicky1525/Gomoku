
import Foundation

enum Player {
    case Black
    case White
}

typealias Coordinates = (x: Int, y: Int)

struct GameModel {
    let moves: [Move] = []
    let currentTurn: Player = .White
}
