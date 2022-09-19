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
        // makes a niiccee rectangle that I can use some day
        let purpleView = UIView()
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.backgroundColor = .purple
        
        let label = makeLabel(withText: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni deleniti quod quam consequuntur! Commodi minima excepturi repudiandae velit hic maxime doloremque. Quaerat provident commodi consectetur veniam similique ad earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labor suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantiu modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam quasi aliquam eligendi, placeat qui corporis!")
//        view.addSubview(purpleView)
                              view.addSubview(label)
        
//        NSLayoutConstraint.activate([
//            purpleView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
//            purpleView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
//            purpleView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
//            purpleView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
//        ])
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
            label.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor)
        ])
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }
    

   

}
