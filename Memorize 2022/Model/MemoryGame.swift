// MARK: LIBRARIES
import Foundation



struct MemoryGame<CardContent> {

    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    var cards: Array<Card>
    
    
    
    // MARK: - COMPUTED PROPERTIES
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    func choose(_ card: Card)
    -> Void {}
    
    
    
    // MARK: - HELPER METHODS
}






extension MemoryGame {
    
    struct Card {
        
        // MARK: - STATIC PROPERTIES
        // MARK: - PROPERTY WRAPPERS
        // MARK: - PROPERTIES
        var isFaceUp: Bool
        var content: CardContent
        
        
        
        // MARK: - COMPUTED PROPERTIES
        // MARK: - STATIC METHODS
        // MARK: - INITIALIZERS
        // MARK: - METHODS
        // MARK: - HELPER METHODS
    }
}
