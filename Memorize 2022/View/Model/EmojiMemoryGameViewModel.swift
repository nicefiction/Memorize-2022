// MARK: LIBRARIES
import SwiftUI



class EmojiMemoryGameViewModel: ObservableObject {

    // MARK: - STATIC PROPERTIES
    static let emojiMemoryGame: Array<String> = [
        "🚲", "🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛵", "🛺", "🚃", "🚁"
    ]
    
    
    
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    @Published private var memoryGameModel: MemoryGameModel<String> = EmojiMemoryGameViewModel.createEmojiMemoryGame()
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var cards: Array<MemoryGameModel<String>.Card> {
        return memoryGameModel.cards
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    static func createEmojiMemoryGame()
    -> MemoryGameModel<String> {
        
        return MemoryGameModel<String>.init(numberOfPairsOfCards: 4,
                                            createCardContent: {(pairIndex: Int) in
            
            return Self.emojiMemoryGame[pairIndex]
        })
    }
    
    
    
    // MARK: - INTENT METHODS
    func choose(_ card: MemoryGameModel<String>.Card)
    -> Void {
        memoryGameModel.choose(card)
    }
}
