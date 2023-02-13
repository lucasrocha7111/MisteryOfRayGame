//
//  main.swift
//  MysteryOfRayGame
//
//  Created by Lucas Rocha on 10/02/23.
//

import Foundation

enum gameLevel {
    case easy
    case medium
    case hard
}

var user = Caracter()
user.life = 50
user.enemy = false
user.attacks = [punch, kick]
print("What is your name?")
let userName = readLine()
user.name = userName!

let startGame = Chapter1(hero: user)
print("End of the demo! Thanks for play :)")
