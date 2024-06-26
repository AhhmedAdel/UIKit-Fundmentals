//
//  LabelViewContoller.swift
//  UIKitTutorial
//
//  Created by Ahmed Adel on 13/06/2024.
//

import UIKit

class LabelViewContoller: UIViewController {
    
    private var textLabel = UILabel()
    
    private var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "This is a subtitle for whatever"
        label.textColor = .gray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = "Hello World!"
        textLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 8).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        
    }

}

#Preview {
    LabelViewContoller()
}
