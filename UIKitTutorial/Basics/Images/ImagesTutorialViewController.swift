//
//  ImagesTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Ahmed Adel on 13/06/2024.
//

import UIKit

class ImagesTutorialViewController: UIViewController {
    
    private var imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(systemName: "paperplane")
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Center the imageView vertically and horizontally
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // Set the width and height of the imageView to 200x200
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}


#Preview {
    ImagesTutorialViewController()
}
