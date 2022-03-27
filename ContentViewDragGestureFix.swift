//
//  ContentView.swift
//  SwiftUI Tutorial: Adding Gestures
//
//  Created by Alvin Sosangyo on 03/27/22.
//

import SwiftUI

struct ContentView: View {
    
    @GestureState private var dragOffset = CGSize.zero
    
    var body: some View {
        
        Image(systemName: "sun.max.fill")
            .font(.system(size: 150))
            .foregroundColor(.yellow)
            .offset(x: dragOffset.width, y: dragOffset.height)
            .gesture(
                DragGesture()
                    .updating($dragOffset, body: { value, state, transaction in
                        state = value.translation
                    })
            )
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


