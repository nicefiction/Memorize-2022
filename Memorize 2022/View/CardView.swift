// MARK: - LIBRARIES
import SwiftUI




struct CardView: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    let card: MemoryGameModel<String>.Card
    
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        let roundedRectangleShape = RoundedRectangle(cornerRadius: 12.00)
        
        
        ZStack {
            if card.isFaceUp {
                roundedRectangleShape.fill().foregroundColor(.white)
                roundedRectangleShape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else if card.isMatched {
                roundedRectangleShape.opacity(0.00)
            } else {
                roundedRectangleShape.fill()
            }
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}





// PREVIEWS ////////////////////////////////
struct CardView_Previews: PreviewProvider {
    
    static var previews: some View {
        CardView(card: MemoryGameModel.Card.init(content: "🦋"))
    }
}
