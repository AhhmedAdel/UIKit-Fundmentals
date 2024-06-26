//
//  ShapesTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Ahmed Adel on 13/06/2024.
//

import UIKit

class ShapesTutorialViewController: UIViewController {
    
    private var rect: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.backgroundColor = .systemBlue
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(rect)
        rect.translatesAutoresizingMaskIntoConstraints = false
        
        // Center the rect view vertically and horizontally
        rect.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        rect.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // Set the width and height of the rect view to 100x100
        rect.widthAnchor.constraint(equalToConstant: 100).isActive = true
        rect.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
}

#Preview {
    ShapesTutorialViewController()
}
