// MARK: LIBRARIES
import Foundation



struct MemoryGameModel<CardContent> {

    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    private(set) var cards: Array<Card>
    
    
    
    // MARK: - COMPUTED PROPERTIES
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    init(numberOfPairsOfCards: Int,
         createCardContent: (Int) -> CardContent) {
        
        cards = Array<Card>.init()
        
        for eachPairIndex in (0..<numberOfPairsOfCards) {
            
            let cardContent = createCardContent(eachPairIndex)
            let cardOne = MemoryGameModel.Card.init(content: cardContent)
            let cardTwo = MemoryGameModel.Card.init(content: cardContent)
            cards.append(cardOne)
            cards.append(cardTwo)
        }
    }
    
    
    
    // MARK: - METHODS
    func choose(_ card: Card)
    -> Void {}
    
    
    
    // MARK: - HELPER METHODS
}
