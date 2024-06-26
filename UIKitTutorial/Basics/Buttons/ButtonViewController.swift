//
//  ButtonViewController.swift
//  UIKitTutorial
//
//  Created by Ahmed Adel on 13/06/2024.
//

import UIKit

class ButtonViewController: UIViewController {
    
    private var showNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show name", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white , for: .normal)
        return button
    }()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "My Name is Adel"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showNameButton.addTarget(self, action: #selector(showNameTap), for: .touchUpInside)
        
        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showNameButton.backgroundColor = .systemBlue
        showNameButton.layer.cornerRadius = 10
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: showNameButton.bottomAnchor, constant: 16).isActive = true
        

        
    }
    
    @objc func showNameTap() {
        nameLabel.isHidden.toggle()
        let title = nameLabel.isHidden ? "Show name" : "Hide name"
        showNameButton.setTitle(title, for: .normal)
    }
   

}

#Preview {
    ButtonViewController()
}
