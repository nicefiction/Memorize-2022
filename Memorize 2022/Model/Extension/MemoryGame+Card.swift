// MARK: - LIBRARIES
import Foundation



extension MemoryGameModel {
    
    struct Card: Identifiable {
        
        // MARK: - STATIC PROPERTIES
        // MARK: - PROPERTY WRAPPERS
        // MARK: - PROPERTIES
        var id = UUID.init()
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        
        
        
        // MARK: - COMPUTED PROPERTIES
        // MARK: - STATIC METHODS
        // MARK: - INITIALIZERS
        // MARK: - METHODS
        // MARK: - HELPER METHODS
    }
}
