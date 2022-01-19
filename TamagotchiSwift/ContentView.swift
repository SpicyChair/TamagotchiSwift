//
//  ContentView.swift
//  TamagotchiSwift
//
//  Created by Hin, Ethan-Scott (WING) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            
            Image("Egg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Section {
                VStack(alignment: .trailing, spacing: 10) {
                    Text("Health: \(String(repeating: " ○", count: 5))")
                    Text("Fun: \(String(repeating: " ○", count: 5))")
                    Text("Cleanliness: \(String(repeating: " ○", count: 5))")
                    Text("Hunger: \(String(repeating: " ○", count: 5))")
                
                }.padding()
                
            }
            Section {
                Text("Actions")
                    .bold()
                VStack {
                    Button("Feed snack", () -> continue)
                    Button("Feed meal", () -> continue)
                    Button("Play with pet", () -> continue)
                    Button("Give medicine", () -> continue)
                    Button("Give medicine", () -> continue)
                    Button("Hit Tamagotchi", () -> continue)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.systemTeal))
            }.cornerRadius(45.0)
        }
    }
}
