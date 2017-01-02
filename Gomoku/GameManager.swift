
import Foundation

protocol GameManagerDelegate {
    func render(coordinates: Coordinates, player: Player)
    func endGame(player: Player)
}

struct GameManager {
    var delegate: GameManagerDelegate!
    
    func addMove(_ move: Move, _ model: GameModel) -> GameModel {
        return GameModel(moves:model.moves + [move], currentTurn: model.currentTurn)
    }
    
    func checkForWinner(_ move: Move, _ moves: [Move]) -> Player? {
        let coords = move.coordinates
        let player = move.player
        
        if  moves.contains(where: { $0.coordinates == (coords.x-1, coords.y) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-2, coords.y) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+1, coords.y) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+2, coords.y) && $0.player == player }) {
            return player
        }
        if  moves.contains(where: { $0.coordinates == (coords.x, coords.y-1) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x, coords.y-2) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x, coords.y+1) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x, coords.y+2) && $0.player == player }) {
            return player
        }
        if  moves.contains(where: { $0.coordinates == (coords.x-4, coords.y) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-3, coords.y) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-2, coords.y) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-1, coords.y) && $0.player == player }) {
            return player
        }
        if  moves.contains(where: { $0.coordinates == (coords.x+4, coords.y) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+3, coords.y) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+2, coords.y) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+1, coords.y) && $0.player == player }) {
            return player
        }
        if  moves.contains(where: { $0.coordinates == (coords.x, coords.y-4) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x, coords.y-3) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x, coords.y-2) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x, coords.y-1) && $0.player == player }) {
            return player
        }
        if  moves.contains(where: { $0.coordinates == (coords.x, coords.y+4) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x, coords.y+3) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x, coords.y+2) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x, coords.y+1) && $0.player == player }) {
            return player
        }
        if  moves.contains(where: { $0.coordinates == (coords.x+1, coords.y+1) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+2, coords.y+2) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+3, coords.y+3) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+4, coords.y+4) && $0.player == player }) {
            return player
        }
        if  moves.contains(where: { $0.coordinates == (coords.x-1, coords.y-1) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-2, coords.y-2) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-3, coords.y-3) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-4, coords.y-4) && $0.player == player }) {
            return player
        }
        if  moves.contains(where: { $0.coordinates == (coords.x+1, coords.y+1) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+2, coords.y+2) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-1, coords.y-1) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-2, coords.y-2) && $0.player == player }) {
            return player
        }
        if  moves.contains(where: { $0.coordinates == (coords.x+1, coords.y-1) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+2, coords.y-2) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+3, coords.y-3) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x+4, coords.y-4) && $0.player == player }) {
            return player
        }
        if  moves.contains(where: { $0.coordinates == (coords.x-1, coords.y+1) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-2, coords.y+2) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-3, coords.y+3) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (coords.x-4, coords.y+4) && $0.player == player }) {
            return player
        }
        return nil
    }
}
