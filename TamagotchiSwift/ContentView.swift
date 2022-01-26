//
//  ContentView.swift
//  TamagotchiSwift
//
//  Created by Hin, Ethan-Scott (WING) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var tamagotchi:Tamagotchi = Tamagotchi()
    
    
    var body: some View {
        Form {
            
            Image("Egg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Section {
                Text("This is what your Tamagotchi is saying to you!")
            }
            
            Section {
                Text("Status")
                    .bold()
                Text("\("Health:".padding(toLength: 15, withPad: " ", startingAt: 0))    \(String(repeating: " ○ ", count: tamagotchi.health))")
                Text("\("Fun:".padding(toLength: 15, withPad: " ", startingAt: 0))      \(String(repeating: " ○ ", count: tamagotchi.fun))")
                Text("\("Cleanliness:".padding(toLength: 15, withPad: " ", startingAt: 0)) \(String(repeating: " ○ ", count: tamagotchi.cleanliness))")
                Text("\("Hunger:".padding(toLength: 15, withPad: " ", startingAt: 0))   \(String(repeating: " ○ ", count: tamagotchi.hunger))")

            }
            
            Section {
                Text("Actions")
                    .bold()
                
                
                Button(action: {tamagotchi.eatSnack()}) {
                    Text("Feed snack")
                }
                Button(action: {}) {
                    Text("Feed meal")
                }
                Button(action: {}) {
                    Text("Play with pet")
                }
                Button(action: {}) {
                    Text("Give medicine")
                }
                Button(action: {tamagotchi.attack()}) {
                    Text("Attack Tamagotchi")
                
                }
                
            }
            
        }.listStyle(InsetGroupedListStyle())
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
