//
//  MarginDefaultViewController.swift
//  AnchorsLab
//
//  Created by Mpilo Pillz on 2022/09/19.
//

import UIKit

class MarginDefaultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       setupViews()
    }
    
    func setupViews() {
        let purpleView = UIView()
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.backgroundColor = .purple
        
        view.addSubview(purpleView)
        
        NSLayoutConstraint.activate([
            purpleView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            purpleView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            purpleView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            purpleView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
        ])
    }
    

   

}
