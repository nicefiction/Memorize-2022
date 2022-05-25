// MARK: LIBRARIES
import SwiftUI



struct ContentView: View {

    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @ObservedObject var emojiMemoryGameViewModel: EmojiMemoryGameViewModel
    
    
    
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        // let columnLayout = [GridItem(), GridItem(), GridItem()]
        let columnLayout = [GridItem(.adaptive(minimum: 100))]
        
        ScrollView {
            LazyVGrid(columns: columnLayout,
                      spacing: 15) {
                ForEach(emojiMemoryGameViewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture {
                            emojiMemoryGameViewModel.choose(card)
                        }
                }
                .foregroundColor(Color.red)
            }
        }
        .padding(.horizontal)
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}








// PREVIEWS ///////////////////////////////////
struct ContentView_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    static let emojiMemoryGameViewModel = EmojiMemoryGameViewModel.init()
    
    
    
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        ContentView(emojiMemoryGameViewModel: emojiMemoryGameViewModel)
            .preferredColorScheme(.dark)
        ContentView(emojiMemoryGameViewModel: emojiMemoryGameViewModel)
            .previewDevice("iPhone SE (3rd generation)")
            .preferredColorScheme(.light)
    }
}

