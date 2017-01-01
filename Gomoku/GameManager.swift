
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
        let origin = move.coordinates
        let player = move.player
//        let origin, player = move.coordinates, move.player
        
        if moves.contains(where: { $0.coordinates == (origin.x-1, origin.y) && $0.player == player }) &&
           moves.contains(where: { $0.coordinates == (origin.x-2, origin.y) && $0.player == player }) &&
           moves.contains(where: { $0.coordinates == (origin.x+1, origin.y) && $0.player == player }) &&
           moves.contains(where: { $0.coordinates == (origin.x+2, origin.y) && $0.player == player }) {
            return player
        }
        
        if moves.contains(where: {
            $0.coordinates == (origin.x, origin.y-1) && $0.player == player }) &&
            moves.contains(where: {
                $0.coordinates == (origin.x, origin.y-2) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (origin.x, origin.y+1) && $0.player == player }) &&
            moves.contains(where: { $0.coordinates == (origin.x, origin.y+2) && $0.player == player }) {
            return player
        }
        
        return nil
    }
}
