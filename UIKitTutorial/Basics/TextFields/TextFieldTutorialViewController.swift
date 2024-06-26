//
//  TextFieldTutorialViewController.swift
//  UIKitTutorial
//
//  Created by Ahmed Adel on 16/06/2024.
//

import UIKit

class TextFieldTutorialViewController: UIViewController {
    
    private lazy var textField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Search.."
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.returnKeyType = .search
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.delegate = self
        return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(textField)
        
        textField.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
        

    }
    @objc func onEditingChanged(_ sender: UITextField) {
        print("DEBUG: Text field is \(sender.text)")
    }
    

}

extension TextFieldTutorialViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("DEBUG: Return Key tapped")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("DEBUG: Did Begin...")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Did end editing!")
    }
}

#Preview {
    TextFieldTutorialViewController()
}
