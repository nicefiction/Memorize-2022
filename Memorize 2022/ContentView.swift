// MARK: LIBRARIES
import SwiftUI



struct ContentView: View {

    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @State private var emojiCount: Int = 4
    
    
    
    // MARK: - PROPERTIES
    var emojis: Array<String> = [
        "🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛵", "🛺", "🚃", "🚁"
    ]
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var removeCard: some View {
        
        return Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.rectangle.portrait")
        }
    }
    
    
    var addCard: some View {
        
        return Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.rectangle.portrait")
        }
    }
    
    
    var body: some View {
        
        // let columnLayout = [GridItem(), GridItem(), GridItem()]
        let columnLayout = [GridItem(.adaptive(minimum: 100))]
        
        
        VStack {
            ScrollView {
                LazyVGrid(columns: columnLayout,
                          spacing: 15) {
                    ForEach(emojis[0..<emojiCount],
                            id: \.self) { (emoji: String) in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                    .foregroundColor(Color.red)
                }
            }
            .padding(.horizontal)
            Spacer()
            HStack {
                removeCard
                Spacer()
                addCard
            }
            .padding()
            .font(.largeTitle)
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






struct CardView: View {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    @State private var isFaceUp: Bool = true
    
    
    
    // MARK: - PROPERTIES
    var content: String
    
    
    
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        let roundedRectangleShape = RoundedRectangle(cornerRadius: 12.00)
        
        
        ZStack {
            if isFaceUp {
                roundedRectangleShape.fill().foregroundColor(.white)
                roundedRectangleShape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                roundedRectangleShape.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
    
    
    
    // MARK: - STATIC METHODS
    // MARK: - INITIALIZERS
    // MARK: - METHODS
    // MARK: - HELPER METHODS
}






// PREVIEWS ///////////////////////////////////
struct ContentView_Previews: PreviewProvider {
    
    // MARK: - STATIC PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    static var previews: some View {
        
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewDevice("iPhone SE (3rd generation)")
            .preferredColorScheme(.light)
    }
}

