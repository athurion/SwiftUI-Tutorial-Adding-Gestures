//
//  ContentView.swift
//  SwiftUI Tutorial: Adding Gestures
//
//  Created by Alvin Sosangyo on 03/27/22.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
    @State private var isTapped =  false
    @GestureState private var isLongPressTapped = false
    
    var body: some View {
        
        Image(systemName: "sun.max.fill")
            .font(.system(size: 150))
            .foregroundColor(isLongPressTapped ? .orange : .yellow)
            .scaleEffect(isTapped ? 2.0 : 1.0)
            .animation(.easeInOut, value: isTapped)
            .gesture(
                LongPressGesture(minimumDuration: 1.0)
                    .updating($isLongPressTapped, body: { value, state, transaction in
                        state = value
                    })
                    .onEnded({ _ in
                        self.isTapped.toggle()
                    })
            )
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


