//
//  Atacks.swift
//  MysteryOfRayGame
//
//  Created by Lucas Rocha on 11/02/23.
//

import Foundation

struct Attack{
    var name: String
    var power: Int
    var criticalRate: Float
    var evasiveness: Float = 1
}

let punch = Attack(name: "punch", power: 10, criticalRate: 0.3)
let kick = Attack(name: "kick", power: 7, criticalRate: 0.4)
