//
//  HuggingCompressionViewController.swift
//  IntrinsicContentSize
//
//  Created by Mpilo Pillz on 2022/09/25.
//

import UIKit

class HuggingCompressionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        // Do any additional setup after loading the view.
        setupViews()
    }
    
    func setupViews() {
        let nameLabel = makeLabel(withText: "Name")
        let nameTextField = makeTextField(withPlaceholderText: "Enter name here")
        
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
//            nameLabel.widthAnchor.constraint(equalToConstant: 100),
//            nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            nameTextField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 8),
            nameTextField.firstBaselineAnchor.constraint(equalTo: nameLabel.firstBaselineAnchor),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
                    ])
        // Change one of the content hugging or compression resistence of one of these
        nameLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
        
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }
    
    func makeTextField(withPlaceholderText text: String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = text
        textField.backgroundColor = .lightGray
        
        return textField
    }
    
    
    

}
