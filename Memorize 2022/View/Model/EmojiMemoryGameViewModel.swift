// MARK: LIBRARIES
import SwiftUI



class EmojiMemoryGameViewModel {

    // MARK: - STATIC PROPERTIES
    static let emojiMemoryGame: Array<String> = [
        "🚲", "🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛵", "🛺", "🚃", "🚁"
    ]
    
    
    
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    private var memoryGameModel: MemoryGameModel<String> = EmojiMemoryGameViewModel.createEmojiMemoryGame()
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var cards: Array<MemoryGameModel<String>.Card> {
        return memoryGameModel.cards
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    static func createEmojiMemoryGame()
    -> MemoryGameModel<String> {
        
        return MemoryGameModel.init(numberOfPairsOfCards: 4,
                                    createCardContent: {(index: Int) in return Self.emojiMemoryGame[index]})
    }
    
    
    
    // MARK: - HELPER METHODS
}
