//
//  BattleSystem.swift
//  MysteryOfRayGame
//
//  Created by Lucas Rocha on 10/02/23.
//

import Foundation

struct BattleSystem {
    var user: Caracter
    var enemy: Caracter
    
    func startBattle() {
        while user.life > 0.0 && enemy.life > 0.0 {
            userTurn(caracter: user)
            sleep(1)
            if user.life > 0.0 && enemy.life > 0.0 {
                userTurn(caracter: enemy)
                sleep(1)
            }
        }
        print("== Battle over ==")
    }
    
    func userTurn(caracter: Caracter) {
        let listOfAttacks = caracter.getAtackList()
        if !caracter.enemy {
            let option = Chapter.showOptions(options: listOfAttacks)!
            attackSelected(user: caracter, enemy: enemy, attack: caracter.attacks[option])
        } else {
            let totalAttack = listOfAttacks.count
            let option = Int.random(in: 0...totalAttack - 1)
            attackSelected(user: enemy, enemy: user, attack: caracter.attacks[option])
        }
        
    }
    
    func attackSelected(user: Caracter, enemy:Caracter, attack: Attack) {
        let result = self.chanceOfSuccess()
        print("\(user.name) try to \(attack.name)")
        if result {
            print("   - \(user.name) used \(attack.name) -")
            enemy.life -= Double(attack.power)
        } else {
            print("   - \(user.name) missed the attack -")
        }
        print("")
    }
    
    func chanceOfSuccess() -> Bool {
        // Depending of the dificult of the game
        let d6 = 6
        
        let dSelected = d6
        let result = Int.random(in: 1...dSelected)
        
        if result > dSelected/2 {
            return true
        } else {
            return false
        }
        
    }
}
