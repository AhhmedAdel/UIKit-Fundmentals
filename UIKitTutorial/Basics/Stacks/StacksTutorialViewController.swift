//
//  StacksTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Ahmed Adel on 16/06/2024.
//

import UIKit

class StacksTutorialViewController: UIViewController {
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect1 = createRectangle()
        rect1.backgroundColor = .systemMint
        
        let rect2 = createRectangle()
        rect2.backgroundColor = .systemBlue
        
        let rect3 = createRectangle()
        rect3.backgroundColor = .systemPink
        
        stackView.addArrangedSubview(rect1)
        stackView.addArrangedSubview(rect2)
        stackView.addArrangedSubview(rect3)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        

    }
    
    private func createRectangle() -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: 200).isActive = true
        view.layer.cornerRadius = 16
        return view
    }
}

#Preview {
    StacksTutorialViewController()
}
