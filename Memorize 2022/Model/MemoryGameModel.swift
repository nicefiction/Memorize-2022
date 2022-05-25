// MARK: LIBRARIES
import Foundation



struct MemoryGameModel<CardContent>
where CardContent: Equatable {

    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    private(set) var cards: Array<Card>
    private var index0fTheOneAndOnlyFaceUpCard: Int?
    
    
    
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
    mutating func choose(_ card: Card)
    -> Void {
        
        if let unwrappedIndex = cards.firstIndex(where: { $0.id == card.id }),
           !cards[unwrappedIndex].isFaceUp,
           !cards[unwrappedIndex].isMatched {
            if let potentialMatchIndex = index0fTheOneAndOnlyFaceUpCard {
                if cards[unwrappedIndex].content == cards[potentialMatchIndex].content {
                    cards[unwrappedIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                index0fTheOneAndOnlyFaceUpCard = nil
            } else {
                for index in cards.indices {
                    cards[index].isFaceUp = false
                }
                index0fTheOneAndOnlyFaceUpCard = unwrappedIndex
            }
            cards[unwrappedIndex].isFaceUp.toggle()
        }
        print("\(cards)")
    }
    
    
    
    // MARK: - HELPER METHODS
}


