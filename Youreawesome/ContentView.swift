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
            
            Button("click on me!") {
                let message1 = "YOU ARE AWESOME!"
                let message2 = "KEEP UP THE GOOD WORK!"
                
                message = ( message == message1 ? message2 : message1)
                
                imageName = ( imageName == "image2" ? "image7" : "image2")
            }
            .buttonStyle(.borderedProminent)
            .font(.title)
            
            .padding()
        }
    }
    
}
#Preview {
    ContentView()
}
