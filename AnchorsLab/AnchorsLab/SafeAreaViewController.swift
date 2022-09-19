//
//  SafeAreaViewController.swift
//  AnchorsLab
//
//  Created by Mpilo Pillz on 2022/09/19.
//

import UIKit

class SafeAreaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
       
        setupViews()
    }
    
    func setupViews() {
        let topLabel = makeLabel(withText: "top")
        
        view.addSubview(topLabel)
        
        topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }
    

    
}
