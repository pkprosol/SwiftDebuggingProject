//
//  ViewController.swift
//  DebuggingProject
//
//  Created by Thinkful on 11/21/14.
//  Copyright (c) 2014 Thinkful. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 1...30 {
            playGame()
        }
    }
    func getRandomNumber() -> Int {
        let randomNumber = Int(arc4random_uniform(10)) + 1
        return randomNumber
    }
    
    func createUserGuessArray() -> [Int] {
        var resultsArray = [Int]()
        for index in 1...3 {
            var randomNumber = getRandomNumber()
            resultsArray.append(randomNumber)
        }
        
        return resultsArray
    }
    
    func playGame() {
        var randomNumber = getRandomNumber()
        println(randomNumber)
        var userGuesses = createUserGuessArray()
        println(userGuesses)
        var result: String?
        
        for userGuess in userGuesses {
            if (randomNumber == userGuess) {
                result = "You win"
            } else {
                result = "You lose"
            }
        }
        
        println(result)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

