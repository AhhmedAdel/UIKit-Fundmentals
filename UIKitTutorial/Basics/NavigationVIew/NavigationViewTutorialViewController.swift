//
//  NavigationViewTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Ahmed Adel on 20/06/2024.
//

import UIKit

class NavigationViewTutorialViewController: UIViewController {
    private var primaryButton: UIButton = {
        let button = UIButton (type: .system)
        button.setTitle("Click me" ,for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(primaryButton)
        primaryButton.centerXAnchor.constraint (equalTo: view.centerXAnchor) .isActive = true
        primaryButton.centerYAnchor.constraint(equalTo:view.centerYAnchor).isActive=true
        primaryButton.addTarget (self, action: #selector(onPrimaryButtonTap), for: .touchUpInside)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func onPrimaryButtonTap() {
        let newVC = CollectionTutorialViewController()
        show(newVC, sender: self)
    }

}



//override func viewDidLoad() {
//super.viewDidLoad ()
//view.addSubview(primaryButton)
//primaryButton.centerXAnchor.constraint (equalTo: view.centerXAnchor) .isActive = true
//primaryButton.centerYAnchor.constraint(equalTo:view.centerYAnchor).isActive=true
//primaryButton.addTarget (self, action: #selector (onPrimaryButtonTap), for: •touchUpInside)
//}
//@objc func onPrimaryButtonTap() {
//let newVC = CollectionTutorialViewController ()
//show (newVC, sender: self)
