//
//  User.swift
//  MysteryOfRayGame
//
//  Created by Lucas Rocha on 10/02/23.
//

import Foundation

class Caracter {
    var name: String
    var enemy: Bool
    var life: Double {
        didSet {
            if life <= 0.0 {
                print("\(name) was defeat")
            } else {
                if enemy {
                    print("The enemy \(name) have now \(life) points of life")
                } else {
                    print("The \(name) have now \(life) points of life")
                }
            }
        }
    }
    var about: String?
    var attacks: [Attack] = []
    
    func getAtackList() -> [Int: String] {
        var atackList: [Int: String] = [:]
        
        for (key, value) in self.attacks.enumerated() {
            atackList[key] = value.name
        }
        
        return atackList
    }
    
    init() {
        name = ""
        enemy = false
        life = 1
    }
}
