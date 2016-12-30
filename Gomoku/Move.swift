
import Foundation

struct Move {
    var coordinates:Coordinates
    var player:Player
    
    init(coordinates:Coordinates, player:Player) {
        self.coordinates = coordinates
        self.player = player
    }
}
