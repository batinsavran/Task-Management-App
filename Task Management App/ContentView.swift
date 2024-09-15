//
//  ContentView.swift
//  Task Management App
//
//  Created by bsDev on 16.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isToggled = false
    @State private var imageName = "scribble.variable"
    @State private var imageText = "This is a scribble."

    var body: some View {
        VStack {
            Button("Tıkla") {
                imageName = "network"
                imageText = "Network'e bağlandı"
            }
            .padding()
            .frame(width: 120, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(15)
            
            Toggle(isOn: $isToggled) {
                Text("Kaydır")
            }
            .padding()
            
            Image(systemName: imageName)
                .imageScale(.large)
                .foregroundColor(.red)
            
            Text(imageText)
                .padding()
        }
        .padding()
        .background(isToggled ? Color.black : Color.white)
        .foregroundColor(isToggled ? Color.white : Color.black)
        .animation(.easeInOut, value: isToggled)
    }
}

#Preview {
    ContentView()
}

