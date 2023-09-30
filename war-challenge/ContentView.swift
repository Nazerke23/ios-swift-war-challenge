//
//  ContentView.swift
//  war-challenge
//
//  Created by Назерке Кулан on 18.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        
        ZStack{
            Image("background").ignoresSafeArea()
        
            VStack{
                Spacer()
                
                Image("logo")
                
                Spacer()
               
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                
                Button(action: {
                    //Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update thr score
                    //playerScore += 1
                    //cpuScore += 1
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    else {
                        print("Friendship won!")
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                VStack(){
                    HStack{
                        Spacer()
                        Text("Player")
                            .foregroundColor(Color.white)
                        Spacer()
                        Text("CPU")
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    .padding(.bottom, 5.0)
                    
                    HStack{
                        Spacer()
                        Text(String(playerScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                        Spacer()
                        Text(String(cpuScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                }
                
               
                Spacer()
                
            }
        }
 
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
