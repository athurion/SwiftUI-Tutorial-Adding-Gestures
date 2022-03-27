//
//  ContentView.swift
//  SwiftUI Tutorial: Adding Gestures
//
//  Created by Alvin Sosangyo on 03/27/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isTapped =  false
    
    var body: some View {
        
        Image(systemName: "heart.fill")
            .font(.system(size: 150))
            .foregroundColor(.red)
            .scaleEffect(isTapped ? 0.5 : 1.0)
            .animation(.linear, value: isTapped)
            .gesture(
                LongPressGesture(minimumDuration: 1.0)
                    .onEnded({ _ in
                        self.isTapped.toggle()
                    })
            )
        
    }
    
} //ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


