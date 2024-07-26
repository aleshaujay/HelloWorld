//
//  ViewController.swift
//  HelloWorld
//
//  Created by Lex Koby on 15.07.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
        greetingButton.layer.cornerRadius = 10
    }
    
    @IBAction func greetingButtonDidTapped(_ sender: UIButton) {
        greetingLabel.isHidden.toggle()
        sender.setTitle(
            greetingLabel.isHidden ? "Show greeting" : "Hide greeting",
            for: .normal
        )
        
        /*
         это код 👇 можно оптимизировать использовав 👆Тернарный оператор
         if greetingLabel.isHidden {
            sender.setTitle("Show greeting", for: .normal)
        } else {
            sender.setTitle("Hide greeting", for: .normal)
        }
         */
    }
    
    
}

