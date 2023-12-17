//
//  ContentView.swift
//  War Card Game
//
//  Created by Yousef Noor on 12/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            VStack{
                
                Image("logo")
                
                HStack{
                    Image("card2")
                    Spacer()
                    Image("card3")
                }
                .padding()
                
                Image("button")
                
                HStack{
                    
                    VStack{
                        Text("Player")
                        
                        Text("0")
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                        Text("0")
                    }
                }
                .padding()
                
            }
        }
        .background(Color(.green).scaledToFill())
        .ignoresSafeArea()
        
        
    }
}

#Preview {
    ContentView()
}
