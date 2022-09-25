//
//  ViewController.swift
//  IntrinsicContentSize
//
//  Created by Mpilo Pillz on 2022/09/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        setupViews()
    }
    
    func setupViews() {
        let label1 = makeLabel(withText: "label1")
        let label2 = makeBigLabel(withText: "bigLabel")
        
        view.addSubview(label1)
        view.addSubview(label2
        )
        
        label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        label1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        label1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        label1.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        NSLayoutConstraint.activate([
            label2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            label2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8)
        ])
        
        // another way to set the width
//        label1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: 32)
        label.backgroundColor = .yellow
        
        return label
    }
    
    func makeBigLabel(withText text: String) -> UILabel {
        let label = BigLabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: 32)
        label.backgroundColor = .green
        
        return label
    }


}

class BigLabel: UILabel {
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 300)
    }
}

