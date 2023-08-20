//
//  ViewController.swift
//  Concentration
//
//  Created by yoonie on 2023/08/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "👻", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("clicked")
        if let buttonText = button.titleLabel?.text{
            print(buttonText)
            if let buttonText = button.currentTitle {
                if buttonText == "" {
                    button.setTitle(emoji, for: UIControl.State.normal)
                    print("2")
                    print(button.titleLabel!.text!)
                    print(button.currentTitle!)
                }
            }
            if buttonText == emoji {
                button.setTitle("", for: UIControl.State.normal)
                print("1")
                print(button.titleLabel!.text!)
                print(button.currentTitle!)
            }
        }
    }
}

