import SwiftUI

struct ContentView: View {
    
    @State private var imageScale = 1.0
    
    var body: some View {
        
        Image("austin-poon")
            .resizable()
            .scaledToFill()
            .scaleEffect(imageScale)
            .gesture(
                MagnificationGesture()
                    .onChanged { value in
                        self.imageScale = value.magnitude
                    }
            )
        
    }
    
} //ContentView
