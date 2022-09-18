//
//  ViewController.swift
//  AnchorsLab
//
//  Created by Mpilo Pillz on 2022/09/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupViews()
    }
    
    func setupViews() {
        let upperLeftLabel = makeLabel(with: "upperLeft")
        let upperRightLabel = makeLabel(with: "upperRight")
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        
        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        
    }
    
    // factory method
    func makeLabel(with text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }

}

