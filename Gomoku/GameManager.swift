
import Foundation

protocol GameManagerDelegate {
    func render(coordinates: Coordinates, player: Player)
    func endGame(player: Player)
}

struct GameManager {
    var delegate: GameManagerDelegate!
    
    func addMove(move:Move, model: GameModel) -> GameModel {
        return GameModel(moves:model.moves + [move], currentTurn: model.currentTurn)
    }
}
