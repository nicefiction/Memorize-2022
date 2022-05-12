// MARK: LIBRARIES
import SwiftUI



struct ContentView: View {

    // MARK: - STATIC PROPERTIES
    // MARK: - PROPERTY WRAPPERS
    // MARK: - PROPERTIES
    // MARK: - COMPUTED PROPERTIES
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 25.00)
                .stroke(lineWidth: 3)
            Text("Hello 👋 World 🌍")
                .font(.title)
                .fontWeight(.regular)
                
        }
        .padding(.horizontal)
        .foregroundColor(Color.red)
            
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
    }
}
