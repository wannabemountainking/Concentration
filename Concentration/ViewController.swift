//
//  ViewController.swift
//  Concentration
//
//  Created by yoonie on 2023/08/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardButton: UIButton!
    var ghostIsOn: Bool = false
    let objects: [String] = ["👻"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func cardPressed(_ sender: UIButton) {
        cardFlipped(card: sender)
        ghostIsOn = !ghostIsOn
        
    }
    
    func cardFlipped(card: UIButton) {
        if ghostIsOn {
            print(ghostIsOn)
            card.setTitle("", for: .normal)
            card.backgroundColor = .systemOrange
        } else{
            card.setTitle(objects[0], for: .normal)
            card.size
            card.backgroundColor = .white
        }
    }
}

