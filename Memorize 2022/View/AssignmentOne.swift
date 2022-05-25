// MARK: LIBRARIES
import SwiftUI



struct AssignmentOne: View {

    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @State private var emojisCount: Int = 4
    
    
    
    // MARK: - PROPERTIES
    var emojis: Array<String> = [
        "🚲", "🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛵", "🛺", "🚃", "🚁"
    ]
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var removeCardButton: some View {
        
        return Button(
            action: {
                if emojisCount > 1 {
                    emojisCount -= 1
                }
            },
            label: { Image(systemName: "minus.rectangle.portrait")
            }
        )
    }
    
    
    var addCardButton: some View {
        
        return Button(
            action: {
                if emojisCount < emojis.count {
                    emojisCount += 1
                }
            },
            label: { Image(systemName: "plus.rectangle.portrait")
            }
        )
    }
   
   
    
    var body: some View {
        
        // let columnLayout = [GridItem(), GridItem(), GridItem()]
        let columnLayout = [GridItem(.adaptive(minimum: 100.00))]
        
        VStack {
            ScrollView {
                LazyVGrid(columns: columnLayout,
                          spacing: 15) {
                    ForEach(emojis[0..<emojisCount],
                            id: \.self) { (emoji: String) in
                        EmojiCardView(content: emoji)
                    }
                }
                // .padding(.bottom)
                .foregroundColor(.red)
            }
            Spacer()
            HStack {
                removeCardButton
                Spacer()
                addCardButton
            }
        }
        .font(.largeTitle)
        .padding()
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






struct EmojiCardView: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @State private var isFaceUp: Bool = true
    
    
    
    // MARK: - PROPERTIES
    let content: String
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        let roundedRectangle = RoundedRectangle(cornerRadius: 12)
        
        
        return ZStack {
            if isFaceUp {
                roundedRectangle
                    .fill(Color.white)
                roundedRectangle
                    .strokeBorder(lineWidth: 3)
                Text(content)
            } else {
                roundedRectangle
            }
        }
        .aspectRatio(2/3, contentMode: .fit)
        // .padding(.bottom)
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






// PREVIEWS /////////////////////////////////////
struct AssignmentOne_Previews: PreviewProvider {
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    
    static var previews: some View {
        
        AssignmentOne()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13 mini")
        AssignmentOne()
            .preferredColorScheme(.light)
            .previewDevice("iPhone SE (3rd generation)")
    }
}

