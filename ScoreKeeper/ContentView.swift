//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Student2 on 21/09/2026.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientMiddle,
    .gradientBottom
]

struct ContentView: View {
    @State private var players : [Player] = [
        Player(name: "Peace",score : 0),
        Player(name: "Lynne", score : 0),
        Player(name: "Chantal",score: 0),
        Player(name: "Shosho", score: 0)
    ]
    // @State private var scores : [Int] = [0,0,0]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper") //Title
                .font(.title)
                .bold()
                .padding(.bottom)
            Grid{
                /* horizontally aligns views in multiple rows. These views work together to make sure each row of content is aligned in a perfect column. */
                
                GridRow{
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                .font(.headline)
                
                ForEach($players){ $player in
                    
                    GridRow{ /* arranges TextField and Stepper views into columns.*/           TextField("Name", text: $player.name)
                        Text("\(player.score)")
                        Stepper("\(player.score)", value : $player.score)
                            .labelsHidden()
                    }
                    .padding(.vertical)
                }
                    Button("Add Player", systemImage : "plus"){
                        players.append(Player(name:"",score: 0))
                        
                    }
                    Spacer()
                }
            }
            .padding()
            // .background(Color.cyan)
        .background(Gradient(colors: gradientColors))        }
    }


#Preview {
    ContentView()
}
