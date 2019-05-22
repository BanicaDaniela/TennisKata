//
//  TennisScore.swift
//  TennisKata
//
//  Created by Daniela Oana on 22/05/2019.
//  Copyright © 2019 Daniela Oana. All rights reserved.
//

import Foundation

public class TennisScore {
    
    public func getMatchPoints(matchPoints: String) -> String {
        var player1 = 0
        var player2 = 0
        
        for point in matchPoints {
            if HasWon(player1, player2: player2){
                return "match points error"
                
                if point == "A" {
                    player1 += 1
                } else if point == "B"  {
                    player2 += 1
                } else {
                    return "match points error"
                }
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
        
        let player1Score = getScore(player1, player: "A")
        let player2Score = getScore(player2, player: "B")
        
        
        if (player1 == player2) {
            return aScore + "-all"
        }
        
        return aScore + "-" + bScore
        
    }
    
}
