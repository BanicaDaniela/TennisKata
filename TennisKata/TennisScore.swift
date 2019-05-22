//
//  TennisScore.swift
//  TennisKata
//
//  Created by Daniela Oana on 22/05/2019.
//  Copyright © 2019 Daniela Oana. All rights reserved.
//

import Foundation

public class TennisScore {
    public func fromInput(matchPoints: String) -> String {
        var player1 = 0
        var player2 = 0
        
        for point in matchPoints {
            if weHaveAWinner(a: player1, b: player2){
                return "invalid matchPoints"
            }
            
            if point == "A" {
                player1 += 1
            } else if point == "B"  {
                player2 += 1
            } else {
                return "invalid matchPoints"
            }
        }
        
        if (player2>3 && player1+1<player2) {
            return "game player B"
        }
        
        
        if (player1>3 && player2+1<player1) {
            return "game player A"
        }
        
        if (player1>player2 && player1>3 && player2>0){
            return "advantage player A"
        }
        
        if (player2>player1 && player2>3 && player1>0){
            return "advantage player B"
        }
        
        if player1 == player2 && player1 > 2 {
            return "deuce"
        }
        
        let aScore = getScore(s: player1, player: "A")
        let bScore = getScore(s: player2, player: "B")
        
        
        if (player1 == player2) {
            return aScore + "-all"
        }
        
        return aScore + "-" + bScore
        
    }
    
    func getScore(s:Int, player:String) ->String{
        switch s {
        case 0:
            return "love"
        case 3:
            return "40"
        default:
            return "\(15 * s)"
        }
    }
    
    func weHaveAWinner(a:Int, b:Int) -> Bool{
        return (a>3 && a-b >= 2) || (b>3 && b-a >= 2)
    }
}
