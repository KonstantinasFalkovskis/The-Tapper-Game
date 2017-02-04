//
//  ViewController.swift
//  Tapper Game - Take a guess how many tapes You may do!
//
//  Created by Konstantinas Falkovskis on 03/02/2017.
//  Copyright © 2017 Falco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tapsCount = 0
    var currentTape = 0

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsText: UILabel!
    
    
    @IBAction func countTap(_ sender: UIButton) {
            currentTape += 1
            replacePrint()
        
            if gameOver() {
               restartGame()
               }
        
    }

    
    @IBAction func start(_ sender: UIButton) {
        
        if textField.text != nil && textField.text != "" {
            
            logo.isHidden = true
            textField.isHidden = true
            playButton.isHidden = true
            
            tapButton.isHidden = false
            tapsText.isHidden = false

            tapsCount = Int(textField.text!)!
            replacePrint()
            }
        
    }
    
    func replacePrint(){
        tapsText.text = "\(currentTape) taps"
    }
    
    
    func restartGame() {
        tapsCount = 0
        currentTape = 0
        textField.text = ""
        
        logo.isHidden = false
        textField.isHidden = false
        playButton.isHidden = false
        
        tapButton.isHidden = true
        tapsText.isHidden = true
    }
    
    func gameOver() -> Bool {
         if currentTape >= tapsCount {
            return true
         } else {
            return false
        }
        
    }
    
}

