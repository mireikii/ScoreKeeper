//
//  Player.swift
//  ScoreKeeper
//
//  Created by Student2 on 21/09/2026.
//

//Will be used for storing data
import Foundation


struct Player : Identifiable {
    let id = UUID() //+ Identfiable in summary means: different ids for different instances, same names possible
    var name : String
    var score : Int

}
