import SwiftUI

struct ContentView: View {
    
    @GestureState private var dragOffset = CGSize.zero
    @State private var position = CGSize.zero
    
    var body: some View {
        
        Image(systemName: "sun.max.fill")
            .font(.system(size: 150))
            .foregroundColor(.yellow)
            .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
            .gesture(
                DragGesture()
                    .updating($dragOffset, body: { value, state, transaction in
                        state = value.translation
                    })
                    .onEnded({ value in
                        self.position.height += value.translation.height
                        self.position.width += value.translation.width
                    })
            )
        
    }
    
}
