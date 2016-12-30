
import Foundation

enum Shape {
    case X
    case O
}

typealias Coordinates = (x: Int, y: Int)

struct Game {
    let moves: [Move] = []
    let currentTurn: Shape = .X
    
}
