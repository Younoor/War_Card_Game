//
//  ContentView.swift
//  War Card Game
//
//  Created by Yousef Noor on 12/17/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                    .shadow(radius: 15)
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                        .shadow(radius: 15)
                    Spacer()
                    Image(cpuCard)
                        .shadow(radius: 15)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                }label: {
                    Image("button")
                        .shadow(radius: 15)
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
        }
        
        
    }
    
    func deal(){
        // Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the score
        if playerCardValue > cpuCardValue{
            //Add 1 to player score
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            //Add 1 to cpu score
            cpuScore += 1
        } else {
            //Tie
            playerScore += 1
            cpuScore += 1
        }
        if (playerScore >= 16) || (cpuScore >= 16) {
            playerScore = 0
            cpuScore = 0
        }
    }
}

#Preview {
    ContentView()
}
