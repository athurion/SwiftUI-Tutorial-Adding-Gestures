import SwiftUI

struct ContentView: View {
    
    @GestureState private var imageScale = 1.0
    
    var body: some View {
        
        Image("austin-poon")
            .resizable()
            .scaledToFill()
            .scaleEffect(imageScale)
            .gesture(
                MagnificationGesture()
                    .updating($imageScale, body: { value, state, transaction in
                        state = value.magnitude
                    })
            )
        
    }
    
} //ContentView
