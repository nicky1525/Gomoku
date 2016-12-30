
import Foundation

protocol GameManagerDelegate {
    func render(coordinates: Coordinates, player: Player)
    func endGame(player: Player)
}
