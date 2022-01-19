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
            
            
            VStack(alignment: .trailing){
                Text("Health: 100")
                Text("Fun: 100")
                Text("Cleanliness: 100")
                Text("Hunger: 100")
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
