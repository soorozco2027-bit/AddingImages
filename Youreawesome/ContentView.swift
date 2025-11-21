//
//  ContentView.swift
//  Youreawesome
//
//  Created by OROZCO, SOFIA on 11/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
     
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundStyle(.blue)
            
            Spacer()
            
            Button("show message") {
                let messages = [ "You Are Awesome!",
                                 "Your Are Great!",
                                 "You Are Fantastic!",
                                 "Fabulous? That's You!"]
                
                message = messages[ messageNumber]
                messageNumber += 1
                if messageNumber == 4 {
                        messageNumber = 0
        
                }
                
                
                imageName = "image\(imageNumber)"
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title)
        
            
        }
        .padding()
    }
    
}
#Preview {
    ContentView()
}
