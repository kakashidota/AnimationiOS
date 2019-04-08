//
//  ViewController.swift
//  ITHSAnimationTest
//
//  Created by Robin on 2019-04-08.
//  Copyright © 2019 Robin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var titleLabel = UILabel()
    var bodyLabel = UILabel()
    var animateButton = UIButton()
    

    fileprivate func setupLabels() {
        titleLabel.backgroundColor = .red
        titleLabel.text = "Välkommna "
        titleLabel.font = UIFont(name: "Chalkduster", size: 46)
        bodyLabel.backgroundColor = .green
        bodyLabel.numberOfLines = 0
        bodyLabel.text = "Hej och välkommna! Caweh är gullig, ni är snälla och alla mår bra. Hej hej hej hej hej hej hej hej"
        animateButton.backgroundColor = .yellow
        animateButton.setTitle("Button", for: .normal)
    }
    
    fileprivate func setupStackview() {
        var stackView = UIStackView(arrangedSubviews: [titleLabel,bodyLabel,animateButton])
        stackView.axis = .vertical
        
        view.addSubview(stackView)
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels()
        setupStackview()
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
        // Do any additional setup after loading the view.
    }
    
    
    @objc func handleTap(){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.titleLabel.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                self.titleLabel.transform = CGAffineTransform(translationX: -30, y: -300)
                self.titleLabel.alpha = 0
            }, completion: { (_) in
                
            })
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.bodyLabel.transform = CGAffineTransform(translationX: -30, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                self.bodyLabel.transform = CGAffineTransform(translationX: -30, y: -300)
                self.bodyLabel.alpha = 0
            }, completion: { (_) in
                
            })
        }
        
        
    
        
        
    }


}

