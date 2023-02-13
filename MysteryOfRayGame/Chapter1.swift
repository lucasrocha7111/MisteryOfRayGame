//
//  Chapter1.swift
//  MysteryOfRayGame
//
//  Created by Lucas Rocha on 10/02/23.
//

import Foundation

class Chapter {
    var name: String?
    var hero: Caracter
    
    func initChapter() {
        print("Initializing of chapter...")
    }
    
    init(name: String, hero: Caracter) {
        self.name = name
        self.hero = hero
        print("Beggining of the Chapter: \(self.name ?? "Chapter name")")
        self.initChapter()
    }
    
    func waitUserInteraction() {
        readLine()
    }
    
    static func showOptions(options: [Int: String]) -> Int? {
        print("== What you do? ==")
        var userOption: Int? = nil
        while userOption == nil {
            for (key, value) in options {
                print("\(key) - \(value)")
            }
            if let input = readLine() {
              if let num = Int(input) {
                  userOption = num
              } else {
                  print("Invalid option")
              }
            }
        }
        return userOption
        
    }
    
    func loseGame() -> Int {
        print("You lose... shame...")
        return 0
    }
}


class Chapter1: Chapter {
    
    override func initChapter() {
        print("Ray: It's time!")
        sleep(1)
        print("Ray: Please give the hammer...")
        sleep(1)
        print("...")
        sleep(1)
        print("Ray: The time machine is ready!")
        let fistChallenge = [1: "Ask if you can use", 2: "Offer youself to test the time machine"]
        let firstChallengeOption = Chapter.showOptions(options: fistChallenge)
        print("Ray: Of course! I set 3 different times to travel and now you need to chose one:")
        let timeOptions = [1: "80000 BC", 2: "1500 AC", 3: "3500 AC"]
        let secondChallenge = Chapter.showOptions(options: timeOptions)
        
        print("Alright! \(timeOptions[secondChallenge!]! as String)! We are making history \(user.name)!")
        print("...")
        sleep(2)
        print("Ready? Please hold youself and be prepared in the chamber! You will travel in...")
        sleep(3)
        print("3")
        sleep(1)
        print("2")
        sleep(1)
        print("1")
        sleep(1)
        print("Now!")
        sleep(1)
        print("Hey! This parameter is not right... Please \(user.name) get out of....")
        sleep(2)
        print("*Blink*")
        sleep(3)
        print("*aldfjadlfjaidljfaslfnsdklfansdfansdlfnasdilfj*")
        sleep(2)
        print("= You are seeying an strang creature ahead of you =")
        let thirdChallenge = [1: "Run from the creature", 2: "Attack the creature"]
        let thirdChallengeOption = Chapter.showOptions(options: thirdChallenge)
        
        print("= The creature are attacking you! =")
        
        let enemy1 = Caracter()
        enemy1.name = "Creature"
        enemy1.life = 30
        enemy1.enemy = true
        enemy1.about = "Orc of the forest"
        enemy1.attacks = [punch]
        
        let firstBattle = BattleSystem(user: self.hero, enemy: enemy1)
        firstBattle.startBattle()
        
        if self.hero.life == 0 {
            self.loseGame()
        } else {
            print("Congratulations!")
        }
        
        sleep(1)
        print("= You can hear a whisper on you hear =")
        print("Voice: \(user.name)... co... ack.... come.... back...")
        sleep(2)
        print("Voice: Watch out!")
        sleep(2)
        print("*Blink*")
        sleep(2)
        
    }
    
    init(hero: Caracter) {
        super.init(name: "Chapter One", hero: hero)
    }
}
