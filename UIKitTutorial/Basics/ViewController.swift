//
//  ViewController.swift
//  UIKitTutorial
//
//  Created by Ahmed Adel on 08/06/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var primaryButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBlue
    }
    
    func greetUser(_ name: String) {
        greetingLabel.text = "Hello \(name)"
    }
    
    
    @IBAction func primaryButtonTapped(_ sender: Any) {
        greetUser("Ahmed Adel Ahmed Mahmoud!")
        view.backgroundColor = .white
    }
    

}

