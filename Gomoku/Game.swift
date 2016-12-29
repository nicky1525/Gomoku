
import Foundation

enum Shape {
    case X
    case O
}

struct Game {
    let moves: [Move] = []
    let currentTurn: Shape = .X
}
