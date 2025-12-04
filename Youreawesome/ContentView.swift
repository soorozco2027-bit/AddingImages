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
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
     
    var body: some View {
        
        VStack {
            Text(message)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(.blue)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.5)
                            .frame(height:120)
                            .animation (.easeInOut(duration: 0.15), value: message)
            

            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button("show message") {
                let messages = [ "You Are Awesome!",
                                 "Gadzooks my friend! I am astonished at how utterly magnificent you are!",
                                 "Your Are Great!",
                                 "You Are Fantastic!",
                                 "Fabulous? That's You!",
                " You make me Smile!"]
                
                var messageNumber: Int
                repeat {
                    messageNumber = Int.random(in: 0...messages.count-1)
                    
                } while messageNumber == lastMessageNumber
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber = Int.random(in: 0...9)
                while imageNumber == lastImageNumber{
                    imageNumber = Int.random(in: 0...9)
                }
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
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
